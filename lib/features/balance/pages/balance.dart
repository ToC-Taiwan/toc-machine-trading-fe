import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/features/balance/entity/entity.dart';
import 'package:toc_machine_trading_fe/features/balance/pages/orders.dart';

class BalanceContent extends StatefulWidget {
  const BalanceContent({super.key});

  @override
  State<BalanceContent> createState() => _BalanceContentState();
}

class _BalanceContentState extends State<BalanceContent> {
  static final kToday = DateTime.now();
  static final kFirstDay = DateTime(kToday.year - 1, kToday.month, kToday.day);
  static final kLastDay = DateTime(kToday.year + 1, kToday.month, kToday.day);

  ValueNotifier<List<CalendarBalance>> _selectedEvents = ValueNotifier<List<CalendarBalance>>([]);
  LinkedHashMap<DateTime, List<CalendarBalance>> kBalances = LinkedHashMap<DateTime, List<CalendarBalance>>(equals: isSameDay, hashCode: getHashCode);

  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  bool loading = false;

  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  void initState() {
    super.initState();
    fillBalance();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? const Center(
            child: SpinKitWave(color: Colors.blueGrey, size: 35.0),
          )
        : Column(
            children: [
              TableCalendar<CalendarBalance>(
                locale: AppLocalizations.of(context)!.localeName,
                firstDay: kFirstDay,
                lastDay: kLastDay,
                focusedDay: _focusedDay,
                selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                calendarFormat: _calendarFormat,
                rangeSelectionMode: RangeSelectionMode.disabled,
                eventLoader: _getEventsForDay,
                startingDayOfWeek: StartingDayOfWeek.monday,
                calendarStyle: const CalendarStyle(
                  selectedDecoration: BoxDecoration(
                    color: Colors.blueGrey,
                    shape: BoxShape.circle,
                  ),
                  outsideDaysVisible: false,
                  markerDecoration: BoxDecoration(
                    color: Colors.deepOrange,
                    shape: BoxShape.circle,
                  ),
                ),
                onDaySelected: _onDaySelected,
                onFormatChanged: (format) {
                  if (_calendarFormat != format) {
                    setState(() {
                      _calendarFormat = format;
                    });
                  }
                },
                onPageChanged: (focusedDay) {
                  _focusedDay = focusedDay;
                },
              ),
              Expanded(
                child: ValueListenableBuilder<List<CalendarBalance>>(
                  valueListenable: _selectedEvents,
                  builder: (context, value, _) {
                    return ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: value.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  fullscreenDialog: true,
                                  builder: (context) => const OrdersPage(),
                                ),
                              );
                            },
                            title: Text(
                              '${value[index].typeString(context)}:',
                              style: Theme.of(context).textTheme.bodyLarge!,
                            ),
                            trailing: Text(
                              '${value[index].balance}',
                              style: Theme.of(context).textTheme.bodyLarge!,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          );
  }

  void fillBalance() async {
    setState(() {
      loading = true;
    });
    final balances = await API.fetchBalance();
    kBalances.clear();
    if (balances.stock != null) {
      for (final balance in balances.stock!) {
        List<String> split = balance.tradeDay!.split(':');
        DateTime date = DateTime.parse(split.first + split.last);
        if (kBalances[date] == null) {
          kBalances[date] = [CalendarBalance(BalanceType.stock, balance.total!)];
        } else {
          kBalances[date]!.add(CalendarBalance(BalanceType.stock, balance.total!));
        }
      }
    }
    if (balances.future != null) {
      for (final balance in balances.future!) {
        List<String> split = balance.tradeDay!.split(':');
        DateTime date = DateTime.parse(split.first + split.last);
        if (kBalances[date] == null) {
          kBalances[date] = [CalendarBalance(BalanceType.future, balance.total!)];
        } else {
          kBalances[date]!.add(CalendarBalance(BalanceType.future, balance.total!));
        }
      }
    }
    setState(() {
      loading = false;
      _selectedDay = _focusedDay;
      _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
    });
  }

  List<CalendarBalance> _getEventsForDay(DateTime day) {
    return kBalances[day] ?? [];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
      _selectedEvents.value = _getEventsForDay(selectedDay);
    }
  }

  List<DateTime> daysInRange(DateTime first, DateTime last) {
    final dayCount = last.difference(first).inDays + 1;
    return List.generate(
      dayCount,
      (index) => DateTime.utc(first.year, first.month, first.day + index),
    );
  }

  static int getHashCode(DateTime key) {
    return key.day * 1000000 + key.month * 10000 + key.year;
  }
}

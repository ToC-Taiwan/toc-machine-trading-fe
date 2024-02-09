import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/features/balance/entity/entity.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

class BalancePage extends StatefulWidget {
  const BalancePage({super.key});

  @override
  State<BalancePage> createState() => _BalancePageState();
}

class _BalancePageState extends State<BalancePage> {
  static final kToday = DateTime.now();
  static final kFirstDay = DateTime(kToday.year - 1, kToday.month, kToday.day);
  static final kLastDay = DateTime(kToday.year + 1, kToday.month, kToday.day);

  late final ValueNotifier<List<CalendarBalance>> _selectedEvents;
  LinkedHashMap<DateTime, List<CalendarBalance>> kBalances = LinkedHashMap<DateTime, List<CalendarBalance>>(equals: isSameDay, hashCode: getHashCode);

  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;
  bool loading = false;

  CalendarFormat _calendarFormat = CalendarFormat.month;
  // RangeSelectionMode _rangeSelectionMode = RangeSelectionMode.disabled;

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    fillBalance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(
        context,
        AppLocalizations.of(context)!.balance,
      ),
      body: loading
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
                  rangeStartDay: _rangeStart,
                  rangeEndDay: _rangeEnd,
                  calendarFormat: _calendarFormat,
                  rangeSelectionMode: RangeSelectionMode.disabled,
                  eventLoader: _getEventsForDay,
                  startingDayOfWeek: StartingDayOfWeek.monday,
                  calendarStyle: const CalendarStyle(
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
                const Divider(),
                Expanded(
                  child: ValueListenableBuilder<List<CalendarBalance>>(
                    valueListenable: _selectedEvents,
                    builder: (context, value, _) {
                      return ListView.separated(
                        primary: false,
                        separatorBuilder: (context, index) => const Divider(),
                        shrinkWrap: true,
                        itemCount: value.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            onTap: () {},
                            title: Text(
                              '${value[index].typeString(context)}:',
                            ),
                            trailing: Text(
                              '${value[index].balance}',
                              style: Theme.of(context).textTheme.labelLarge!,
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
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
        _rangeStart = null; // Important to clean those
        _rangeEnd = null;
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

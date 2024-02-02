import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum BalanceType {
  stock,
  future,
}

class CalendarBalance {
  const CalendarBalance(
    this.type,
    this.balance,
  );

  final BalanceType type;
  final num balance;

  String typeString(BuildContext context) {
    switch (type) {
      case BalanceType.stock:
        return AppLocalizations.of(context)!.stock;
      case BalanceType.future:
        return AppLocalizations.of(context)!.future;
    }
  }
}

class Balance {
  List<StockBalance>? stock;
  List<FutureBalance>? future;

  Balance({this.stock, this.future});

  Balance.fromJson(Map<String, dynamic> json) {
    if (json['stock'] != null) {
      stock = <StockBalance>[];
      json['stock'].forEach((v) {
        stock!.add(StockBalance.fromJson(v));
      });
    }
    if (json['future'] != null) {
      future = <FutureBalance>[];
      json['future'].forEach((v) {
        future!.add(FutureBalance.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (stock != null) {
      data['stock'] = stock!.map((v) => v.toJson()).toList();
    }
    if (future != null) {
      data['future'] = future!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StockBalance {
  num? id;
  num? tradeCount;
  num? forward;
  num? reverse;
  num? originalBalance;
  num? discount;
  num? total;
  String? tradeDay;

  StockBalance({this.id, this.tradeCount, this.forward, this.reverse, this.originalBalance, this.discount, this.total, this.tradeDay});

  StockBalance.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tradeCount = json['trade_count'];
    forward = json['forward'];
    reverse = json['reverse'];
    originalBalance = json['original_balance'];
    discount = json['discount'];
    total = json['total'];
    tradeDay = json['trade_day'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['trade_count'] = tradeCount;
    data['forward'] = forward;
    data['reverse'] = reverse;
    data['original_balance'] = originalBalance;
    data['discount'] = discount;
    data['total'] = total;
    data['trade_day'] = tradeDay;
    return data;
  }
}

class FutureBalance {
  num? id;
  num? tradeCount;
  num? forward;
  num? reverse;
  num? total;
  String? tradeDay;

  FutureBalance({this.id, this.tradeCount, this.forward, this.reverse, this.total, this.tradeDay});

  FutureBalance.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tradeCount = json['trade_count'];
    forward = json['forward'];
    reverse = json['reverse'];
    total = json['total'];
    tradeDay = json['trade_day'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['trade_count'] = tradeCount;
    data['forward'] = forward;
    data['reverse'] = reverse;
    data['total'] = total;
    data['trade_day'] = tradeDay;
    return data;
  }
}

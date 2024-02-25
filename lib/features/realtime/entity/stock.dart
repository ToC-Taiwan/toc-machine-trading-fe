class StockDetail {
  StockDetail({
    this.number,
    this.name,
    this.exchange,
    this.category,
    this.dayTrade,
    this.lastClose,
  });

  StockDetail.fromJson(Map<dynamic, dynamic> json) {
    number = json['number'] as String;
    name = json['name'] as String;
    exchange = json['exchange'] as String;
    category = json['category'] as String;
    dayTrade = json['day_trade'] as bool;
    lastClose = json['last_close'] as num;
  }

  String? number;
  String? name;
  String? exchange;
  String? category;
  bool? dayTrade;
  num? lastClose;
}

class SnapShot {
  String? stockNum;
  String? stockName;
  String? snapTime;
  num? open;
  num? high;
  num? low;
  num? close;
  String? tickType;
  num? priceChg;
  num? pctChg;
  String? chgType;
  int? volume;
  int? volumeSum;
  int? amount;
  int? amountSum;
  int? yesterdayVolume;
  double? volumeRatio;

  SnapShot(
      {this.stockNum,
      this.stockName,
      this.snapTime,
      this.open,
      this.high,
      this.low,
      this.close,
      this.tickType,
      this.priceChg,
      this.pctChg,
      this.chgType,
      this.volume,
      this.volumeSum,
      this.amount,
      this.amountSum,
      this.yesterdayVolume,
      this.volumeRatio});

  SnapShot.fromJson(Map<String, dynamic> json) {
    stockNum = json['stock_num'];
    stockName = json['stock_name'];
    snapTime = json['snap_time'];
    open = json['open'];
    high = json['high'];
    low = json['low'];
    close = json['close'];
    tickType = json['tick_type'];
    priceChg = json['price_chg'];
    pctChg = json['pct_chg'];
    chgType = json['chg_type'];
    volume = json['volume'];
    volumeSum = json['volume_sum'];
    amount = json['amount'];
    amountSum = json['amount_sum'];
    yesterdayVolume = json['yesterday_volume'];
    volumeRatio = json['volume_ratio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['stock_num'] = stockNum;
    data['stock_name'] = stockName;
    data['snap_time'] = snapTime;
    data['open'] = open;
    data['high'] = high;
    data['low'] = low;
    data['close'] = close;
    data['tick_type'] = tickType;
    data['price_chg'] = priceChg;
    data['pct_chg'] = pctChg;
    data['chg_type'] = chgType;
    data['volume'] = volume;
    data['volume_sum'] = volumeSum;
    data['amount'] = amount;
    data['amount_sum'] = amountSum;
    data['yesterday_volume'] = yesterdayVolume;
    data['volume_ratio'] = volumeRatio;
    return data;
  }
}

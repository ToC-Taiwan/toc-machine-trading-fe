class FutureDetail {
  String? code;
  String? symbol;
  String? name;
  String? category;
  String? deliveryMonth;
  String? deliveryDate;
  String? underlyingKind;
  num? unit;
  num? limitUp;
  num? limitDown;
  num? reference;
  String? updateDate;

  FutureDetail(
      {this.code,
      this.symbol,
      this.name,
      this.category,
      this.deliveryMonth,
      this.deliveryDate,
      this.underlyingKind,
      this.unit,
      this.limitUp,
      this.limitDown,
      this.reference,
      this.updateDate});

  FutureDetail.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    symbol = json['symbol'];
    name = json['name'];
    category = json['category'];
    deliveryMonth = json['delivery_month'];
    deliveryDate = json['delivery_date'];
    underlyingKind = json['underlying_kind'];
    unit = json['unit'];
    limitUp = json['limit_up'];
    limitDown = json['limit_down'];
    reference = json['reference'];
    updateDate = json['update_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['symbol'] = symbol;
    data['name'] = name;
    data['category'] = category;
    data['delivery_month'] = deliveryMonth;
    data['delivery_date'] = deliveryDate;
    data['underlying_kind'] = underlyingKind;
    data['unit'] = unit;
    data['limit_up'] = limitUp;
    data['limit_down'] = limitDown;
    data['reference'] = reference;
    data['update_date'] = updateDate;
    return data;
  }
}

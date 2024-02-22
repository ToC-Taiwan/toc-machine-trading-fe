class PositionStock {
  String? uUID;
  num? avgPrice;
  String? date;
  String? stockNum;
  int? lot;
  int? share;
  List<Position>? position;

  PositionStock({
    this.uUID,
    this.avgPrice,
    this.date,
    this.stockNum,
    this.lot,
    this.share,
    this.position,
  });

  PositionStock.fromJson(Map<String, dynamic> json) {
    uUID = json['UUID'];
    avgPrice = json['AvgPrice'];
    date = json['Date'];
    stockNum = json['StockNum'];
    lot = json['Lot'];
    share = json['Share'];
    if (json['Position'] != null) {
      position = <Position>[];
      json['Position'].forEach((v) {
        position!.add(Position.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['UUID'] = uUID;
    data['AvgPrice'] = avgPrice;
    data['Date'] = date;
    data['StockNum'] = stockNum;
    data['Lot'] = lot;
    data['Share'] = share;
    if (position != null) {
      data['Position'] = position!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Position {
  String? stockNum;
  String? date;
  int? quantity;
  int? price;
  int? lastPrice;
  String? dseq;
  String? direction;
  int? pnl;
  int? fee;
  String? invID;

  Position({
    this.stockNum,
    this.date,
    this.quantity,
    this.price,
    this.lastPrice,
    this.dseq,
    this.direction,
    this.pnl,
    this.fee,
    this.invID,
  });

  Position.fromJson(Map<String, dynamic> json) {
    stockNum = json['StockNum'];
    date = json['Date'];
    quantity = json['Quantity'];
    price = json['Price'];
    lastPrice = json['LastPrice'];
    dseq = json['Dseq'];
    direction = json['Direction'];
    pnl = json['Pnl'];
    fee = json['Fee'];
    invID = json['InvID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['StockNum'] = stockNum;
    data['Date'] = date;
    data['Quantity'] = quantity;
    data['Price'] = price;
    data['LastPrice'] = lastPrice;
    data['Dseq'] = dseq;
    data['Direction'] = direction;
    data['Pnl'] = pnl;
    data['Fee'] = fee;
    data['InvID'] = invID;
    return data;
  }
}

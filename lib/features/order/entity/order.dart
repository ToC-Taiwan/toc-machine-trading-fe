enum OrderType {
  stock,
  stockOdd,
  future,
  combo,
}

enum OrderAction {
  buy,
  sell,
  sellFirst,
  buyLater,
  none,
}

enum OrderValidUntilUnit {
  m5(Duration(minutes: 5)),
  m15(Duration(minutes: 15)),
  m30(Duration(minutes: 30)),
  h1(Duration(hours: 1)),
  h2(Duration(hours: 2)),
  h3(Duration(hours: 3));

  const OrderValidUntilUnit(this.value);

  String printDuration() {
    String negativeSign = value.isNegative ? '-' : '';
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(value.inMinutes.remainder(60).abs());
    return "$negativeSign${twoDigits(value.inHours)}:$twoDigitMinutes";
  }

  final Duration value;
}

class Order {
  Order({
    this.code,
    this.count,
    this.price,
    this.action,
    this.autoClose,
    this.availablePrice,
    this.validUntilUnit,
    required this.type,
  });

  @override
  String toString() {
    return 'Order{code: $code, action: $action, count: $count, price: $price, type: $type, autoClose: $autoClose, validUntilUnit: $validUntilUnit}';
  }

  String? code;
  int? count;
  num? price;
  OrderAction? action;
  bool? autoClose;
  List<num>? availablePrice;
  OrderValidUntilUnit? validUntilUnit;
  OrderType? type;
}

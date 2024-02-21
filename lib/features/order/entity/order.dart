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
  none(Duration.zero),
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
    if (twoDigits(value.inHours) == "00" && twoDigitMinutes == "00") {
      return "-";
    }
    return "$negativeSign${twoDigits(value.inHours)}:$twoDigitMinutes";
  }

  OrderValidUntilUnit next() {
    int index = OrderValidUntilUnit.values.indexOf(this);
    if (index == OrderValidUntilUnit.values.length - 1) {
      return OrderValidUntilUnit.values.first;
    }
    return OrderValidUntilUnit.values[index + 1];
  }

  OrderValidUntilUnit previous() {
    int index = OrderValidUntilUnit.values.indexOf(this);
    if (index == 0) {
      return OrderValidUntilUnit.values.last;
    }
    return OrderValidUntilUnit.values[index - 1];
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

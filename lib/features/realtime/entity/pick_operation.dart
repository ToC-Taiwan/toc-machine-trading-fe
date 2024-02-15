enum OperationType {
  add,
  removeAll,
}

class PickStockModifiyBody {
  PickStockModifiyBody({
    required this.operationType,
    this.addStock,
  });

  OperationType operationType;
  String? addStock;
}

//
//  Generated code. Do not modify.
//  source: forwarder/trade.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/empty.pb.dart' as $1;

class FuturePosition extends $pb.GeneratedMessage {
  factory FuturePosition({
    $core.String? code,
    $core.String? direction,
    $core.int? quantity,
    $core.double? price,
    $core.double? lastPrice,
    $core.double? pnl,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (direction != null) {
      $result.direction = direction;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    if (price != null) {
      $result.price = price;
    }
    if (lastPrice != null) {
      $result.lastPrice = lastPrice;
    }
    if (pnl != null) {
      $result.pnl = pnl;
    }
    return $result;
  }
  FuturePosition._() : super();
  factory FuturePosition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FuturePosition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FuturePosition', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'direction')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'quantity', $pb.PbFieldType.O3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'lastPrice', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'pnl', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FuturePosition clone() => FuturePosition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FuturePosition copyWith(void Function(FuturePosition) updates) => super.copyWith((message) => updates(message as FuturePosition)) as FuturePosition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FuturePosition create() => FuturePosition._();
  FuturePosition createEmptyInstance() => create();
  static $pb.PbList<FuturePosition> createRepeated() => $pb.PbList<FuturePosition>();
  @$core.pragma('dart2js:noInline')
  static FuturePosition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FuturePosition>(create);
  static FuturePosition? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get direction => $_getSZ(1);
  @$pb.TagNumber(2)
  set direction($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDirection() => $_has(1);
  @$pb.TagNumber(2)
  void clearDirection() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get quantity => $_getIZ(2);
  @$pb.TagNumber(3)
  set quantity($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get lastPrice => $_getN(4);
  @$pb.TagNumber(5)
  set lastPrice($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLastPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get pnl => $_getN(5);
  @$pb.TagNumber(6)
  set pnl($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPnl() => $_has(5);
  @$pb.TagNumber(6)
  void clearPnl() => clearField(6);
}

class FuturePositionArr extends $pb.GeneratedMessage {
  factory FuturePositionArr({
    $core.Iterable<FuturePosition>? positionArr,
  }) {
    final $result = create();
    if (positionArr != null) {
      $result.positionArr.addAll(positionArr);
    }
    return $result;
  }
  FuturePositionArr._() : super();
  factory FuturePositionArr.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FuturePositionArr.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FuturePositionArr', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pc<FuturePosition>(1, _omitFieldNames ? '' : 'positionArr', $pb.PbFieldType.PM, subBuilder: FuturePosition.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FuturePositionArr clone() => FuturePositionArr()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FuturePositionArr copyWith(void Function(FuturePositionArr) updates) => super.copyWith((message) => updates(message as FuturePositionArr)) as FuturePositionArr;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FuturePositionArr create() => FuturePositionArr._();
  FuturePositionArr createEmptyInstance() => create();
  static $pb.PbList<FuturePositionArr> createRepeated() => $pb.PbList<FuturePositionArr>();
  @$core.pragma('dart2js:noInline')
  static FuturePositionArr getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FuturePositionArr>(create);
  static FuturePositionArr? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FuturePosition> get positionArr => $_getList(0);
}

/// id (int): position id
/// code (str): contract id
/// direction (Action): action {Buy, Sell}
/// quantity (int): quantity
/// price (float): the average price
/// last_price (float): last price
/// pnl (float): unrealized profit
/// yd_quantity (int): yesterday
/// cond (StockOrderCond): Default Cash {Cash(現股), Netting(餘額交割), MarginTrading(融資),ShortSelling(融券), Emerging(興櫃)}
/// margin_purchase_amount (int): margin_purchase_amount
/// collateral (int): collateral
/// short_sale_margin (int): short_sale_margin
/// interest (int): interest
/// StockPosition(id = 0, code = '2344', direction = <Action.Buy: 'Buy'>, quantity = 10, price = 28.3, last_price = 27.1, pnl = -15.0, yd_quantity = 10, margin_purchase_amount = 0, collateral = 0, short_sale_margin = 0, interest = 0)
class StockPosition extends $pb.GeneratedMessage {
  factory StockPosition({
    $core.int? id,
    $core.String? code,
    $core.String? direction,
    $core.int? quantity,
    $core.double? price,
    $core.double? lastPrice,
    $core.double? pnl,
    $core.int? ydQuantity,
    $core.String? cond,
    $core.int? marginPurchaseAmount,
    $core.int? collateral,
    $core.int? shortSaleMargin,
    $core.int? interest,
    $core.Iterable<StockPositionDetail>? detailArr,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (code != null) {
      $result.code = code;
    }
    if (direction != null) {
      $result.direction = direction;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    if (price != null) {
      $result.price = price;
    }
    if (lastPrice != null) {
      $result.lastPrice = lastPrice;
    }
    if (pnl != null) {
      $result.pnl = pnl;
    }
    if (ydQuantity != null) {
      $result.ydQuantity = ydQuantity;
    }
    if (cond != null) {
      $result.cond = cond;
    }
    if (marginPurchaseAmount != null) {
      $result.marginPurchaseAmount = marginPurchaseAmount;
    }
    if (collateral != null) {
      $result.collateral = collateral;
    }
    if (shortSaleMargin != null) {
      $result.shortSaleMargin = shortSaleMargin;
    }
    if (interest != null) {
      $result.interest = interest;
    }
    if (detailArr != null) {
      $result.detailArr.addAll(detailArr);
    }
    return $result;
  }
  StockPosition._() : super();
  factory StockPosition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StockPosition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StockPosition', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..aOS(3, _omitFieldNames ? '' : 'direction')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'quantity', $pb.PbFieldType.O3)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'lastPrice', $pb.PbFieldType.OD)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'pnl', $pb.PbFieldType.OD)
    ..a<$core.int>(8, _omitFieldNames ? '' : 'ydQuantity', $pb.PbFieldType.O3)
    ..aOS(9, _omitFieldNames ? '' : 'cond')
    ..a<$core.int>(10, _omitFieldNames ? '' : 'marginPurchaseAmount', $pb.PbFieldType.O3)
    ..a<$core.int>(11, _omitFieldNames ? '' : 'collateral', $pb.PbFieldType.O3)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'shortSaleMargin', $pb.PbFieldType.O3)
    ..a<$core.int>(13, _omitFieldNames ? '' : 'interest', $pb.PbFieldType.O3)
    ..pc<StockPositionDetail>(14, _omitFieldNames ? '' : 'detailArr', $pb.PbFieldType.PM, subBuilder: StockPositionDetail.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StockPosition clone() => StockPosition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StockPosition copyWith(void Function(StockPosition) updates) => super.copyWith((message) => updates(message as StockPosition)) as StockPosition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockPosition create() => StockPosition._();
  StockPosition createEmptyInstance() => create();
  static $pb.PbList<StockPosition> createRepeated() => $pb.PbList<StockPosition>();
  @$core.pragma('dart2js:noInline')
  static StockPosition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StockPosition>(create);
  static StockPosition? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get direction => $_getSZ(2);
  @$pb.TagNumber(3)
  set direction($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDirection() => $_has(2);
  @$pb.TagNumber(3)
  void clearDirection() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get quantity => $_getIZ(3);
  @$pb.TagNumber(4)
  set quantity($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasQuantity() => $_has(3);
  @$pb.TagNumber(4)
  void clearQuantity() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get price => $_getN(4);
  @$pb.TagNumber(5)
  set price($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get lastPrice => $_getN(5);
  @$pb.TagNumber(6)
  set lastPrice($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastPrice() => $_has(5);
  @$pb.TagNumber(6)
  void clearLastPrice() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get pnl => $_getN(6);
  @$pb.TagNumber(7)
  set pnl($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPnl() => $_has(6);
  @$pb.TagNumber(7)
  void clearPnl() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get ydQuantity => $_getIZ(7);
  @$pb.TagNumber(8)
  set ydQuantity($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasYdQuantity() => $_has(7);
  @$pb.TagNumber(8)
  void clearYdQuantity() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get cond => $_getSZ(8);
  @$pb.TagNumber(9)
  set cond($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCond() => $_has(8);
  @$pb.TagNumber(9)
  void clearCond() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get marginPurchaseAmount => $_getIZ(9);
  @$pb.TagNumber(10)
  set marginPurchaseAmount($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMarginPurchaseAmount() => $_has(9);
  @$pb.TagNumber(10)
  void clearMarginPurchaseAmount() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get collateral => $_getIZ(10);
  @$pb.TagNumber(11)
  set collateral($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCollateral() => $_has(10);
  @$pb.TagNumber(11)
  void clearCollateral() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get shortSaleMargin => $_getIZ(11);
  @$pb.TagNumber(12)
  set shortSaleMargin($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasShortSaleMargin() => $_has(11);
  @$pb.TagNumber(12)
  void clearShortSaleMargin() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get interest => $_getIZ(12);
  @$pb.TagNumber(13)
  set interest($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasInterest() => $_has(12);
  @$pb.TagNumber(13)
  void clearInterest() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<StockPositionDetail> get detailArr => $_getList(13);
}

class StockPositionArr extends $pb.GeneratedMessage {
  factory StockPositionArr({
    $core.Iterable<StockPosition>? positionArr,
  }) {
    final $result = create();
    if (positionArr != null) {
      $result.positionArr.addAll(positionArr);
    }
    return $result;
  }
  StockPositionArr._() : super();
  factory StockPositionArr.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StockPositionArr.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StockPositionArr', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pc<StockPosition>(1, _omitFieldNames ? '' : 'positionArr', $pb.PbFieldType.PM, subBuilder: StockPosition.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StockPositionArr clone() => StockPositionArr()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StockPositionArr copyWith(void Function(StockPositionArr) updates) => super.copyWith((message) => updates(message as StockPositionArr)) as StockPositionArr;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockPositionArr create() => StockPositionArr._();
  StockPositionArr createEmptyInstance() => create();
  static $pb.PbList<StockPositionArr> createRepeated() => $pb.PbList<StockPositionArr>();
  @$core.pragma('dart2js:noInline')
  static StockPositionArr getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StockPositionArr>(create);
  static StockPositionArr? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<StockPosition> get positionArr => $_getList(0);
}

/// StockPositionDetail(date = '2024-01-04', code = '2344', quantity = 0, price = 147.0, last_price = 134.0, dseq = 'IC320', direction = <Action.Buy: 'Buy'>, pnl = -13.0, currency = <Currency.TWD: 'TWD'>, fee = 1.0)
class StockPositionDetail extends $pb.GeneratedMessage {
  factory StockPositionDetail({
    $core.String? date,
    $core.String? code,
    $core.int? quantity,
    $core.double? price,
    $core.double? lastPrice,
    $core.String? dseq,
    $core.String? direction,
    $core.double? pnl,
    $core.String? currency,
    $core.double? fee,
  }) {
    final $result = create();
    if (date != null) {
      $result.date = date;
    }
    if (code != null) {
      $result.code = code;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    if (price != null) {
      $result.price = price;
    }
    if (lastPrice != null) {
      $result.lastPrice = lastPrice;
    }
    if (dseq != null) {
      $result.dseq = dseq;
    }
    if (direction != null) {
      $result.direction = direction;
    }
    if (pnl != null) {
      $result.pnl = pnl;
    }
    if (currency != null) {
      $result.currency = currency;
    }
    if (fee != null) {
      $result.fee = fee;
    }
    return $result;
  }
  StockPositionDetail._() : super();
  factory StockPositionDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StockPositionDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StockPositionDetail', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'date')
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'quantity', $pb.PbFieldType.O3)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'lastPrice', $pb.PbFieldType.OD)
    ..aOS(6, _omitFieldNames ? '' : 'dseq')
    ..aOS(7, _omitFieldNames ? '' : 'direction')
    ..a<$core.double>(8, _omitFieldNames ? '' : 'pnl', $pb.PbFieldType.OD)
    ..aOS(9, _omitFieldNames ? '' : 'currency')
    ..a<$core.double>(10, _omitFieldNames ? '' : 'fee', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StockPositionDetail clone() => StockPositionDetail()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StockPositionDetail copyWith(void Function(StockPositionDetail) updates) => super.copyWith((message) => updates(message as StockPositionDetail)) as StockPositionDetail;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockPositionDetail create() => StockPositionDetail._();
  StockPositionDetail createEmptyInstance() => create();
  static $pb.PbList<StockPositionDetail> createRepeated() => $pb.PbList<StockPositionDetail>();
  @$core.pragma('dart2js:noInline')
  static StockPositionDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StockPositionDetail>(create);
  static StockPositionDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get date => $_getSZ(0);
  @$pb.TagNumber(1)
  set date($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get quantity => $_getIZ(2);
  @$pb.TagNumber(3)
  set quantity($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get price => $_getN(3);
  @$pb.TagNumber(4)
  set price($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get lastPrice => $_getN(4);
  @$pb.TagNumber(5)
  set lastPrice($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLastPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastPrice() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get dseq => $_getSZ(5);
  @$pb.TagNumber(6)
  set dseq($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDseq() => $_has(5);
  @$pb.TagNumber(6)
  void clearDseq() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get direction => $_getSZ(6);
  @$pb.TagNumber(7)
  set direction($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDirection() => $_has(6);
  @$pb.TagNumber(7)
  void clearDirection() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get pnl => $_getN(7);
  @$pb.TagNumber(8)
  set pnl($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPnl() => $_has(7);
  @$pb.TagNumber(8)
  void clearPnl() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get currency => $_getSZ(8);
  @$pb.TagNumber(9)
  set currency($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCurrency() => $_has(8);
  @$pb.TagNumber(9)
  void clearCurrency() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get fee => $_getN(9);
  @$pb.TagNumber(10)
  set fee($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFee() => $_has(9);
  @$pb.TagNumber(10)
  void clearFee() => clearField(10);
}

class StockOrderDetail extends $pb.GeneratedMessage {
  factory StockOrderDetail({
    $core.String? stockNum,
    $core.double? price,
    $fixnum.Int64? quantity,
    $core.bool? simulate,
  }) {
    final $result = create();
    if (stockNum != null) {
      $result.stockNum = stockNum;
    }
    if (price != null) {
      $result.price = price;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    if (simulate != null) {
      $result.simulate = simulate;
    }
    return $result;
  }
  StockOrderDetail._() : super();
  factory StockOrderDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StockOrderDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StockOrderDetail', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stockNum')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..aInt64(3, _omitFieldNames ? '' : 'quantity')
    ..aOB(4, _omitFieldNames ? '' : 'simulate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StockOrderDetail clone() => StockOrderDetail()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StockOrderDetail copyWith(void Function(StockOrderDetail) updates) => super.copyWith((message) => updates(message as StockOrderDetail)) as StockOrderDetail;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockOrderDetail create() => StockOrderDetail._();
  StockOrderDetail createEmptyInstance() => create();
  static $pb.PbList<StockOrderDetail> createRepeated() => $pb.PbList<StockOrderDetail>();
  @$core.pragma('dart2js:noInline')
  static StockOrderDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StockOrderDetail>(create);
  static StockOrderDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stockNum => $_getSZ(0);
  @$pb.TagNumber(1)
  set stockNum($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStockNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearStockNum() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get price => $_getN(1);
  @$pb.TagNumber(2)
  set price($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrice() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrice() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get quantity => $_getI64(2);
  @$pb.TagNumber(3)
  set quantity($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get simulate => $_getBF(3);
  @$pb.TagNumber(4)
  set simulate($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSimulate() => $_has(3);
  @$pb.TagNumber(4)
  void clearSimulate() => clearField(4);
}

class OddStockOrderDetail extends $pb.GeneratedMessage {
  factory OddStockOrderDetail({
    $core.String? stockNum,
    $core.double? price,
    $fixnum.Int64? share,
  }) {
    final $result = create();
    if (stockNum != null) {
      $result.stockNum = stockNum;
    }
    if (price != null) {
      $result.price = price;
    }
    if (share != null) {
      $result.share = share;
    }
    return $result;
  }
  OddStockOrderDetail._() : super();
  factory OddStockOrderDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OddStockOrderDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OddStockOrderDetail', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'stockNum')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..aInt64(3, _omitFieldNames ? '' : 'share')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OddStockOrderDetail clone() => OddStockOrderDetail()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OddStockOrderDetail copyWith(void Function(OddStockOrderDetail) updates) => super.copyWith((message) => updates(message as OddStockOrderDetail)) as OddStockOrderDetail;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OddStockOrderDetail create() => OddStockOrderDetail._();
  OddStockOrderDetail createEmptyInstance() => create();
  static $pb.PbList<OddStockOrderDetail> createRepeated() => $pb.PbList<OddStockOrderDetail>();
  @$core.pragma('dart2js:noInline')
  static OddStockOrderDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OddStockOrderDetail>(create);
  static OddStockOrderDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get stockNum => $_getSZ(0);
  @$pb.TagNumber(1)
  set stockNum($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStockNum() => $_has(0);
  @$pb.TagNumber(1)
  void clearStockNum() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get price => $_getN(1);
  @$pb.TagNumber(2)
  set price($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrice() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrice() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get share => $_getI64(2);
  @$pb.TagNumber(3)
  set share($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShare() => $_has(2);
  @$pb.TagNumber(3)
  void clearShare() => clearField(3);
}

class FutureOrderDetail extends $pb.GeneratedMessage {
  factory FutureOrderDetail({
    $core.String? code,
    $core.double? price,
    $fixnum.Int64? quantity,
    $core.bool? simulate,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (price != null) {
      $result.price = price;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    if (simulate != null) {
      $result.simulate = simulate;
    }
    return $result;
  }
  FutureOrderDetail._() : super();
  factory FutureOrderDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FutureOrderDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FutureOrderDetail', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..aInt64(3, _omitFieldNames ? '' : 'quantity')
    ..aOB(4, _omitFieldNames ? '' : 'simulate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FutureOrderDetail clone() => FutureOrderDetail()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FutureOrderDetail copyWith(void Function(FutureOrderDetail) updates) => super.copyWith((message) => updates(message as FutureOrderDetail)) as FutureOrderDetail;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FutureOrderDetail create() => FutureOrderDetail._();
  FutureOrderDetail createEmptyInstance() => create();
  static $pb.PbList<FutureOrderDetail> createRepeated() => $pb.PbList<FutureOrderDetail>();
  @$core.pragma('dart2js:noInline')
  static FutureOrderDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FutureOrderDetail>(create);
  static FutureOrderDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get price => $_getN(1);
  @$pb.TagNumber(2)
  set price($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrice() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrice() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get quantity => $_getI64(2);
  @$pb.TagNumber(3)
  set quantity($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get simulate => $_getBF(3);
  @$pb.TagNumber(4)
  set simulate($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSimulate() => $_has(3);
  @$pb.TagNumber(4)
  void clearSimulate() => clearField(4);
}

class OptionOrderDetail extends $pb.GeneratedMessage {
  factory OptionOrderDetail({
    $core.String? code,
    $core.double? price,
    $fixnum.Int64? quantity,
    $core.bool? simulate,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (price != null) {
      $result.price = price;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    if (simulate != null) {
      $result.simulate = simulate;
    }
    return $result;
  }
  OptionOrderDetail._() : super();
  factory OptionOrderDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OptionOrderDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OptionOrderDetail', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..aInt64(3, _omitFieldNames ? '' : 'quantity')
    ..aOB(4, _omitFieldNames ? '' : 'simulate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OptionOrderDetail clone() => OptionOrderDetail()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OptionOrderDetail copyWith(void Function(OptionOrderDetail) updates) => super.copyWith((message) => updates(message as OptionOrderDetail)) as OptionOrderDetail;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OptionOrderDetail create() => OptionOrderDetail._();
  OptionOrderDetail createEmptyInstance() => create();
  static $pb.PbList<OptionOrderDetail> createRepeated() => $pb.PbList<OptionOrderDetail>();
  @$core.pragma('dart2js:noInline')
  static OptionOrderDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OptionOrderDetail>(create);
  static OptionOrderDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get price => $_getN(1);
  @$pb.TagNumber(2)
  set price($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPrice() => $_has(1);
  @$pb.TagNumber(2)
  void clearPrice() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get quantity => $_getI64(2);
  @$pb.TagNumber(3)
  set quantity($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQuantity() => $_has(2);
  @$pb.TagNumber(3)
  void clearQuantity() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get simulate => $_getBF(3);
  @$pb.TagNumber(4)
  set simulate($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSimulate() => $_has(3);
  @$pb.TagNumber(4)
  void clearSimulate() => clearField(4);
}

class TradeResult extends $pb.GeneratedMessage {
  factory TradeResult({
    $core.String? orderId,
    $core.String? status,
    $core.String? error,
  }) {
    final $result = create();
    if (orderId != null) {
      $result.orderId = orderId;
    }
    if (status != null) {
      $result.status = status;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  TradeResult._() : super();
  factory TradeResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TradeResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TradeResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'orderId')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aOS(3, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TradeResult clone() => TradeResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TradeResult copyWith(void Function(TradeResult) updates) => super.copyWith((message) => updates(message as TradeResult)) as TradeResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TradeResult create() => TradeResult._();
  TradeResult createEmptyInstance() => create();
  static $pb.PbList<TradeResult> createRepeated() => $pb.PbList<TradeResult>();
  @$core.pragma('dart2js:noInline')
  static TradeResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TradeResult>(create);
  static TradeResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get orderId => $_getSZ(0);
  @$pb.TagNumber(1)
  set orderId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrderId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get error => $_getSZ(2);
  @$pb.TagNumber(3)
  set error($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
}

class OrderID extends $pb.GeneratedMessage {
  factory OrderID({
    $core.String? orderId,
    $core.bool? simulate,
  }) {
    final $result = create();
    if (orderId != null) {
      $result.orderId = orderId;
    }
    if (simulate != null) {
      $result.simulate = simulate;
    }
    return $result;
  }
  OrderID._() : super();
  factory OrderID.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderID.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OrderID', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'orderId')
    ..aOB(2, _omitFieldNames ? '' : 'simulate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderID clone() => OrderID()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderID copyWith(void Function(OrderID) updates) => super.copyWith((message) => updates(message as OrderID)) as OrderID;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OrderID create() => OrderID._();
  OrderID createEmptyInstance() => create();
  static $pb.PbList<OrderID> createRepeated() => $pb.PbList<OrderID>();
  @$core.pragma('dart2js:noInline')
  static OrderID getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderID>(create);
  static OrderID? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get orderId => $_getSZ(0);
  @$pb.TagNumber(1)
  set orderId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrderId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get simulate => $_getBF(1);
  @$pb.TagNumber(2)
  set simulate($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSimulate() => $_has(1);
  @$pb.TagNumber(2)
  void clearSimulate() => clearField(2);
}

/// status(FetchStatus): 資料回傳狀態
/// yesterday_balance(float): 前日餘額
/// today_balance(float): 今日餘額
/// deposit_withdrawal(float): 存提
/// fee(float): 手續費
/// tax(float): 期交稅
/// initial_margin(float): 原始保證金
/// maintenance_margin(float): 維持保證金
/// margin_call(float): 追繳保證金
/// risk_indicator(float): 風險指標
/// royalty_revenue_expenditure(float): 權利金收入與支出
/// equity(float): 權益數
/// equity_amount(float): 權益總值
/// option_openbuy_market_value(float): 未沖銷買方選擇權市值
/// option_opensell_market_value(float): 未沖銷賣方選擇權市值
/// option_open_position(float): 參考未平倉選擇權損益
/// option_settle_profitloss(float): 參考選擇權平倉損益
/// future_open_position(float): 未沖銷期貨浮動損益
/// today_future_open_position(float): 參考當日未沖銷期貨浮動損益
/// future_settle_profitloss(float): 期貨平倉損益
/// available_margin(float): 可動用(出金) 保證金
/// plus_margin(float): 依「加收保證金指標」所加收之保證金
/// plus_margin_indicator(float): 加收保證金指標
/// security_collateral_amount(float): 有價證券抵繳總額
/// order_margin_premium(float): 委託保證金及委託權利金
/// collateral_amount(float): 有價品額
class Margin extends $pb.GeneratedMessage {
  factory Margin({
    $core.String? status,
    $core.double? yesterdayBalance,
    $core.double? todayBalance,
    $core.double? depositWithdrawal,
    $core.double? fee,
    $core.double? tax,
    $core.double? initialMargin,
    $core.double? maintenanceMargin,
    $core.double? marginCall,
    $core.double? riskIndicator,
    $core.double? royaltyRevenueExpenditure,
    $core.double? equity,
    $core.double? equityAmount,
    $core.double? optionOpenbuyMarketValue,
    $core.double? optionOpensellMarketValue,
    $core.double? optionOpenPosition,
    $core.double? optionSettleProfitloss,
    $core.double? futureOpenPosition,
    $core.double? todayFutureOpenPosition,
    $core.double? futureSettleProfitloss,
    $core.double? availableMargin,
    $core.double? plusMargin,
    $core.double? plusMarginIndicator,
    $core.double? securityCollateralAmount,
    $core.double? orderMarginPremium,
    $core.double? collateralAmount,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (yesterdayBalance != null) {
      $result.yesterdayBalance = yesterdayBalance;
    }
    if (todayBalance != null) {
      $result.todayBalance = todayBalance;
    }
    if (depositWithdrawal != null) {
      $result.depositWithdrawal = depositWithdrawal;
    }
    if (fee != null) {
      $result.fee = fee;
    }
    if (tax != null) {
      $result.tax = tax;
    }
    if (initialMargin != null) {
      $result.initialMargin = initialMargin;
    }
    if (maintenanceMargin != null) {
      $result.maintenanceMargin = maintenanceMargin;
    }
    if (marginCall != null) {
      $result.marginCall = marginCall;
    }
    if (riskIndicator != null) {
      $result.riskIndicator = riskIndicator;
    }
    if (royaltyRevenueExpenditure != null) {
      $result.royaltyRevenueExpenditure = royaltyRevenueExpenditure;
    }
    if (equity != null) {
      $result.equity = equity;
    }
    if (equityAmount != null) {
      $result.equityAmount = equityAmount;
    }
    if (optionOpenbuyMarketValue != null) {
      $result.optionOpenbuyMarketValue = optionOpenbuyMarketValue;
    }
    if (optionOpensellMarketValue != null) {
      $result.optionOpensellMarketValue = optionOpensellMarketValue;
    }
    if (optionOpenPosition != null) {
      $result.optionOpenPosition = optionOpenPosition;
    }
    if (optionSettleProfitloss != null) {
      $result.optionSettleProfitloss = optionSettleProfitloss;
    }
    if (futureOpenPosition != null) {
      $result.futureOpenPosition = futureOpenPosition;
    }
    if (todayFutureOpenPosition != null) {
      $result.todayFutureOpenPosition = todayFutureOpenPosition;
    }
    if (futureSettleProfitloss != null) {
      $result.futureSettleProfitloss = futureSettleProfitloss;
    }
    if (availableMargin != null) {
      $result.availableMargin = availableMargin;
    }
    if (plusMargin != null) {
      $result.plusMargin = plusMargin;
    }
    if (plusMarginIndicator != null) {
      $result.plusMarginIndicator = plusMarginIndicator;
    }
    if (securityCollateralAmount != null) {
      $result.securityCollateralAmount = securityCollateralAmount;
    }
    if (orderMarginPremium != null) {
      $result.orderMarginPremium = orderMarginPremium;
    }
    if (collateralAmount != null) {
      $result.collateralAmount = collateralAmount;
    }
    return $result;
  }
  Margin._() : super();
  factory Margin.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Margin.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Margin', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'status')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'yesterdayBalance', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'todayBalance', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'depositWithdrawal', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'fee', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'tax', $pb.PbFieldType.OD)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'initialMargin', $pb.PbFieldType.OD)
    ..a<$core.double>(8, _omitFieldNames ? '' : 'maintenanceMargin', $pb.PbFieldType.OD)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'marginCall', $pb.PbFieldType.OD)
    ..a<$core.double>(10, _omitFieldNames ? '' : 'riskIndicator', $pb.PbFieldType.OD)
    ..a<$core.double>(11, _omitFieldNames ? '' : 'royaltyRevenueExpenditure', $pb.PbFieldType.OD)
    ..a<$core.double>(12, _omitFieldNames ? '' : 'equity', $pb.PbFieldType.OD)
    ..a<$core.double>(13, _omitFieldNames ? '' : 'equityAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(14, _omitFieldNames ? '' : 'optionOpenbuyMarketValue', $pb.PbFieldType.OD)
    ..a<$core.double>(15, _omitFieldNames ? '' : 'optionOpensellMarketValue', $pb.PbFieldType.OD)
    ..a<$core.double>(16, _omitFieldNames ? '' : 'optionOpenPosition', $pb.PbFieldType.OD)
    ..a<$core.double>(17, _omitFieldNames ? '' : 'optionSettleProfitloss', $pb.PbFieldType.OD)
    ..a<$core.double>(18, _omitFieldNames ? '' : 'futureOpenPosition', $pb.PbFieldType.OD)
    ..a<$core.double>(19, _omitFieldNames ? '' : 'todayFutureOpenPosition', $pb.PbFieldType.OD)
    ..a<$core.double>(20, _omitFieldNames ? '' : 'futureSettleProfitloss', $pb.PbFieldType.OD)
    ..a<$core.double>(21, _omitFieldNames ? '' : 'availableMargin', $pb.PbFieldType.OD)
    ..a<$core.double>(22, _omitFieldNames ? '' : 'plusMargin', $pb.PbFieldType.OD)
    ..a<$core.double>(23, _omitFieldNames ? '' : 'plusMarginIndicator', $pb.PbFieldType.OD)
    ..a<$core.double>(24, _omitFieldNames ? '' : 'securityCollateralAmount', $pb.PbFieldType.OD)
    ..a<$core.double>(25, _omitFieldNames ? '' : 'orderMarginPremium', $pb.PbFieldType.OD)
    ..a<$core.double>(26, _omitFieldNames ? '' : 'collateralAmount', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Margin clone() => Margin()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Margin copyWith(void Function(Margin) updates) => super.copyWith((message) => updates(message as Margin)) as Margin;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Margin create() => Margin._();
  Margin createEmptyInstance() => create();
  static $pb.PbList<Margin> createRepeated() => $pb.PbList<Margin>();
  @$core.pragma('dart2js:noInline')
  static Margin getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Margin>(create);
  static Margin? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get status => $_getSZ(0);
  @$pb.TagNumber(1)
  set status($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get yesterdayBalance => $_getN(1);
  @$pb.TagNumber(2)
  set yesterdayBalance($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasYesterdayBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearYesterdayBalance() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get todayBalance => $_getN(2);
  @$pb.TagNumber(3)
  set todayBalance($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTodayBalance() => $_has(2);
  @$pb.TagNumber(3)
  void clearTodayBalance() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get depositWithdrawal => $_getN(3);
  @$pb.TagNumber(4)
  set depositWithdrawal($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDepositWithdrawal() => $_has(3);
  @$pb.TagNumber(4)
  void clearDepositWithdrawal() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get fee => $_getN(4);
  @$pb.TagNumber(5)
  set fee($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFee() => $_has(4);
  @$pb.TagNumber(5)
  void clearFee() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get tax => $_getN(5);
  @$pb.TagNumber(6)
  set tax($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTax() => $_has(5);
  @$pb.TagNumber(6)
  void clearTax() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get initialMargin => $_getN(6);
  @$pb.TagNumber(7)
  set initialMargin($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasInitialMargin() => $_has(6);
  @$pb.TagNumber(7)
  void clearInitialMargin() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get maintenanceMargin => $_getN(7);
  @$pb.TagNumber(8)
  set maintenanceMargin($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMaintenanceMargin() => $_has(7);
  @$pb.TagNumber(8)
  void clearMaintenanceMargin() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get marginCall => $_getN(8);
  @$pb.TagNumber(9)
  set marginCall($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMarginCall() => $_has(8);
  @$pb.TagNumber(9)
  void clearMarginCall() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get riskIndicator => $_getN(9);
  @$pb.TagNumber(10)
  set riskIndicator($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasRiskIndicator() => $_has(9);
  @$pb.TagNumber(10)
  void clearRiskIndicator() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get royaltyRevenueExpenditure => $_getN(10);
  @$pb.TagNumber(11)
  set royaltyRevenueExpenditure($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasRoyaltyRevenueExpenditure() => $_has(10);
  @$pb.TagNumber(11)
  void clearRoyaltyRevenueExpenditure() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get equity => $_getN(11);
  @$pb.TagNumber(12)
  set equity($core.double v) { $_setDouble(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasEquity() => $_has(11);
  @$pb.TagNumber(12)
  void clearEquity() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get equityAmount => $_getN(12);
  @$pb.TagNumber(13)
  set equityAmount($core.double v) { $_setDouble(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasEquityAmount() => $_has(12);
  @$pb.TagNumber(13)
  void clearEquityAmount() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get optionOpenbuyMarketValue => $_getN(13);
  @$pb.TagNumber(14)
  set optionOpenbuyMarketValue($core.double v) { $_setDouble(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasOptionOpenbuyMarketValue() => $_has(13);
  @$pb.TagNumber(14)
  void clearOptionOpenbuyMarketValue() => clearField(14);

  @$pb.TagNumber(15)
  $core.double get optionOpensellMarketValue => $_getN(14);
  @$pb.TagNumber(15)
  set optionOpensellMarketValue($core.double v) { $_setDouble(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasOptionOpensellMarketValue() => $_has(14);
  @$pb.TagNumber(15)
  void clearOptionOpensellMarketValue() => clearField(15);

  @$pb.TagNumber(16)
  $core.double get optionOpenPosition => $_getN(15);
  @$pb.TagNumber(16)
  set optionOpenPosition($core.double v) { $_setDouble(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasOptionOpenPosition() => $_has(15);
  @$pb.TagNumber(16)
  void clearOptionOpenPosition() => clearField(16);

  @$pb.TagNumber(17)
  $core.double get optionSettleProfitloss => $_getN(16);
  @$pb.TagNumber(17)
  set optionSettleProfitloss($core.double v) { $_setDouble(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasOptionSettleProfitloss() => $_has(16);
  @$pb.TagNumber(17)
  void clearOptionSettleProfitloss() => clearField(17);

  @$pb.TagNumber(18)
  $core.double get futureOpenPosition => $_getN(17);
  @$pb.TagNumber(18)
  set futureOpenPosition($core.double v) { $_setDouble(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasFutureOpenPosition() => $_has(17);
  @$pb.TagNumber(18)
  void clearFutureOpenPosition() => clearField(18);

  @$pb.TagNumber(19)
  $core.double get todayFutureOpenPosition => $_getN(18);
  @$pb.TagNumber(19)
  set todayFutureOpenPosition($core.double v) { $_setDouble(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasTodayFutureOpenPosition() => $_has(18);
  @$pb.TagNumber(19)
  void clearTodayFutureOpenPosition() => clearField(19);

  @$pb.TagNumber(20)
  $core.double get futureSettleProfitloss => $_getN(19);
  @$pb.TagNumber(20)
  set futureSettleProfitloss($core.double v) { $_setDouble(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasFutureSettleProfitloss() => $_has(19);
  @$pb.TagNumber(20)
  void clearFutureSettleProfitloss() => clearField(20);

  @$pb.TagNumber(21)
  $core.double get availableMargin => $_getN(20);
  @$pb.TagNumber(21)
  set availableMargin($core.double v) { $_setDouble(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasAvailableMargin() => $_has(20);
  @$pb.TagNumber(21)
  void clearAvailableMargin() => clearField(21);

  @$pb.TagNumber(22)
  $core.double get plusMargin => $_getN(21);
  @$pb.TagNumber(22)
  set plusMargin($core.double v) { $_setDouble(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasPlusMargin() => $_has(21);
  @$pb.TagNumber(22)
  void clearPlusMargin() => clearField(22);

  @$pb.TagNumber(23)
  $core.double get plusMarginIndicator => $_getN(22);
  @$pb.TagNumber(23)
  set plusMarginIndicator($core.double v) { $_setDouble(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasPlusMarginIndicator() => $_has(22);
  @$pb.TagNumber(23)
  void clearPlusMarginIndicator() => clearField(23);

  @$pb.TagNumber(24)
  $core.double get securityCollateralAmount => $_getN(23);
  @$pb.TagNumber(24)
  set securityCollateralAmount($core.double v) { $_setDouble(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasSecurityCollateralAmount() => $_has(23);
  @$pb.TagNumber(24)
  void clearSecurityCollateralAmount() => clearField(24);

  @$pb.TagNumber(25)
  $core.double get orderMarginPremium => $_getN(24);
  @$pb.TagNumber(25)
  set orderMarginPremium($core.double v) { $_setDouble(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasOrderMarginPremium() => $_has(24);
  @$pb.TagNumber(25)
  void clearOrderMarginPremium() => clearField(25);

  @$pb.TagNumber(26)
  $core.double get collateralAmount => $_getN(25);
  @$pb.TagNumber(26)
  set collateralAmount($core.double v) { $_setDouble(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasCollateralAmount() => $_has(25);
  @$pb.TagNumber(26)
  void clearCollateralAmount() => clearField(26);
}

/// status(FetchStatus): 資料回傳狀態
/// acc_balance(float): 餘額
/// date(str): 查詢日期
/// errmsg(str): 錯誤訊息
class AccountBalance extends $pb.GeneratedMessage {
  factory AccountBalance({
    $core.String? date,
    $core.double? balance,
  }) {
    final $result = create();
    if (date != null) {
      $result.date = date;
    }
    if (balance != null) {
      $result.balance = balance;
    }
    return $result;
  }
  AccountBalance._() : super();
  factory AccountBalance.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AccountBalance.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AccountBalance', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'date')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'balance', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AccountBalance clone() => AccountBalance()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AccountBalance copyWith(void Function(AccountBalance) updates) => super.copyWith((message) => updates(message as AccountBalance)) as AccountBalance;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AccountBalance create() => AccountBalance._();
  AccountBalance createEmptyInstance() => create();
  static $pb.PbList<AccountBalance> createRepeated() => $pb.PbList<AccountBalance>();
  @$core.pragma('dart2js:noInline')
  static AccountBalance getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AccountBalance>(create);
  static AccountBalance? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get date => $_getSZ(0);
  @$pb.TagNumber(1)
  set date($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get balance => $_getN(1);
  @$pb.TagNumber(2)
  set balance($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearBalance() => clearField(2);
}

/// date(datetime.date): 交割日期
/// amount(float): 交割金額
/// T(int): Tday
class Settlement extends $pb.GeneratedMessage {
  factory Settlement({
    $core.String? date,
    $core.double? amount,
  }) {
    final $result = create();
    if (date != null) {
      $result.date = date;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    return $result;
  }
  Settlement._() : super();
  factory Settlement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Settlement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Settlement', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'date')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Settlement clone() => Settlement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Settlement copyWith(void Function(Settlement) updates) => super.copyWith((message) => updates(message as Settlement)) as Settlement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Settlement create() => Settlement._();
  Settlement createEmptyInstance() => create();
  static $pb.PbList<Settlement> createRepeated() => $pb.PbList<Settlement>();
  @$core.pragma('dart2js:noInline')
  static Settlement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Settlement>(create);
  static Settlement? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get date => $_getSZ(0);
  @$pb.TagNumber(1)
  set date($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get amount => $_getN(1);
  @$pb.TagNumber(2)
  set amount($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
}

class SettlementList extends $pb.GeneratedMessage {
  factory SettlementList({
    $core.Iterable<Settlement>? settlement,
  }) {
    final $result = create();
    if (settlement != null) {
      $result.settlement.addAll(settlement);
    }
    return $result;
  }
  SettlementList._() : super();
  factory SettlementList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettlementList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SettlementList', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pc<Settlement>(1, _omitFieldNames ? '' : 'settlement', $pb.PbFieldType.PM, subBuilder: Settlement.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SettlementList clone() => SettlementList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SettlementList copyWith(void Function(SettlementList) updates) => super.copyWith((message) => updates(message as SettlementList)) as SettlementList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SettlementList create() => SettlementList._();
  SettlementList createEmptyInstance() => create();
  static $pb.PbList<SettlementList> createRepeated() => $pb.PbList<SettlementList>();
  @$core.pragma('dart2js:noInline')
  static SettlementList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettlementList>(create);
  static SettlementList? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Settlement> get settlement => $_getList(0);
}

class TradeInterfaceApi {
  $pb.RpcClient _client;
  TradeInterfaceApi(this._client);

  $async.Future<TradeResult> cancelOrder($pb.ClientContext? ctx, OrderID request) =>
    _client.invoke<TradeResult>(ctx, 'TradeInterface', 'CancelOrder', request, TradeResult())
  ;
  $async.Future<TradeResult> buyStock($pb.ClientContext? ctx, StockOrderDetail request) =>
    _client.invoke<TradeResult>(ctx, 'TradeInterface', 'BuyStock', request, TradeResult())
  ;
  $async.Future<TradeResult> sellStock($pb.ClientContext? ctx, StockOrderDetail request) =>
    _client.invoke<TradeResult>(ctx, 'TradeInterface', 'SellStock', request, TradeResult())
  ;
  $async.Future<TradeResult> buyOddStock($pb.ClientContext? ctx, OddStockOrderDetail request) =>
    _client.invoke<TradeResult>(ctx, 'TradeInterface', 'BuyOddStock', request, TradeResult())
  ;
  $async.Future<TradeResult> sellOddStock($pb.ClientContext? ctx, OddStockOrderDetail request) =>
    _client.invoke<TradeResult>(ctx, 'TradeInterface', 'SellOddStock', request, TradeResult())
  ;
  $async.Future<TradeResult> sellFirstStock($pb.ClientContext? ctx, StockOrderDetail request) =>
    _client.invoke<TradeResult>(ctx, 'TradeInterface', 'SellFirstStock', request, TradeResult())
  ;
  $async.Future<TradeResult> buyFuture($pb.ClientContext? ctx, FutureOrderDetail request) =>
    _client.invoke<TradeResult>(ctx, 'TradeInterface', 'BuyFuture', request, TradeResult())
  ;
  $async.Future<TradeResult> sellFuture($pb.ClientContext? ctx, FutureOrderDetail request) =>
    _client.invoke<TradeResult>(ctx, 'TradeInterface', 'SellFuture', request, TradeResult())
  ;
  $async.Future<TradeResult> sellFirstFuture($pb.ClientContext? ctx, FutureOrderDetail request) =>
    _client.invoke<TradeResult>(ctx, 'TradeInterface', 'SellFirstFuture', request, TradeResult())
  ;
  $async.Future<TradeResult> buyOption($pb.ClientContext? ctx, OptionOrderDetail request) =>
    _client.invoke<TradeResult>(ctx, 'TradeInterface', 'BuyOption', request, TradeResult())
  ;
  $async.Future<TradeResult> sellOption($pb.ClientContext? ctx, OptionOrderDetail request) =>
    _client.invoke<TradeResult>(ctx, 'TradeInterface', 'SellOption', request, TradeResult())
  ;
  $async.Future<TradeResult> sellFirstOption($pb.ClientContext? ctx, OptionOrderDetail request) =>
    _client.invoke<TradeResult>(ctx, 'TradeInterface', 'SellFirstOption', request, TradeResult())
  ;
  $async.Future<$1.Empty> getLocalOrderStatusArr($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<$1.Empty>(ctx, 'TradeInterface', 'GetLocalOrderStatusArr', request, $1.Empty())
  ;
  $async.Future<$1.Empty> getSimulateOrderStatusArr($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<$1.Empty>(ctx, 'TradeInterface', 'GetSimulateOrderStatusArr', request, $1.Empty())
  ;
  $async.Future<FuturePositionArr> getFuturePosition($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<FuturePositionArr>(ctx, 'TradeInterface', 'GetFuturePosition', request, FuturePositionArr())
  ;
  $async.Future<StockPositionArr> getStockPosition($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<StockPositionArr>(ctx, 'TradeInterface', 'GetStockPosition', request, StockPositionArr())
  ;
  $async.Future<SettlementList> getSettlement($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<SettlementList>(ctx, 'TradeInterface', 'GetSettlement', request, SettlementList())
  ;
  $async.Future<AccountBalance> getAccountBalance($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<AccountBalance>(ctx, 'TradeInterface', 'GetAccountBalance', request, AccountBalance())
  ;
  $async.Future<Margin> getMargin($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<Margin>(ctx, 'TradeInterface', 'GetMargin', request, Margin())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

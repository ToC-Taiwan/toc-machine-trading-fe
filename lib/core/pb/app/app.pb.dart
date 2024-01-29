//
//  Generated code. Do not modify.
//  source: app/app.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'app.pbenum.dart';

export 'app.pbenum.dart';

enum WSMessage_Data {
  futureTick, 
  futureOrder, 
  tradeIndex, 
  futurePosition, 
  assitStatus, 
  errMessage, 
  historyKbar, 
  futureDetail, 
  notSet
}

class WSMessage extends $pb.GeneratedMessage {
  factory WSMessage({
    WSType? type,
    WSFutureTick? futureTick,
    WSFutureOrder? futureOrder,
    WSTradeIndex? tradeIndex,
    WSFuturePosition? futurePosition,
    WSAssitStatus? assitStatus,
    WSErrMessage? errMessage,
    WSHistoryKbarMessage? historyKbar,
    WSFutureDetail? futureDetail,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (futureTick != null) {
      $result.futureTick = futureTick;
    }
    if (futureOrder != null) {
      $result.futureOrder = futureOrder;
    }
    if (tradeIndex != null) {
      $result.tradeIndex = tradeIndex;
    }
    if (futurePosition != null) {
      $result.futurePosition = futurePosition;
    }
    if (assitStatus != null) {
      $result.assitStatus = assitStatus;
    }
    if (errMessage != null) {
      $result.errMessage = errMessage;
    }
    if (historyKbar != null) {
      $result.historyKbar = historyKbar;
    }
    if (futureDetail != null) {
      $result.futureDetail = futureDetail;
    }
    return $result;
  }
  WSMessage._() : super();
  factory WSMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WSMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, WSMessage_Data> _WSMessage_DataByTag = {
    2 : WSMessage_Data.futureTick,
    3 : WSMessage_Data.futureOrder,
    5 : WSMessage_Data.tradeIndex,
    6 : WSMessage_Data.futurePosition,
    7 : WSMessage_Data.assitStatus,
    8 : WSMessage_Data.errMessage,
    9 : WSMessage_Data.historyKbar,
    10 : WSMessage_Data.futureDetail,
    0 : WSMessage_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WSMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..oo(0, [2, 3, 5, 6, 7, 8, 9, 10])
    ..e<WSType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: WSType.TYPE_FUTURE_TICK, valueOf: WSType.valueOf, enumValues: WSType.values)
    ..aOM<WSFutureTick>(2, _omitFieldNames ? '' : 'futureTick', subBuilder: WSFutureTick.create)
    ..aOM<WSFutureOrder>(3, _omitFieldNames ? '' : 'futureOrder', subBuilder: WSFutureOrder.create)
    ..aOM<WSTradeIndex>(5, _omitFieldNames ? '' : 'tradeIndex', subBuilder: WSTradeIndex.create)
    ..aOM<WSFuturePosition>(6, _omitFieldNames ? '' : 'futurePosition', subBuilder: WSFuturePosition.create)
    ..aOM<WSAssitStatus>(7, _omitFieldNames ? '' : 'assitStatus', subBuilder: WSAssitStatus.create)
    ..aOM<WSErrMessage>(8, _omitFieldNames ? '' : 'errMessage', subBuilder: WSErrMessage.create)
    ..aOM<WSHistoryKbarMessage>(9, _omitFieldNames ? '' : 'historyKbar', subBuilder: WSHistoryKbarMessage.create)
    ..aOM<WSFutureDetail>(10, _omitFieldNames ? '' : 'futureDetail', subBuilder: WSFutureDetail.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WSMessage clone() => WSMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WSMessage copyWith(void Function(WSMessage) updates) => super.copyWith((message) => updates(message as WSMessage)) as WSMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WSMessage create() => WSMessage._();
  WSMessage createEmptyInstance() => create();
  static $pb.PbList<WSMessage> createRepeated() => $pb.PbList<WSMessage>();
  @$core.pragma('dart2js:noInline')
  static WSMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WSMessage>(create);
  static WSMessage? _defaultInstance;

  WSMessage_Data whichData() => _WSMessage_DataByTag[$_whichOneof(0)]!;
  void clearData() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  WSType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(WSType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  WSFutureTick get futureTick => $_getN(1);
  @$pb.TagNumber(2)
  set futureTick(WSFutureTick v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFutureTick() => $_has(1);
  @$pb.TagNumber(2)
  void clearFutureTick() => clearField(2);
  @$pb.TagNumber(2)
  WSFutureTick ensureFutureTick() => $_ensure(1);

  @$pb.TagNumber(3)
  WSFutureOrder get futureOrder => $_getN(2);
  @$pb.TagNumber(3)
  set futureOrder(WSFutureOrder v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFutureOrder() => $_has(2);
  @$pb.TagNumber(3)
  void clearFutureOrder() => clearField(3);
  @$pb.TagNumber(3)
  WSFutureOrder ensureFutureOrder() => $_ensure(2);

  @$pb.TagNumber(5)
  WSTradeIndex get tradeIndex => $_getN(3);
  @$pb.TagNumber(5)
  set tradeIndex(WSTradeIndex v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTradeIndex() => $_has(3);
  @$pb.TagNumber(5)
  void clearTradeIndex() => clearField(5);
  @$pb.TagNumber(5)
  WSTradeIndex ensureTradeIndex() => $_ensure(3);

  @$pb.TagNumber(6)
  WSFuturePosition get futurePosition => $_getN(4);
  @$pb.TagNumber(6)
  set futurePosition(WSFuturePosition v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasFuturePosition() => $_has(4);
  @$pb.TagNumber(6)
  void clearFuturePosition() => clearField(6);
  @$pb.TagNumber(6)
  WSFuturePosition ensureFuturePosition() => $_ensure(4);

  @$pb.TagNumber(7)
  WSAssitStatus get assitStatus => $_getN(5);
  @$pb.TagNumber(7)
  set assitStatus(WSAssitStatus v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasAssitStatus() => $_has(5);
  @$pb.TagNumber(7)
  void clearAssitStatus() => clearField(7);
  @$pb.TagNumber(7)
  WSAssitStatus ensureAssitStatus() => $_ensure(5);

  @$pb.TagNumber(8)
  WSErrMessage get errMessage => $_getN(6);
  @$pb.TagNumber(8)
  set errMessage(WSErrMessage v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasErrMessage() => $_has(6);
  @$pb.TagNumber(8)
  void clearErrMessage() => clearField(8);
  @$pb.TagNumber(8)
  WSErrMessage ensureErrMessage() => $_ensure(6);

  @$pb.TagNumber(9)
  WSHistoryKbarMessage get historyKbar => $_getN(7);
  @$pb.TagNumber(9)
  set historyKbar(WSHistoryKbarMessage v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasHistoryKbar() => $_has(7);
  @$pb.TagNumber(9)
  void clearHistoryKbar() => clearField(9);
  @$pb.TagNumber(9)
  WSHistoryKbarMessage ensureHistoryKbar() => $_ensure(7);

  @$pb.TagNumber(10)
  WSFutureDetail get futureDetail => $_getN(8);
  @$pb.TagNumber(10)
  set futureDetail(WSFutureDetail v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasFutureDetail() => $_has(8);
  @$pb.TagNumber(10)
  void clearFutureDetail() => clearField(10);
  @$pb.TagNumber(10)
  WSFutureDetail ensureFutureDetail() => $_ensure(8);
}

class WSFutureDetail extends $pb.GeneratedMessage {
  factory WSFutureDetail({
    $core.String? code,
    $core.String? symbol,
    $core.String? name,
    $core.String? category,
    $core.String? deliveryMonth,
    $core.String? deliveryDate,
    $core.String? underlyingKind,
    $fixnum.Int64? unit,
    $core.double? limitUp,
    $core.double? limitDown,
    $core.double? reference,
    $core.String? updateDate,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (symbol != null) {
      $result.symbol = symbol;
    }
    if (name != null) {
      $result.name = name;
    }
    if (category != null) {
      $result.category = category;
    }
    if (deliveryMonth != null) {
      $result.deliveryMonth = deliveryMonth;
    }
    if (deliveryDate != null) {
      $result.deliveryDate = deliveryDate;
    }
    if (underlyingKind != null) {
      $result.underlyingKind = underlyingKind;
    }
    if (unit != null) {
      $result.unit = unit;
    }
    if (limitUp != null) {
      $result.limitUp = limitUp;
    }
    if (limitDown != null) {
      $result.limitDown = limitDown;
    }
    if (reference != null) {
      $result.reference = reference;
    }
    if (updateDate != null) {
      $result.updateDate = updateDate;
    }
    return $result;
  }
  WSFutureDetail._() : super();
  factory WSFutureDetail.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WSFutureDetail.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WSFutureDetail', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'symbol')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'category')
    ..aOS(5, _omitFieldNames ? '' : 'deliveryMonth')
    ..aOS(6, _omitFieldNames ? '' : 'deliveryDate')
    ..aOS(7, _omitFieldNames ? '' : 'underlyingKind')
    ..aInt64(8, _omitFieldNames ? '' : 'unit')
    ..a<$core.double>(9, _omitFieldNames ? '' : 'limitUp', $pb.PbFieldType.OD)
    ..a<$core.double>(10, _omitFieldNames ? '' : 'limitDown', $pb.PbFieldType.OD)
    ..a<$core.double>(11, _omitFieldNames ? '' : 'reference', $pb.PbFieldType.OD)
    ..aOS(12, _omitFieldNames ? '' : 'updateDate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WSFutureDetail clone() => WSFutureDetail()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WSFutureDetail copyWith(void Function(WSFutureDetail) updates) => super.copyWith((message) => updates(message as WSFutureDetail)) as WSFutureDetail;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WSFutureDetail create() => WSFutureDetail._();
  WSFutureDetail createEmptyInstance() => create();
  static $pb.PbList<WSFutureDetail> createRepeated() => $pb.PbList<WSFutureDetail>();
  @$core.pragma('dart2js:noInline')
  static WSFutureDetail getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WSFutureDetail>(create);
  static WSFutureDetail? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get symbol => $_getSZ(1);
  @$pb.TagNumber(2)
  set symbol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSymbol() => $_has(1);
  @$pb.TagNumber(2)
  void clearSymbol() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get category => $_getSZ(3);
  @$pb.TagNumber(4)
  set category($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCategory() => $_has(3);
  @$pb.TagNumber(4)
  void clearCategory() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get deliveryMonth => $_getSZ(4);
  @$pb.TagNumber(5)
  set deliveryMonth($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDeliveryMonth() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeliveryMonth() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get deliveryDate => $_getSZ(5);
  @$pb.TagNumber(6)
  set deliveryDate($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDeliveryDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearDeliveryDate() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get underlyingKind => $_getSZ(6);
  @$pb.TagNumber(7)
  set underlyingKind($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasUnderlyingKind() => $_has(6);
  @$pb.TagNumber(7)
  void clearUnderlyingKind() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get unit => $_getI64(7);
  @$pb.TagNumber(8)
  set unit($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasUnit() => $_has(7);
  @$pb.TagNumber(8)
  void clearUnit() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get limitUp => $_getN(8);
  @$pb.TagNumber(9)
  set limitUp($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasLimitUp() => $_has(8);
  @$pb.TagNumber(9)
  void clearLimitUp() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get limitDown => $_getN(9);
  @$pb.TagNumber(10)
  set limitDown($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLimitDown() => $_has(9);
  @$pb.TagNumber(10)
  void clearLimitDown() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get reference => $_getN(10);
  @$pb.TagNumber(11)
  set reference($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasReference() => $_has(10);
  @$pb.TagNumber(11)
  void clearReference() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get updateDate => $_getSZ(11);
  @$pb.TagNumber(12)
  set updateDate($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasUpdateDate() => $_has(11);
  @$pb.TagNumber(12)
  void clearUpdateDate() => clearField(12);
}

class WSErrMessage extends $pb.GeneratedMessage {
  factory WSErrMessage({
    $fixnum.Int64? errCode,
    $core.String? response,
  }) {
    final $result = create();
    if (errCode != null) {
      $result.errCode = errCode;
    }
    if (response != null) {
      $result.response = response;
    }
    return $result;
  }
  WSErrMessage._() : super();
  factory WSErrMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WSErrMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WSErrMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'errCode')
    ..aOS(2, _omitFieldNames ? '' : 'response')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WSErrMessage clone() => WSErrMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WSErrMessage copyWith(void Function(WSErrMessage) updates) => super.copyWith((message) => updates(message as WSErrMessage)) as WSErrMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WSErrMessage create() => WSErrMessage._();
  WSErrMessage createEmptyInstance() => create();
  static $pb.PbList<WSErrMessage> createRepeated() => $pb.PbList<WSErrMessage>();
  @$core.pragma('dart2js:noInline')
  static WSErrMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WSErrMessage>(create);
  static WSErrMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get errCode => $_getI64(0);
  @$pb.TagNumber(1)
  set errCode($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErrCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearErrCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get response => $_getSZ(1);
  @$pb.TagNumber(2)
  set response($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponse() => clearField(2);
}

class WSFutureOrder extends $pb.GeneratedMessage {
  factory WSFutureOrder({
    $core.String? code,
    WSOrder? baseOrder,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (baseOrder != null) {
      $result.baseOrder = baseOrder;
    }
    return $result;
  }
  WSFutureOrder._() : super();
  factory WSFutureOrder.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WSFutureOrder.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WSFutureOrder', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOM<WSOrder>(2, _omitFieldNames ? '' : 'baseOrder', subBuilder: WSOrder.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WSFutureOrder clone() => WSFutureOrder()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WSFutureOrder copyWith(void Function(WSFutureOrder) updates) => super.copyWith((message) => updates(message as WSFutureOrder)) as WSFutureOrder;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WSFutureOrder create() => WSFutureOrder._();
  WSFutureOrder createEmptyInstance() => create();
  static $pb.PbList<WSFutureOrder> createRepeated() => $pb.PbList<WSFutureOrder>();
  @$core.pragma('dart2js:noInline')
  static WSFutureOrder getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WSFutureOrder>(create);
  static WSFutureOrder? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  WSOrder get baseOrder => $_getN(1);
  @$pb.TagNumber(2)
  set baseOrder(WSOrder v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBaseOrder() => $_has(1);
  @$pb.TagNumber(2)
  void clearBaseOrder() => clearField(2);
  @$pb.TagNumber(2)
  WSOrder ensureBaseOrder() => $_ensure(1);
}

class WSOrder extends $pb.GeneratedMessage {
  factory WSOrder({
    $core.String? orderId,
    $fixnum.Int64? status,
    $core.String? orderTime,
    $fixnum.Int64? action,
    $core.double? price,
    $fixnum.Int64? quantity,
  }) {
    final $result = create();
    if (orderId != null) {
      $result.orderId = orderId;
    }
    if (status != null) {
      $result.status = status;
    }
    if (orderTime != null) {
      $result.orderTime = orderTime;
    }
    if (action != null) {
      $result.action = action;
    }
    if (price != null) {
      $result.price = price;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    return $result;
  }
  WSOrder._() : super();
  factory WSOrder.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WSOrder.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WSOrder', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'orderId')
    ..aInt64(2, _omitFieldNames ? '' : 'status')
    ..aOS(3, _omitFieldNames ? '' : 'orderTime')
    ..aInt64(4, _omitFieldNames ? '' : 'action')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..aInt64(6, _omitFieldNames ? '' : 'quantity')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WSOrder clone() => WSOrder()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WSOrder copyWith(void Function(WSOrder) updates) => super.copyWith((message) => updates(message as WSOrder)) as WSOrder;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WSOrder create() => WSOrder._();
  WSOrder createEmptyInstance() => create();
  static $pb.PbList<WSOrder> createRepeated() => $pb.PbList<WSOrder>();
  @$core.pragma('dart2js:noInline')
  static WSOrder getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WSOrder>(create);
  static WSOrder? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get orderId => $_getSZ(0);
  @$pb.TagNumber(1)
  set orderId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOrderId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOrderId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get status => $_getI64(1);
  @$pb.TagNumber(2)
  set status($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get orderTime => $_getSZ(2);
  @$pb.TagNumber(3)
  set orderTime($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrderTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrderTime() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get action => $_getI64(3);
  @$pb.TagNumber(4)
  set action($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAction() => $_has(3);
  @$pb.TagNumber(4)
  void clearAction() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get price => $_getN(4);
  @$pb.TagNumber(5)
  set price($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPrice() => $_has(4);
  @$pb.TagNumber(5)
  void clearPrice() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get quantity => $_getI64(5);
  @$pb.TagNumber(6)
  set quantity($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasQuantity() => $_has(5);
  @$pb.TagNumber(6)
  void clearQuantity() => clearField(6);
}

class WSFutureTick extends $pb.GeneratedMessage {
  factory WSFutureTick({
    $core.String? code,
    $core.String? tickTime,
    $core.double? open,
    $core.double? underlyingPrice,
    $fixnum.Int64? bidSideTotalVol,
    $fixnum.Int64? askSideTotalVol,
    $core.double? avgPrice,
    $core.double? close,
    $core.double? high,
    $core.double? low,
    $core.double? amount,
    $core.double? totalAmount,
    $fixnum.Int64? volume,
    $fixnum.Int64? totalVolume,
    $fixnum.Int64? tickType,
    $fixnum.Int64? chgType,
    $core.double? priceChg,
    $core.double? pctChg,
    $fixnum.Int64? comboCount,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (tickTime != null) {
      $result.tickTime = tickTime;
    }
    if (open != null) {
      $result.open = open;
    }
    if (underlyingPrice != null) {
      $result.underlyingPrice = underlyingPrice;
    }
    if (bidSideTotalVol != null) {
      $result.bidSideTotalVol = bidSideTotalVol;
    }
    if (askSideTotalVol != null) {
      $result.askSideTotalVol = askSideTotalVol;
    }
    if (avgPrice != null) {
      $result.avgPrice = avgPrice;
    }
    if (close != null) {
      $result.close = close;
    }
    if (high != null) {
      $result.high = high;
    }
    if (low != null) {
      $result.low = low;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (totalAmount != null) {
      $result.totalAmount = totalAmount;
    }
    if (volume != null) {
      $result.volume = volume;
    }
    if (totalVolume != null) {
      $result.totalVolume = totalVolume;
    }
    if (tickType != null) {
      $result.tickType = tickType;
    }
    if (chgType != null) {
      $result.chgType = chgType;
    }
    if (priceChg != null) {
      $result.priceChg = priceChg;
    }
    if (pctChg != null) {
      $result.pctChg = pctChg;
    }
    if (comboCount != null) {
      $result.comboCount = comboCount;
    }
    return $result;
  }
  WSFutureTick._() : super();
  factory WSFutureTick.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WSFutureTick.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WSFutureTick', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'tickTime')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'open', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'underlyingPrice', $pb.PbFieldType.OD)
    ..aInt64(5, _omitFieldNames ? '' : 'bidSideTotalVol')
    ..aInt64(6, _omitFieldNames ? '' : 'askSideTotalVol')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'avgPrice', $pb.PbFieldType.OD)
    ..a<$core.double>(8, _omitFieldNames ? '' : 'close', $pb.PbFieldType.OD)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'high', $pb.PbFieldType.OD)
    ..a<$core.double>(10, _omitFieldNames ? '' : 'low', $pb.PbFieldType.OD)
    ..a<$core.double>(11, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OD)
    ..a<$core.double>(12, _omitFieldNames ? '' : 'totalAmount', $pb.PbFieldType.OD)
    ..aInt64(13, _omitFieldNames ? '' : 'volume')
    ..aInt64(14, _omitFieldNames ? '' : 'totalVolume')
    ..aInt64(15, _omitFieldNames ? '' : 'tickType')
    ..aInt64(16, _omitFieldNames ? '' : 'chgType')
    ..a<$core.double>(17, _omitFieldNames ? '' : 'priceChg', $pb.PbFieldType.OD)
    ..a<$core.double>(18, _omitFieldNames ? '' : 'pctChg', $pb.PbFieldType.OD)
    ..aInt64(19, _omitFieldNames ? '' : 'comboCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WSFutureTick clone() => WSFutureTick()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WSFutureTick copyWith(void Function(WSFutureTick) updates) => super.copyWith((message) => updates(message as WSFutureTick)) as WSFutureTick;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WSFutureTick create() => WSFutureTick._();
  WSFutureTick createEmptyInstance() => create();
  static $pb.PbList<WSFutureTick> createRepeated() => $pb.PbList<WSFutureTick>();
  @$core.pragma('dart2js:noInline')
  static WSFutureTick getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WSFutureTick>(create);
  static WSFutureTick? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get tickTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set tickTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTickTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearTickTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get open => $_getN(2);
  @$pb.TagNumber(3)
  set open($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOpen() => $_has(2);
  @$pb.TagNumber(3)
  void clearOpen() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get underlyingPrice => $_getN(3);
  @$pb.TagNumber(4)
  set underlyingPrice($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUnderlyingPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnderlyingPrice() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get bidSideTotalVol => $_getI64(4);
  @$pb.TagNumber(5)
  set bidSideTotalVol($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBidSideTotalVol() => $_has(4);
  @$pb.TagNumber(5)
  void clearBidSideTotalVol() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get askSideTotalVol => $_getI64(5);
  @$pb.TagNumber(6)
  set askSideTotalVol($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAskSideTotalVol() => $_has(5);
  @$pb.TagNumber(6)
  void clearAskSideTotalVol() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get avgPrice => $_getN(6);
  @$pb.TagNumber(7)
  set avgPrice($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAvgPrice() => $_has(6);
  @$pb.TagNumber(7)
  void clearAvgPrice() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get close => $_getN(7);
  @$pb.TagNumber(8)
  set close($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasClose() => $_has(7);
  @$pb.TagNumber(8)
  void clearClose() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get high => $_getN(8);
  @$pb.TagNumber(9)
  set high($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasHigh() => $_has(8);
  @$pb.TagNumber(9)
  void clearHigh() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get low => $_getN(9);
  @$pb.TagNumber(10)
  set low($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLow() => $_has(9);
  @$pb.TagNumber(10)
  void clearLow() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get amount => $_getN(10);
  @$pb.TagNumber(11)
  set amount($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasAmount() => $_has(10);
  @$pb.TagNumber(11)
  void clearAmount() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get totalAmount => $_getN(11);
  @$pb.TagNumber(12)
  set totalAmount($core.double v) { $_setDouble(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTotalAmount() => $_has(11);
  @$pb.TagNumber(12)
  void clearTotalAmount() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get volume => $_getI64(12);
  @$pb.TagNumber(13)
  set volume($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasVolume() => $_has(12);
  @$pb.TagNumber(13)
  void clearVolume() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get totalVolume => $_getI64(13);
  @$pb.TagNumber(14)
  set totalVolume($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasTotalVolume() => $_has(13);
  @$pb.TagNumber(14)
  void clearTotalVolume() => clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get tickType => $_getI64(14);
  @$pb.TagNumber(15)
  set tickType($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasTickType() => $_has(14);
  @$pb.TagNumber(15)
  void clearTickType() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get chgType => $_getI64(15);
  @$pb.TagNumber(16)
  set chgType($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasChgType() => $_has(15);
  @$pb.TagNumber(16)
  void clearChgType() => clearField(16);

  @$pb.TagNumber(17)
  $core.double get priceChg => $_getN(16);
  @$pb.TagNumber(17)
  set priceChg($core.double v) { $_setDouble(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasPriceChg() => $_has(16);
  @$pb.TagNumber(17)
  void clearPriceChg() => clearField(17);

  @$pb.TagNumber(18)
  $core.double get pctChg => $_getN(17);
  @$pb.TagNumber(18)
  set pctChg($core.double v) { $_setDouble(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasPctChg() => $_has(17);
  @$pb.TagNumber(18)
  void clearPctChg() => clearField(18);

  @$pb.TagNumber(19)
  $fixnum.Int64 get comboCount => $_getI64(18);
  @$pb.TagNumber(19)
  set comboCount($fixnum.Int64 v) { $_setInt64(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasComboCount() => $_has(18);
  @$pb.TagNumber(19)
  void clearComboCount() => clearField(19);
}

class WSTradeIndex extends $pb.GeneratedMessage {
  factory WSTradeIndex({
    WSIndexStatus? tse,
    WSIndexStatus? otc,
    WSIndexStatus? nasdaq,
    WSIndexStatus? nf,
  }) {
    final $result = create();
    if (tse != null) {
      $result.tse = tse;
    }
    if (otc != null) {
      $result.otc = otc;
    }
    if (nasdaq != null) {
      $result.nasdaq = nasdaq;
    }
    if (nf != null) {
      $result.nf = nf;
    }
    return $result;
  }
  WSTradeIndex._() : super();
  factory WSTradeIndex.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WSTradeIndex.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WSTradeIndex', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..aOM<WSIndexStatus>(1, _omitFieldNames ? '' : 'tse', subBuilder: WSIndexStatus.create)
    ..aOM<WSIndexStatus>(2, _omitFieldNames ? '' : 'otc', subBuilder: WSIndexStatus.create)
    ..aOM<WSIndexStatus>(3, _omitFieldNames ? '' : 'nasdaq', subBuilder: WSIndexStatus.create)
    ..aOM<WSIndexStatus>(4, _omitFieldNames ? '' : 'nf', subBuilder: WSIndexStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WSTradeIndex clone() => WSTradeIndex()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WSTradeIndex copyWith(void Function(WSTradeIndex) updates) => super.copyWith((message) => updates(message as WSTradeIndex)) as WSTradeIndex;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WSTradeIndex create() => WSTradeIndex._();
  WSTradeIndex createEmptyInstance() => create();
  static $pb.PbList<WSTradeIndex> createRepeated() => $pb.PbList<WSTradeIndex>();
  @$core.pragma('dart2js:noInline')
  static WSTradeIndex getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WSTradeIndex>(create);
  static WSTradeIndex? _defaultInstance;

  @$pb.TagNumber(1)
  WSIndexStatus get tse => $_getN(0);
  @$pb.TagNumber(1)
  set tse(WSIndexStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTse() => $_has(0);
  @$pb.TagNumber(1)
  void clearTse() => clearField(1);
  @$pb.TagNumber(1)
  WSIndexStatus ensureTse() => $_ensure(0);

  @$pb.TagNumber(2)
  WSIndexStatus get otc => $_getN(1);
  @$pb.TagNumber(2)
  set otc(WSIndexStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOtc() => $_has(1);
  @$pb.TagNumber(2)
  void clearOtc() => clearField(2);
  @$pb.TagNumber(2)
  WSIndexStatus ensureOtc() => $_ensure(1);

  @$pb.TagNumber(3)
  WSIndexStatus get nasdaq => $_getN(2);
  @$pb.TagNumber(3)
  set nasdaq(WSIndexStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNasdaq() => $_has(2);
  @$pb.TagNumber(3)
  void clearNasdaq() => clearField(3);
  @$pb.TagNumber(3)
  WSIndexStatus ensureNasdaq() => $_ensure(2);

  @$pb.TagNumber(4)
  WSIndexStatus get nf => $_getN(3);
  @$pb.TagNumber(4)
  set nf(WSIndexStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasNf() => $_has(3);
  @$pb.TagNumber(4)
  void clearNf() => clearField(4);
  @$pb.TagNumber(4)
  WSIndexStatus ensureNf() => $_ensure(3);
}

class WSIndexStatus extends $pb.GeneratedMessage {
  factory WSIndexStatus({
    $fixnum.Int64? breakCount,
    $core.double? priceChg,
  }) {
    final $result = create();
    if (breakCount != null) {
      $result.breakCount = breakCount;
    }
    if (priceChg != null) {
      $result.priceChg = priceChg;
    }
    return $result;
  }
  WSIndexStatus._() : super();
  factory WSIndexStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WSIndexStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WSIndexStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'breakCount')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'priceChg', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WSIndexStatus clone() => WSIndexStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WSIndexStatus copyWith(void Function(WSIndexStatus) updates) => super.copyWith((message) => updates(message as WSIndexStatus)) as WSIndexStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WSIndexStatus create() => WSIndexStatus._();
  WSIndexStatus createEmptyInstance() => create();
  static $pb.PbList<WSIndexStatus> createRepeated() => $pb.PbList<WSIndexStatus>();
  @$core.pragma('dart2js:noInline')
  static WSIndexStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WSIndexStatus>(create);
  static WSIndexStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get breakCount => $_getI64(0);
  @$pb.TagNumber(1)
  set breakCount($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBreakCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearBreakCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get priceChg => $_getN(1);
  @$pb.TagNumber(2)
  set priceChg($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPriceChg() => $_has(1);
  @$pb.TagNumber(2)
  void clearPriceChg() => clearField(2);
}

class WSFuturePosition extends $pb.GeneratedMessage {
  factory WSFuturePosition({
    $core.Iterable<Position>? position,
  }) {
    final $result = create();
    if (position != null) {
      $result.position.addAll(position);
    }
    return $result;
  }
  WSFuturePosition._() : super();
  factory WSFuturePosition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WSFuturePosition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WSFuturePosition', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..pc<Position>(1, _omitFieldNames ? '' : 'position', $pb.PbFieldType.PM, subBuilder: Position.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WSFuturePosition clone() => WSFuturePosition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WSFuturePosition copyWith(void Function(WSFuturePosition) updates) => super.copyWith((message) => updates(message as WSFuturePosition)) as WSFuturePosition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WSFuturePosition create() => WSFuturePosition._();
  WSFuturePosition createEmptyInstance() => create();
  static $pb.PbList<WSFuturePosition> createRepeated() => $pb.PbList<WSFuturePosition>();
  @$core.pragma('dart2js:noInline')
  static WSFuturePosition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WSFuturePosition>(create);
  static WSFuturePosition? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Position> get position => $_getList(0);
}

class Position extends $pb.GeneratedMessage {
  factory Position({
    $core.String? code,
    $core.String? direction,
    $fixnum.Int64? quantity,
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
  Position._() : super();
  factory Position.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Position.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Position', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'direction')
    ..aInt64(3, _omitFieldNames ? '' : 'quantity')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'lastPrice', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'pnl', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Position clone() => Position()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Position copyWith(void Function(Position) updates) => super.copyWith((message) => updates(message as Position)) as Position;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Position create() => Position._();
  Position createEmptyInstance() => create();
  static $pb.PbList<Position> createRepeated() => $pb.PbList<Position>();
  @$core.pragma('dart2js:noInline')
  static Position getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Position>(create);
  static Position? _defaultInstance;

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
  $fixnum.Int64 get quantity => $_getI64(2);
  @$pb.TagNumber(3)
  set quantity($fixnum.Int64 v) { $_setInt64(2, v); }
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

class WSAssitStatus extends $pb.GeneratedMessage {
  factory WSAssitStatus({
    $core.bool? running,
  }) {
    final $result = create();
    if (running != null) {
      $result.running = running;
    }
    return $result;
  }
  WSAssitStatus._() : super();
  factory WSAssitStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WSAssitStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WSAssitStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'running')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WSAssitStatus clone() => WSAssitStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WSAssitStatus copyWith(void Function(WSAssitStatus) updates) => super.copyWith((message) => updates(message as WSAssitStatus)) as WSAssitStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WSAssitStatus create() => WSAssitStatus._();
  WSAssitStatus createEmptyInstance() => create();
  static $pb.PbList<WSAssitStatus> createRepeated() => $pb.PbList<WSAssitStatus>();
  @$core.pragma('dart2js:noInline')
  static WSAssitStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WSAssitStatus>(create);
  static WSAssitStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get running => $_getBF(0);
  @$pb.TagNumber(1)
  set running($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRunning() => $_has(0);
  @$pb.TagNumber(1)
  void clearRunning() => clearField(1);
}

class WSHistoryKbarMessage extends $pb.GeneratedMessage {
  factory WSHistoryKbarMessage({
    $core.Iterable<Kbar>? arr,
  }) {
    final $result = create();
    if (arr != null) {
      $result.arr.addAll(arr);
    }
    return $result;
  }
  WSHistoryKbarMessage._() : super();
  factory WSHistoryKbarMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WSHistoryKbarMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WSHistoryKbarMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..pc<Kbar>(1, _omitFieldNames ? '' : 'arr', $pb.PbFieldType.PM, subBuilder: Kbar.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WSHistoryKbarMessage clone() => WSHistoryKbarMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WSHistoryKbarMessage copyWith(void Function(WSHistoryKbarMessage) updates) => super.copyWith((message) => updates(message as WSHistoryKbarMessage)) as WSHistoryKbarMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WSHistoryKbarMessage create() => WSHistoryKbarMessage._();
  WSHistoryKbarMessage createEmptyInstance() => create();
  static $pb.PbList<WSHistoryKbarMessage> createRepeated() => $pb.PbList<WSHistoryKbarMessage>();
  @$core.pragma('dart2js:noInline')
  static WSHistoryKbarMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WSHistoryKbarMessage>(create);
  static WSHistoryKbarMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Kbar> get arr => $_getList(0);
}

class Kbar extends $pb.GeneratedMessage {
  factory Kbar({
    $core.String? kbarTime,
    $core.double? open,
    $core.double? high,
    $core.double? close,
    $core.double? low,
    $fixnum.Int64? volume,
  }) {
    final $result = create();
    if (kbarTime != null) {
      $result.kbarTime = kbarTime;
    }
    if (open != null) {
      $result.open = open;
    }
    if (high != null) {
      $result.high = high;
    }
    if (close != null) {
      $result.close = close;
    }
    if (low != null) {
      $result.low = low;
    }
    if (volume != null) {
      $result.volume = volume;
    }
    return $result;
  }
  Kbar._() : super();
  factory Kbar.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Kbar.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Kbar', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kbarTime')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'open', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'high', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'close', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'low', $pb.PbFieldType.OD)
    ..aInt64(6, _omitFieldNames ? '' : 'volume')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Kbar clone() => Kbar()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Kbar copyWith(void Function(Kbar) updates) => super.copyWith((message) => updates(message as Kbar)) as Kbar;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Kbar create() => Kbar._();
  Kbar createEmptyInstance() => create();
  static $pb.PbList<Kbar> createRepeated() => $pb.PbList<Kbar>();
  @$core.pragma('dart2js:noInline')
  static Kbar getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Kbar>(create);
  static Kbar? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get kbarTime => $_getSZ(0);
  @$pb.TagNumber(1)
  set kbarTime($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKbarTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearKbarTime() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get open => $_getN(1);
  @$pb.TagNumber(2)
  set open($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOpen() => $_has(1);
  @$pb.TagNumber(2)
  void clearOpen() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get high => $_getN(2);
  @$pb.TagNumber(3)
  set high($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHigh() => $_has(2);
  @$pb.TagNumber(3)
  void clearHigh() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get close => $_getN(3);
  @$pb.TagNumber(4)
  set close($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasClose() => $_has(3);
  @$pb.TagNumber(4)
  void clearClose() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get low => $_getN(4);
  @$pb.TagNumber(5)
  set low($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLow() => $_has(4);
  @$pb.TagNumber(5)
  void clearLow() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get volume => $_getI64(5);
  @$pb.TagNumber(6)
  set volume($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasVolume() => $_has(5);
  @$pb.TagNumber(6)
  void clearVolume() => clearField(6);
}

class PickRealMap extends $pb.GeneratedMessage {
  factory PickRealMap({
    $core.Map<$core.String, PickListType>? pickMap,
  }) {
    final $result = create();
    if (pickMap != null) {
      $result.pickMap.addAll(pickMap);
    }
    return $result;
  }
  PickRealMap._() : super();
  factory PickRealMap.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PickRealMap.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PickRealMap', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..m<$core.String, PickListType>(1, _omitFieldNames ? '' : 'pickMap', entryClassName: 'PickRealMap.PickMapEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OE, valueOf: PickListType.valueOf, enumValues: PickListType.values, valueDefaultOrMaker: PickListType.TYPE_ADD, defaultEnumValue: PickListType.TYPE_ADD, packageName: const $pb.PackageName('app'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PickRealMap clone() => PickRealMap()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PickRealMap copyWith(void Function(PickRealMap) updates) => super.copyWith((message) => updates(message as PickRealMap)) as PickRealMap;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PickRealMap create() => PickRealMap._();
  PickRealMap createEmptyInstance() => create();
  static $pb.PbList<PickRealMap> createRepeated() => $pb.PbList<PickRealMap>();
  @$core.pragma('dart2js:noInline')
  static PickRealMap getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PickRealMap>(create);
  static PickRealMap? _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, PickListType> get pickMap => $_getMap(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

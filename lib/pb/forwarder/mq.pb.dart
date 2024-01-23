//
//  Generated code. Do not modify.
//  source: forwarder/mq.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'mq.pbenum.dart';

export 'mq.pbenum.dart';

class EventMessage extends $pb.GeneratedMessage {
  factory EventMessage({
    $fixnum.Int64? respCode,
    $fixnum.Int64? eventCode,
    $core.String? info,
    $core.String? event,
    $core.String? eventTime,
  }) {
    final $result = create();
    if (respCode != null) {
      $result.respCode = respCode;
    }
    if (eventCode != null) {
      $result.eventCode = eventCode;
    }
    if (info != null) {
      $result.info = info;
    }
    if (event != null) {
      $result.event = event;
    }
    if (eventTime != null) {
      $result.eventTime = eventTime;
    }
    return $result;
  }
  EventMessage._() : super();
  factory EventMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EventMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EventMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'respCode')
    ..aInt64(2, _omitFieldNames ? '' : 'eventCode')
    ..aOS(3, _omitFieldNames ? '' : 'info')
    ..aOS(4, _omitFieldNames ? '' : 'event')
    ..aOS(5, _omitFieldNames ? '' : 'eventTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EventMessage clone() => EventMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EventMessage copyWith(void Function(EventMessage) updates) => super.copyWith((message) => updates(message as EventMessage)) as EventMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventMessage create() => EventMessage._();
  EventMessage createEmptyInstance() => create();
  static $pb.PbList<EventMessage> createRepeated() => $pb.PbList<EventMessage>();
  @$core.pragma('dart2js:noInline')
  static EventMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EventMessage>(create);
  static EventMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get respCode => $_getI64(0);
  @$pb.TagNumber(1)
  set respCode($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRespCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearRespCode() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get eventCode => $_getI64(1);
  @$pb.TagNumber(2)
  set eventCode($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEventCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearEventCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get info => $_getSZ(2);
  @$pb.TagNumber(3)
  set info($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasInfo() => $_has(2);
  @$pb.TagNumber(3)
  void clearInfo() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get event => $_getSZ(3);
  @$pb.TagNumber(4)
  set event($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEvent() => $_has(3);
  @$pb.TagNumber(4)
  void clearEvent() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get eventTime => $_getSZ(4);
  @$pb.TagNumber(5)
  set eventTime($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasEventTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearEventTime() => clearField(5);
}

class StockRealTimeTickMessage extends $pb.GeneratedMessage {
  factory StockRealTimeTickMessage({
    $core.String? code,
    $core.String? dateTime,
    $core.double? open,
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
    $fixnum.Int64? bidSideTotalVol,
    $fixnum.Int64? askSideTotalVol,
    $fixnum.Int64? bidSideTotalCnt,
    $fixnum.Int64? askSideTotalCnt,
    $core.bool? suspend,
    $core.bool? simtrade,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (dateTime != null) {
      $result.dateTime = dateTime;
    }
    if (open != null) {
      $result.open = open;
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
    if (bidSideTotalVol != null) {
      $result.bidSideTotalVol = bidSideTotalVol;
    }
    if (askSideTotalVol != null) {
      $result.askSideTotalVol = askSideTotalVol;
    }
    if (bidSideTotalCnt != null) {
      $result.bidSideTotalCnt = bidSideTotalCnt;
    }
    if (askSideTotalCnt != null) {
      $result.askSideTotalCnt = askSideTotalCnt;
    }
    if (suspend != null) {
      $result.suspend = suspend;
    }
    if (simtrade != null) {
      $result.simtrade = simtrade;
    }
    return $result;
  }
  StockRealTimeTickMessage._() : super();
  factory StockRealTimeTickMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StockRealTimeTickMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StockRealTimeTickMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'dateTime')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'open', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'avgPrice', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'close', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'high', $pb.PbFieldType.OD)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'low', $pb.PbFieldType.OD)
    ..a<$core.double>(8, _omitFieldNames ? '' : 'amount', $pb.PbFieldType.OD)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'totalAmount', $pb.PbFieldType.OD)
    ..aInt64(10, _omitFieldNames ? '' : 'volume')
    ..aInt64(11, _omitFieldNames ? '' : 'totalVolume')
    ..aInt64(12, _omitFieldNames ? '' : 'tickType')
    ..aInt64(13, _omitFieldNames ? '' : 'chgType')
    ..a<$core.double>(14, _omitFieldNames ? '' : 'priceChg', $pb.PbFieldType.OD)
    ..a<$core.double>(15, _omitFieldNames ? '' : 'pctChg', $pb.PbFieldType.OD)
    ..aInt64(16, _omitFieldNames ? '' : 'bidSideTotalVol')
    ..aInt64(17, _omitFieldNames ? '' : 'askSideTotalVol')
    ..aInt64(18, _omitFieldNames ? '' : 'bidSideTotalCnt')
    ..aInt64(19, _omitFieldNames ? '' : 'askSideTotalCnt')
    ..aOB(20, _omitFieldNames ? '' : 'suspend')
    ..aOB(21, _omitFieldNames ? '' : 'simtrade')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StockRealTimeTickMessage clone() => StockRealTimeTickMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StockRealTimeTickMessage copyWith(void Function(StockRealTimeTickMessage) updates) => super.copyWith((message) => updates(message as StockRealTimeTickMessage)) as StockRealTimeTickMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockRealTimeTickMessage create() => StockRealTimeTickMessage._();
  StockRealTimeTickMessage createEmptyInstance() => create();
  static $pb.PbList<StockRealTimeTickMessage> createRepeated() => $pb.PbList<StockRealTimeTickMessage>();
  @$core.pragma('dart2js:noInline')
  static StockRealTimeTickMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StockRealTimeTickMessage>(create);
  static StockRealTimeTickMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get dateTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set dateTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get open => $_getN(2);
  @$pb.TagNumber(3)
  set open($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOpen() => $_has(2);
  @$pb.TagNumber(3)
  void clearOpen() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get avgPrice => $_getN(3);
  @$pb.TagNumber(4)
  set avgPrice($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvgPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvgPrice() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get close => $_getN(4);
  @$pb.TagNumber(5)
  set close($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasClose() => $_has(4);
  @$pb.TagNumber(5)
  void clearClose() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get high => $_getN(5);
  @$pb.TagNumber(6)
  set high($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasHigh() => $_has(5);
  @$pb.TagNumber(6)
  void clearHigh() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get low => $_getN(6);
  @$pb.TagNumber(7)
  set low($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLow() => $_has(6);
  @$pb.TagNumber(7)
  void clearLow() => clearField(7);

  @$pb.TagNumber(8)
  $core.double get amount => $_getN(7);
  @$pb.TagNumber(8)
  set amount($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAmount() => $_has(7);
  @$pb.TagNumber(8)
  void clearAmount() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get totalAmount => $_getN(8);
  @$pb.TagNumber(9)
  set totalAmount($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTotalAmount() => $_has(8);
  @$pb.TagNumber(9)
  void clearTotalAmount() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get volume => $_getI64(9);
  @$pb.TagNumber(10)
  set volume($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasVolume() => $_has(9);
  @$pb.TagNumber(10)
  void clearVolume() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get totalVolume => $_getI64(10);
  @$pb.TagNumber(11)
  set totalVolume($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTotalVolume() => $_has(10);
  @$pb.TagNumber(11)
  void clearTotalVolume() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get tickType => $_getI64(11);
  @$pb.TagNumber(12)
  set tickType($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTickType() => $_has(11);
  @$pb.TagNumber(12)
  void clearTickType() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get chgType => $_getI64(12);
  @$pb.TagNumber(13)
  set chgType($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasChgType() => $_has(12);
  @$pb.TagNumber(13)
  void clearChgType() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get priceChg => $_getN(13);
  @$pb.TagNumber(14)
  set priceChg($core.double v) { $_setDouble(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasPriceChg() => $_has(13);
  @$pb.TagNumber(14)
  void clearPriceChg() => clearField(14);

  @$pb.TagNumber(15)
  $core.double get pctChg => $_getN(14);
  @$pb.TagNumber(15)
  set pctChg($core.double v) { $_setDouble(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasPctChg() => $_has(14);
  @$pb.TagNumber(15)
  void clearPctChg() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get bidSideTotalVol => $_getI64(15);
  @$pb.TagNumber(16)
  set bidSideTotalVol($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasBidSideTotalVol() => $_has(15);
  @$pb.TagNumber(16)
  void clearBidSideTotalVol() => clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get askSideTotalVol => $_getI64(16);
  @$pb.TagNumber(17)
  set askSideTotalVol($fixnum.Int64 v) { $_setInt64(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasAskSideTotalVol() => $_has(16);
  @$pb.TagNumber(17)
  void clearAskSideTotalVol() => clearField(17);

  @$pb.TagNumber(18)
  $fixnum.Int64 get bidSideTotalCnt => $_getI64(17);
  @$pb.TagNumber(18)
  set bidSideTotalCnt($fixnum.Int64 v) { $_setInt64(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasBidSideTotalCnt() => $_has(17);
  @$pb.TagNumber(18)
  void clearBidSideTotalCnt() => clearField(18);

  @$pb.TagNumber(19)
  $fixnum.Int64 get askSideTotalCnt => $_getI64(18);
  @$pb.TagNumber(19)
  set askSideTotalCnt($fixnum.Int64 v) { $_setInt64(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasAskSideTotalCnt() => $_has(18);
  @$pb.TagNumber(19)
  void clearAskSideTotalCnt() => clearField(19);

  @$pb.TagNumber(20)
  $core.bool get suspend => $_getBF(19);
  @$pb.TagNumber(20)
  set suspend($core.bool v) { $_setBool(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasSuspend() => $_has(19);
  @$pb.TagNumber(20)
  void clearSuspend() => clearField(20);

  @$pb.TagNumber(21)
  $core.bool get simtrade => $_getBF(20);
  @$pb.TagNumber(21)
  set simtrade($core.bool v) { $_setBool(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasSimtrade() => $_has(20);
  @$pb.TagNumber(21)
  void clearSimtrade() => clearField(21);
}

class StockRealTimeBidAskMessage extends $pb.GeneratedMessage {
  factory StockRealTimeBidAskMessage({
    $core.String? code,
    $core.String? dateTime,
    $core.Iterable<$core.double>? bidPrice,
    $core.Iterable<$fixnum.Int64>? bidVolume,
    $core.Iterable<$fixnum.Int64>? diffBidVol,
    $core.Iterable<$core.double>? askPrice,
    $core.Iterable<$fixnum.Int64>? askVolume,
    $core.Iterable<$fixnum.Int64>? diffAskVol,
    $core.bool? suspend,
    $core.bool? simtrade,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (dateTime != null) {
      $result.dateTime = dateTime;
    }
    if (bidPrice != null) {
      $result.bidPrice.addAll(bidPrice);
    }
    if (bidVolume != null) {
      $result.bidVolume.addAll(bidVolume);
    }
    if (diffBidVol != null) {
      $result.diffBidVol.addAll(diffBidVol);
    }
    if (askPrice != null) {
      $result.askPrice.addAll(askPrice);
    }
    if (askVolume != null) {
      $result.askVolume.addAll(askVolume);
    }
    if (diffAskVol != null) {
      $result.diffAskVol.addAll(diffAskVol);
    }
    if (suspend != null) {
      $result.suspend = suspend;
    }
    if (simtrade != null) {
      $result.simtrade = simtrade;
    }
    return $result;
  }
  StockRealTimeBidAskMessage._() : super();
  factory StockRealTimeBidAskMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StockRealTimeBidAskMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StockRealTimeBidAskMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'dateTime')
    ..p<$core.double>(3, _omitFieldNames ? '' : 'bidPrice', $pb.PbFieldType.KD)
    ..p<$fixnum.Int64>(4, _omitFieldNames ? '' : 'bidVolume', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(5, _omitFieldNames ? '' : 'diffBidVol', $pb.PbFieldType.K6)
    ..p<$core.double>(6, _omitFieldNames ? '' : 'askPrice', $pb.PbFieldType.KD)
    ..p<$fixnum.Int64>(7, _omitFieldNames ? '' : 'askVolume', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(8, _omitFieldNames ? '' : 'diffAskVol', $pb.PbFieldType.K6)
    ..aOB(9, _omitFieldNames ? '' : 'suspend')
    ..aOB(10, _omitFieldNames ? '' : 'simtrade')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StockRealTimeBidAskMessage clone() => StockRealTimeBidAskMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StockRealTimeBidAskMessage copyWith(void Function(StockRealTimeBidAskMessage) updates) => super.copyWith((message) => updates(message as StockRealTimeBidAskMessage)) as StockRealTimeBidAskMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockRealTimeBidAskMessage create() => StockRealTimeBidAskMessage._();
  StockRealTimeBidAskMessage createEmptyInstance() => create();
  static $pb.PbList<StockRealTimeBidAskMessage> createRepeated() => $pb.PbList<StockRealTimeBidAskMessage>();
  @$core.pragma('dart2js:noInline')
  static StockRealTimeBidAskMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StockRealTimeBidAskMessage>(create);
  static StockRealTimeBidAskMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get dateTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set dateTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.double> get bidPrice => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<$fixnum.Int64> get bidVolume => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$fixnum.Int64> get diffBidVol => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$core.double> get askPrice => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$fixnum.Int64> get askVolume => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$fixnum.Int64> get diffAskVol => $_getList(7);

  @$pb.TagNumber(9)
  $core.bool get suspend => $_getBF(8);
  @$pb.TagNumber(9)
  set suspend($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasSuspend() => $_has(8);
  @$pb.TagNumber(9)
  void clearSuspend() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get simtrade => $_getBF(9);
  @$pb.TagNumber(10)
  set simtrade($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasSimtrade() => $_has(9);
  @$pb.TagNumber(10)
  void clearSimtrade() => clearField(10);
}

class FutureRealTimeTickMessage extends $pb.GeneratedMessage {
  factory FutureRealTimeTickMessage({
    $core.String? code,
    $core.String? dateTime,
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
    $core.bool? simtrade,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (dateTime != null) {
      $result.dateTime = dateTime;
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
    if (simtrade != null) {
      $result.simtrade = simtrade;
    }
    return $result;
  }
  FutureRealTimeTickMessage._() : super();
  factory FutureRealTimeTickMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FutureRealTimeTickMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FutureRealTimeTickMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'dateTime')
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
    ..aOB(19, _omitFieldNames ? '' : 'simtrade')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FutureRealTimeTickMessage clone() => FutureRealTimeTickMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FutureRealTimeTickMessage copyWith(void Function(FutureRealTimeTickMessage) updates) => super.copyWith((message) => updates(message as FutureRealTimeTickMessage)) as FutureRealTimeTickMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FutureRealTimeTickMessage create() => FutureRealTimeTickMessage._();
  FutureRealTimeTickMessage createEmptyInstance() => create();
  static $pb.PbList<FutureRealTimeTickMessage> createRepeated() => $pb.PbList<FutureRealTimeTickMessage>();
  @$core.pragma('dart2js:noInline')
  static FutureRealTimeTickMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FutureRealTimeTickMessage>(create);
  static FutureRealTimeTickMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get dateTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set dateTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateTime() => clearField(2);

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
  $core.bool get simtrade => $_getBF(18);
  @$pb.TagNumber(19)
  set simtrade($core.bool v) { $_setBool(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasSimtrade() => $_has(18);
  @$pb.TagNumber(19)
  void clearSimtrade() => clearField(19);
}

class FutureRealTimeBidAskMessage extends $pb.GeneratedMessage {
  factory FutureRealTimeBidAskMessage({
    $core.String? code,
    $core.String? dateTime,
    $fixnum.Int64? bidTotalVol,
    $fixnum.Int64? askTotalVol,
    $core.Iterable<$core.double>? bidPrice,
    $core.Iterable<$fixnum.Int64>? bidVolume,
    $core.Iterable<$fixnum.Int64>? diffBidVol,
    $core.Iterable<$core.double>? askPrice,
    $core.Iterable<$fixnum.Int64>? askVolume,
    $core.Iterable<$fixnum.Int64>? diffAskVol,
    $core.double? firstDerivedBidPrice,
    $core.double? firstDerivedAskPrice,
    $fixnum.Int64? firstDerivedBidVol,
    $fixnum.Int64? firstDerivedAskVol,
    $core.double? underlyingPrice,
    $core.bool? simtrade,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (dateTime != null) {
      $result.dateTime = dateTime;
    }
    if (bidTotalVol != null) {
      $result.bidTotalVol = bidTotalVol;
    }
    if (askTotalVol != null) {
      $result.askTotalVol = askTotalVol;
    }
    if (bidPrice != null) {
      $result.bidPrice.addAll(bidPrice);
    }
    if (bidVolume != null) {
      $result.bidVolume.addAll(bidVolume);
    }
    if (diffBidVol != null) {
      $result.diffBidVol.addAll(diffBidVol);
    }
    if (askPrice != null) {
      $result.askPrice.addAll(askPrice);
    }
    if (askVolume != null) {
      $result.askVolume.addAll(askVolume);
    }
    if (diffAskVol != null) {
      $result.diffAskVol.addAll(diffAskVol);
    }
    if (firstDerivedBidPrice != null) {
      $result.firstDerivedBidPrice = firstDerivedBidPrice;
    }
    if (firstDerivedAskPrice != null) {
      $result.firstDerivedAskPrice = firstDerivedAskPrice;
    }
    if (firstDerivedBidVol != null) {
      $result.firstDerivedBidVol = firstDerivedBidVol;
    }
    if (firstDerivedAskVol != null) {
      $result.firstDerivedAskVol = firstDerivedAskVol;
    }
    if (underlyingPrice != null) {
      $result.underlyingPrice = underlyingPrice;
    }
    if (simtrade != null) {
      $result.simtrade = simtrade;
    }
    return $result;
  }
  FutureRealTimeBidAskMessage._() : super();
  factory FutureRealTimeBidAskMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FutureRealTimeBidAskMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FutureRealTimeBidAskMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'dateTime')
    ..aInt64(3, _omitFieldNames ? '' : 'bidTotalVol')
    ..aInt64(4, _omitFieldNames ? '' : 'askTotalVol')
    ..p<$core.double>(5, _omitFieldNames ? '' : 'bidPrice', $pb.PbFieldType.KD)
    ..p<$fixnum.Int64>(6, _omitFieldNames ? '' : 'bidVolume', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(7, _omitFieldNames ? '' : 'diffBidVol', $pb.PbFieldType.K6)
    ..p<$core.double>(8, _omitFieldNames ? '' : 'askPrice', $pb.PbFieldType.KD)
    ..p<$fixnum.Int64>(9, _omitFieldNames ? '' : 'askVolume', $pb.PbFieldType.K6)
    ..p<$fixnum.Int64>(10, _omitFieldNames ? '' : 'diffAskVol', $pb.PbFieldType.K6)
    ..a<$core.double>(11, _omitFieldNames ? '' : 'firstDerivedBidPrice', $pb.PbFieldType.OD)
    ..a<$core.double>(12, _omitFieldNames ? '' : 'firstDerivedAskPrice', $pb.PbFieldType.OD)
    ..aInt64(13, _omitFieldNames ? '' : 'firstDerivedBidVol')
    ..aInt64(14, _omitFieldNames ? '' : 'firstDerivedAskVol')
    ..a<$core.double>(15, _omitFieldNames ? '' : 'underlyingPrice', $pb.PbFieldType.OD)
    ..aOB(16, _omitFieldNames ? '' : 'simtrade')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FutureRealTimeBidAskMessage clone() => FutureRealTimeBidAskMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FutureRealTimeBidAskMessage copyWith(void Function(FutureRealTimeBidAskMessage) updates) => super.copyWith((message) => updates(message as FutureRealTimeBidAskMessage)) as FutureRealTimeBidAskMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FutureRealTimeBidAskMessage create() => FutureRealTimeBidAskMessage._();
  FutureRealTimeBidAskMessage createEmptyInstance() => create();
  static $pb.PbList<FutureRealTimeBidAskMessage> createRepeated() => $pb.PbList<FutureRealTimeBidAskMessage>();
  @$core.pragma('dart2js:noInline')
  static FutureRealTimeBidAskMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FutureRealTimeBidAskMessage>(create);
  static FutureRealTimeBidAskMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get dateTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set dateTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDateTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearDateTime() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get bidTotalVol => $_getI64(2);
  @$pb.TagNumber(3)
  set bidTotalVol($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBidTotalVol() => $_has(2);
  @$pb.TagNumber(3)
  void clearBidTotalVol() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get askTotalVol => $_getI64(3);
  @$pb.TagNumber(4)
  set askTotalVol($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAskTotalVol() => $_has(3);
  @$pb.TagNumber(4)
  void clearAskTotalVol() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.double> get bidPrice => $_getList(4);

  @$pb.TagNumber(6)
  $core.List<$fixnum.Int64> get bidVolume => $_getList(5);

  @$pb.TagNumber(7)
  $core.List<$fixnum.Int64> get diffBidVol => $_getList(6);

  @$pb.TagNumber(8)
  $core.List<$core.double> get askPrice => $_getList(7);

  @$pb.TagNumber(9)
  $core.List<$fixnum.Int64> get askVolume => $_getList(8);

  @$pb.TagNumber(10)
  $core.List<$fixnum.Int64> get diffAskVol => $_getList(9);

  @$pb.TagNumber(11)
  $core.double get firstDerivedBidPrice => $_getN(10);
  @$pb.TagNumber(11)
  set firstDerivedBidPrice($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasFirstDerivedBidPrice() => $_has(10);
  @$pb.TagNumber(11)
  void clearFirstDerivedBidPrice() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get firstDerivedAskPrice => $_getN(11);
  @$pb.TagNumber(12)
  set firstDerivedAskPrice($core.double v) { $_setDouble(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasFirstDerivedAskPrice() => $_has(11);
  @$pb.TagNumber(12)
  void clearFirstDerivedAskPrice() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get firstDerivedBidVol => $_getI64(12);
  @$pb.TagNumber(13)
  set firstDerivedBidVol($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasFirstDerivedBidVol() => $_has(12);
  @$pb.TagNumber(13)
  void clearFirstDerivedBidVol() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get firstDerivedAskVol => $_getI64(13);
  @$pb.TagNumber(14)
  set firstDerivedAskVol($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasFirstDerivedAskVol() => $_has(13);
  @$pb.TagNumber(14)
  void clearFirstDerivedAskVol() => clearField(14);

  @$pb.TagNumber(15)
  $core.double get underlyingPrice => $_getN(14);
  @$pb.TagNumber(15)
  set underlyingPrice($core.double v) { $_setDouble(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasUnderlyingPrice() => $_has(14);
  @$pb.TagNumber(15)
  void clearUnderlyingPrice() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get simtrade => $_getBF(15);
  @$pb.TagNumber(16)
  set simtrade($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasSimtrade() => $_has(15);
  @$pb.TagNumber(16)
  void clearSimtrade() => clearField(16);
}

class OrderStatusArr extends $pb.GeneratedMessage {
  factory OrderStatusArr({
    $core.Iterable<OrderStatus>? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  OrderStatusArr._() : super();
  factory OrderStatusArr.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderStatusArr.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OrderStatusArr', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pc<OrderStatus>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: OrderStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderStatusArr clone() => OrderStatusArr()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderStatusArr copyWith(void Function(OrderStatusArr) updates) => super.copyWith((message) => updates(message as OrderStatusArr)) as OrderStatusArr;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OrderStatusArr create() => OrderStatusArr._();
  OrderStatusArr createEmptyInstance() => create();
  static $pb.PbList<OrderStatusArr> createRepeated() => $pb.PbList<OrderStatusArr>();
  @$core.pragma('dart2js:noInline')
  static OrderStatusArr getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderStatusArr>(create);
  static OrderStatusArr? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<OrderStatus> get data => $_getList(0);
}

class OrderStatus extends $pb.GeneratedMessage {
  factory OrderStatus({
    OrderType? type,
    $core.String? status,
    $core.String? code,
    $core.String? action,
    $core.double? price,
    $fixnum.Int64? quantity,
    $core.String? orderId,
    $core.String? orderTime,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (status != null) {
      $result.status = status;
    }
    if (code != null) {
      $result.code = code;
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
    if (orderId != null) {
      $result.orderId = orderId;
    }
    if (orderTime != null) {
      $result.orderTime = orderTime;
    }
    return $result;
  }
  OrderStatus._() : super();
  factory OrderStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OrderStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OrderStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..e<OrderType>(1, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: OrderType.TYPE_UNKNOWN, valueOf: OrderType.valueOf, enumValues: OrderType.values)
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aOS(3, _omitFieldNames ? '' : 'code')
    ..aOS(4, _omitFieldNames ? '' : 'action')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..aInt64(6, _omitFieldNames ? '' : 'quantity')
    ..aOS(7, _omitFieldNames ? '' : 'orderId')
    ..aOS(8, _omitFieldNames ? '' : 'orderTime')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OrderStatus clone() => OrderStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OrderStatus copyWith(void Function(OrderStatus) updates) => super.copyWith((message) => updates(message as OrderStatus)) as OrderStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OrderStatus create() => OrderStatus._();
  OrderStatus createEmptyInstance() => create();
  static $pb.PbList<OrderStatus> createRepeated() => $pb.PbList<OrderStatus>();
  @$core.pragma('dart2js:noInline')
  static OrderStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OrderStatus>(create);
  static OrderStatus? _defaultInstance;

  @$pb.TagNumber(1)
  OrderType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(OrderType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get code => $_getSZ(2);
  @$pb.TagNumber(3)
  set code($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get action => $_getSZ(3);
  @$pb.TagNumber(4)
  set action($core.String v) { $_setString(3, v); }
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

  @$pb.TagNumber(7)
  $core.String get orderId => $_getSZ(6);
  @$pb.TagNumber(7)
  set orderId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOrderId() => $_has(6);
  @$pb.TagNumber(7)
  void clearOrderId() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get orderTime => $_getSZ(7);
  @$pb.TagNumber(8)
  set orderTime($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOrderTime() => $_has(7);
  @$pb.TagNumber(8)
  void clearOrderTime() => clearField(8);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

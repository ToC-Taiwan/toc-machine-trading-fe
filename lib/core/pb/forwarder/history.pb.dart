//
//  Generated code. Do not modify.
//  source: forwarder/history.proto
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

class StockNumArrWithDate extends $pb.GeneratedMessage {
  factory StockNumArrWithDate({
    $core.Iterable<$core.String>? stockNumArr,
    $core.String? date,
  }) {
    final $result = create();
    if (stockNumArr != null) {
      $result.stockNumArr.addAll(stockNumArr);
    }
    if (date != null) {
      $result.date = date;
    }
    return $result;
  }
  StockNumArrWithDate._() : super();
  factory StockNumArrWithDate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StockNumArrWithDate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StockNumArrWithDate', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'stockNumArr')
    ..aOS(2, _omitFieldNames ? '' : 'date')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StockNumArrWithDate clone() => StockNumArrWithDate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StockNumArrWithDate copyWith(void Function(StockNumArrWithDate) updates) => super.copyWith((message) => updates(message as StockNumArrWithDate)) as StockNumArrWithDate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockNumArrWithDate create() => StockNumArrWithDate._();
  StockNumArrWithDate createEmptyInstance() => create();
  static $pb.PbList<StockNumArrWithDate> createRepeated() => $pb.PbList<StockNumArrWithDate>();
  @$core.pragma('dart2js:noInline')
  static StockNumArrWithDate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StockNumArrWithDate>(create);
  static StockNumArrWithDate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get stockNumArr => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get date => $_getSZ(1);
  @$pb.TagNumber(2)
  set date($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => clearField(2);
}

class FutureCodeArrWithDate extends $pb.GeneratedMessage {
  factory FutureCodeArrWithDate({
    $core.Iterable<$core.String>? futureCodeArr,
    $core.String? date,
  }) {
    final $result = create();
    if (futureCodeArr != null) {
      $result.futureCodeArr.addAll(futureCodeArr);
    }
    if (date != null) {
      $result.date = date;
    }
    return $result;
  }
  FutureCodeArrWithDate._() : super();
  factory FutureCodeArrWithDate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FutureCodeArrWithDate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FutureCodeArrWithDate', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'futureCodeArr')
    ..aOS(2, _omitFieldNames ? '' : 'date')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FutureCodeArrWithDate clone() => FutureCodeArrWithDate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FutureCodeArrWithDate copyWith(void Function(FutureCodeArrWithDate) updates) => super.copyWith((message) => updates(message as FutureCodeArrWithDate)) as FutureCodeArrWithDate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FutureCodeArrWithDate create() => FutureCodeArrWithDate._();
  FutureCodeArrWithDate createEmptyInstance() => create();
  static $pb.PbList<FutureCodeArrWithDate> createRepeated() => $pb.PbList<FutureCodeArrWithDate>();
  @$core.pragma('dart2js:noInline')
  static FutureCodeArrWithDate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FutureCodeArrWithDate>(create);
  static FutureCodeArrWithDate? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get futureCodeArr => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get date => $_getSZ(1);
  @$pb.TagNumber(2)
  set date($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => clearField(2);
}

class StockNumArrWithDateArr extends $pb.GeneratedMessage {
  factory StockNumArrWithDateArr({
    $core.Iterable<$core.String>? stockNumArr,
    $core.Iterable<$core.String>? dateArr,
  }) {
    final $result = create();
    if (stockNumArr != null) {
      $result.stockNumArr.addAll(stockNumArr);
    }
    if (dateArr != null) {
      $result.dateArr.addAll(dateArr);
    }
    return $result;
  }
  StockNumArrWithDateArr._() : super();
  factory StockNumArrWithDateArr.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StockNumArrWithDateArr.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StockNumArrWithDateArr', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'stockNumArr')
    ..pPS(2, _omitFieldNames ? '' : 'dateArr')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StockNumArrWithDateArr clone() => StockNumArrWithDateArr()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StockNumArrWithDateArr copyWith(void Function(StockNumArrWithDateArr) updates) => super.copyWith((message) => updates(message as StockNumArrWithDateArr)) as StockNumArrWithDateArr;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockNumArrWithDateArr create() => StockNumArrWithDateArr._();
  StockNumArrWithDateArr createEmptyInstance() => create();
  static $pb.PbList<StockNumArrWithDateArr> createRepeated() => $pb.PbList<StockNumArrWithDateArr>();
  @$core.pragma('dart2js:noInline')
  static StockNumArrWithDateArr getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StockNumArrWithDateArr>(create);
  static StockNumArrWithDateArr? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get stockNumArr => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.String> get dateArr => $_getList(1);
}

class HistoryTickResponse extends $pb.GeneratedMessage {
  factory HistoryTickResponse({
    $core.Iterable<HistoryTickMessage>? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  HistoryTickResponse._() : super();
  factory HistoryTickResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryTickResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HistoryTickResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pc<HistoryTickMessage>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: HistoryTickMessage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HistoryTickResponse clone() => HistoryTickResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HistoryTickResponse copyWith(void Function(HistoryTickResponse) updates) => super.copyWith((message) => updates(message as HistoryTickResponse)) as HistoryTickResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoryTickResponse create() => HistoryTickResponse._();
  HistoryTickResponse createEmptyInstance() => create();
  static $pb.PbList<HistoryTickResponse> createRepeated() => $pb.PbList<HistoryTickResponse>();
  @$core.pragma('dart2js:noInline')
  static HistoryTickResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryTickResponse>(create);
  static HistoryTickResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<HistoryTickMessage> get data => $_getList(0);
}

class HistoryKbarResponse extends $pb.GeneratedMessage {
  factory HistoryKbarResponse({
    $core.Iterable<HistoryKbarMessage>? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  HistoryKbarResponse._() : super();
  factory HistoryKbarResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryKbarResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HistoryKbarResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pc<HistoryKbarMessage>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: HistoryKbarMessage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HistoryKbarResponse clone() => HistoryKbarResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HistoryKbarResponse copyWith(void Function(HistoryKbarResponse) updates) => super.copyWith((message) => updates(message as HistoryKbarResponse)) as HistoryKbarResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoryKbarResponse create() => HistoryKbarResponse._();
  HistoryKbarResponse createEmptyInstance() => create();
  static $pb.PbList<HistoryKbarResponse> createRepeated() => $pb.PbList<HistoryKbarResponse>();
  @$core.pragma('dart2js:noInline')
  static HistoryKbarResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryKbarResponse>(create);
  static HistoryKbarResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<HistoryKbarMessage> get data => $_getList(0);
}

class HistoryCloseResponse extends $pb.GeneratedMessage {
  factory HistoryCloseResponse({
    $core.Iterable<HistoryCloseMessage>? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  HistoryCloseResponse._() : super();
  factory HistoryCloseResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryCloseResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HistoryCloseResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pc<HistoryCloseMessage>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: HistoryCloseMessage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HistoryCloseResponse clone() => HistoryCloseResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HistoryCloseResponse copyWith(void Function(HistoryCloseResponse) updates) => super.copyWith((message) => updates(message as HistoryCloseResponse)) as HistoryCloseResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoryCloseResponse create() => HistoryCloseResponse._();
  HistoryCloseResponse createEmptyInstance() => create();
  static $pb.PbList<HistoryCloseResponse> createRepeated() => $pb.PbList<HistoryCloseResponse>();
  @$core.pragma('dart2js:noInline')
  static HistoryCloseResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryCloseResponse>(create);
  static HistoryCloseResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<HistoryCloseMessage> get data => $_getList(0);
}

class HistoryTickMessage extends $pb.GeneratedMessage {
  factory HistoryTickMessage({
    $fixnum.Int64? ts,
    $core.double? close,
    $fixnum.Int64? volume,
    $core.double? bidPrice,
    $fixnum.Int64? bidVolume,
    $core.double? askPrice,
    $fixnum.Int64? askVolume,
    $fixnum.Int64? tickType,
    $core.String? code,
  }) {
    final $result = create();
    if (ts != null) {
      $result.ts = ts;
    }
    if (close != null) {
      $result.close = close;
    }
    if (volume != null) {
      $result.volume = volume;
    }
    if (bidPrice != null) {
      $result.bidPrice = bidPrice;
    }
    if (bidVolume != null) {
      $result.bidVolume = bidVolume;
    }
    if (askPrice != null) {
      $result.askPrice = askPrice;
    }
    if (askVolume != null) {
      $result.askVolume = askVolume;
    }
    if (tickType != null) {
      $result.tickType = tickType;
    }
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  HistoryTickMessage._() : super();
  factory HistoryTickMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryTickMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HistoryTickMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'ts')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'close', $pb.PbFieldType.OD)
    ..aInt64(3, _omitFieldNames ? '' : 'volume')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'bidPrice', $pb.PbFieldType.OD)
    ..aInt64(5, _omitFieldNames ? '' : 'bidVolume')
    ..a<$core.double>(6, _omitFieldNames ? '' : 'askPrice', $pb.PbFieldType.OD)
    ..aInt64(7, _omitFieldNames ? '' : 'askVolume')
    ..aInt64(8, _omitFieldNames ? '' : 'tickType')
    ..aOS(9, _omitFieldNames ? '' : 'code')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HistoryTickMessage clone() => HistoryTickMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HistoryTickMessage copyWith(void Function(HistoryTickMessage) updates) => super.copyWith((message) => updates(message as HistoryTickMessage)) as HistoryTickMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoryTickMessage create() => HistoryTickMessage._();
  HistoryTickMessage createEmptyInstance() => create();
  static $pb.PbList<HistoryTickMessage> createRepeated() => $pb.PbList<HistoryTickMessage>();
  @$core.pragma('dart2js:noInline')
  static HistoryTickMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryTickMessage>(create);
  static HistoryTickMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get ts => $_getI64(0);
  @$pb.TagNumber(1)
  set ts($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTs() => $_has(0);
  @$pb.TagNumber(1)
  void clearTs() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get close => $_getN(1);
  @$pb.TagNumber(2)
  set close($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClose() => $_has(1);
  @$pb.TagNumber(2)
  void clearClose() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get volume => $_getI64(2);
  @$pb.TagNumber(3)
  set volume($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVolume() => $_has(2);
  @$pb.TagNumber(3)
  void clearVolume() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get bidPrice => $_getN(3);
  @$pb.TagNumber(4)
  set bidPrice($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBidPrice() => $_has(3);
  @$pb.TagNumber(4)
  void clearBidPrice() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get bidVolume => $_getI64(4);
  @$pb.TagNumber(5)
  set bidVolume($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBidVolume() => $_has(4);
  @$pb.TagNumber(5)
  void clearBidVolume() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get askPrice => $_getN(5);
  @$pb.TagNumber(6)
  set askPrice($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAskPrice() => $_has(5);
  @$pb.TagNumber(6)
  void clearAskPrice() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get askVolume => $_getI64(6);
  @$pb.TagNumber(7)
  set askVolume($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAskVolume() => $_has(6);
  @$pb.TagNumber(7)
  void clearAskVolume() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get tickType => $_getI64(7);
  @$pb.TagNumber(8)
  set tickType($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTickType() => $_has(7);
  @$pb.TagNumber(8)
  void clearTickType() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get code => $_getSZ(8);
  @$pb.TagNumber(9)
  set code($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCode() => $_has(8);
  @$pb.TagNumber(9)
  void clearCode() => clearField(9);
}

class HistoryKbarMessage extends $pb.GeneratedMessage {
  factory HistoryKbarMessage({
    $fixnum.Int64? ts,
    $core.double? close,
    $core.double? open,
    $core.double? high,
    $core.double? low,
    $fixnum.Int64? volume,
    $core.String? code,
  }) {
    final $result = create();
    if (ts != null) {
      $result.ts = ts;
    }
    if (close != null) {
      $result.close = close;
    }
    if (open != null) {
      $result.open = open;
    }
    if (high != null) {
      $result.high = high;
    }
    if (low != null) {
      $result.low = low;
    }
    if (volume != null) {
      $result.volume = volume;
    }
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  HistoryKbarMessage._() : super();
  factory HistoryKbarMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryKbarMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HistoryKbarMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'ts')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'close', $pb.PbFieldType.OD)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'open', $pb.PbFieldType.OD)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'high', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'low', $pb.PbFieldType.OD)
    ..aInt64(6, _omitFieldNames ? '' : 'volume')
    ..aOS(7, _omitFieldNames ? '' : 'code')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HistoryKbarMessage clone() => HistoryKbarMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HistoryKbarMessage copyWith(void Function(HistoryKbarMessage) updates) => super.copyWith((message) => updates(message as HistoryKbarMessage)) as HistoryKbarMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoryKbarMessage create() => HistoryKbarMessage._();
  HistoryKbarMessage createEmptyInstance() => create();
  static $pb.PbList<HistoryKbarMessage> createRepeated() => $pb.PbList<HistoryKbarMessage>();
  @$core.pragma('dart2js:noInline')
  static HistoryKbarMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryKbarMessage>(create);
  static HistoryKbarMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get ts => $_getI64(0);
  @$pb.TagNumber(1)
  set ts($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTs() => $_has(0);
  @$pb.TagNumber(1)
  void clearTs() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get close => $_getN(1);
  @$pb.TagNumber(2)
  set close($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClose() => $_has(1);
  @$pb.TagNumber(2)
  void clearClose() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get open => $_getN(2);
  @$pb.TagNumber(3)
  set open($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOpen() => $_has(2);
  @$pb.TagNumber(3)
  void clearOpen() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get high => $_getN(3);
  @$pb.TagNumber(4)
  set high($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHigh() => $_has(3);
  @$pb.TagNumber(4)
  void clearHigh() => clearField(4);

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

  @$pb.TagNumber(7)
  $core.String get code => $_getSZ(6);
  @$pb.TagNumber(7)
  set code($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCode() => $_has(6);
  @$pb.TagNumber(7)
  void clearCode() => clearField(7);
}

class HistoryCloseMessage extends $pb.GeneratedMessage {
  factory HistoryCloseMessage({
    $core.String? date,
    $core.String? code,
    $core.double? close,
  }) {
    final $result = create();
    if (date != null) {
      $result.date = date;
    }
    if (code != null) {
      $result.code = code;
    }
    if (close != null) {
      $result.close = close;
    }
    return $result;
  }
  HistoryCloseMessage._() : super();
  factory HistoryCloseMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HistoryCloseMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HistoryCloseMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'date')
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'close', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HistoryCloseMessage clone() => HistoryCloseMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HistoryCloseMessage copyWith(void Function(HistoryCloseMessage) updates) => super.copyWith((message) => updates(message as HistoryCloseMessage)) as HistoryCloseMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HistoryCloseMessage create() => HistoryCloseMessage._();
  HistoryCloseMessage createEmptyInstance() => create();
  static $pb.PbList<HistoryCloseMessage> createRepeated() => $pb.PbList<HistoryCloseMessage>();
  @$core.pragma('dart2js:noInline')
  static HistoryCloseMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HistoryCloseMessage>(create);
  static HistoryCloseMessage? _defaultInstance;

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
  $core.double get close => $_getN(2);
  @$pb.TagNumber(3)
  set close($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasClose() => $_has(2);
  @$pb.TagNumber(3)
  void clearClose() => clearField(3);
}

class Date extends $pb.GeneratedMessage {
  factory Date({
    $core.String? date,
  }) {
    final $result = create();
    if (date != null) {
      $result.date = date;
    }
    return $result;
  }
  Date._() : super();
  factory Date.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Date.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Date', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'date')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Date clone() => Date()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Date copyWith(void Function(Date) updates) => super.copyWith((message) => updates(message as Date)) as Date;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Date create() => Date._();
  Date createEmptyInstance() => create();
  static $pb.PbList<Date> createRepeated() => $pb.PbList<Date>();
  @$core.pragma('dart2js:noInline')
  static Date getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Date>(create);
  static Date? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get date => $_getSZ(0);
  @$pb.TagNumber(1)
  set date($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDate() => $_has(0);
  @$pb.TagNumber(1)
  void clearDate() => clearField(1);
}

class HistoryDataInterfaceApi {
  $pb.RpcClient _client;
  HistoryDataInterfaceApi(this._client);

  $async.Future<HistoryTickResponse> getStockHistoryTick($pb.ClientContext? ctx, StockNumArrWithDate request) =>
    _client.invoke<HistoryTickResponse>(ctx, 'HistoryDataInterface', 'GetStockHistoryTick', request, HistoryTickResponse())
  ;
  $async.Future<HistoryKbarResponse> getStockHistoryKbar($pb.ClientContext? ctx, StockNumArrWithDate request) =>
    _client.invoke<HistoryKbarResponse>(ctx, 'HistoryDataInterface', 'GetStockHistoryKbar', request, HistoryKbarResponse())
  ;
  $async.Future<HistoryCloseResponse> getStockHistoryClose($pb.ClientContext? ctx, StockNumArrWithDate request) =>
    _client.invoke<HistoryCloseResponse>(ctx, 'HistoryDataInterface', 'GetStockHistoryClose', request, HistoryCloseResponse())
  ;
  $async.Future<HistoryKbarResponse> getFutureHistoryKbar($pb.ClientContext? ctx, FutureCodeArrWithDate request) =>
    _client.invoke<HistoryKbarResponse>(ctx, 'HistoryDataInterface', 'GetFutureHistoryKbar', request, HistoryKbarResponse())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

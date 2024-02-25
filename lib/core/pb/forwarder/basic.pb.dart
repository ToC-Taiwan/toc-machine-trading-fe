//
//  Generated code. Do not modify.
//  source: forwarder/basic.proto
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

class BeatMessage extends $pb.GeneratedMessage {
  factory BeatMessage({
    $core.String? message,
    $core.String? error,
  }) {
    final $result = create();
    if (message != null) {
      $result.message = message;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  BeatMessage._() : super();
  factory BeatMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BeatMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BeatMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'message')
    ..aOS(2, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BeatMessage clone() => BeatMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BeatMessage copyWith(void Function(BeatMessage) updates) => super.copyWith((message) => updates(message as BeatMessage)) as BeatMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BeatMessage create() => BeatMessage._();
  BeatMessage createEmptyInstance() => create();
  static $pb.PbList<BeatMessage> createRepeated() => $pb.PbList<BeatMessage>();
  @$core.pragma('dart2js:noInline')
  static BeatMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BeatMessage>(create);
  static BeatMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
}

class ShioajiUsage extends $pb.GeneratedMessage {
  factory ShioajiUsage({
    $fixnum.Int64? connections,
    $fixnum.Int64? bytes,
    $fixnum.Int64? limitBytes,
    $fixnum.Int64? remainingBytes,
  }) {
    final $result = create();
    if (connections != null) {
      $result.connections = connections;
    }
    if (bytes != null) {
      $result.bytes = bytes;
    }
    if (limitBytes != null) {
      $result.limitBytes = limitBytes;
    }
    if (remainingBytes != null) {
      $result.remainingBytes = remainingBytes;
    }
    return $result;
  }
  ShioajiUsage._() : super();
  factory ShioajiUsage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ShioajiUsage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ShioajiUsage', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'connections')
    ..aInt64(2, _omitFieldNames ? '' : 'bytes')
    ..aInt64(3, _omitFieldNames ? '' : 'limitBytes')
    ..aInt64(4, _omitFieldNames ? '' : 'remainingBytes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ShioajiUsage clone() => ShioajiUsage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ShioajiUsage copyWith(void Function(ShioajiUsage) updates) => super.copyWith((message) => updates(message as ShioajiUsage)) as ShioajiUsage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ShioajiUsage create() => ShioajiUsage._();
  ShioajiUsage createEmptyInstance() => create();
  static $pb.PbList<ShioajiUsage> createRepeated() => $pb.PbList<ShioajiUsage>();
  @$core.pragma('dart2js:noInline')
  static ShioajiUsage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ShioajiUsage>(create);
  static ShioajiUsage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get connections => $_getI64(0);
  @$pb.TagNumber(1)
  set connections($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasConnections() => $_has(0);
  @$pb.TagNumber(1)
  void clearConnections() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get bytes => $_getI64(1);
  @$pb.TagNumber(2)
  set bytes($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBytes() => $_has(1);
  @$pb.TagNumber(2)
  void clearBytes() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get limitBytes => $_getI64(2);
  @$pb.TagNumber(3)
  set limitBytes($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLimitBytes() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimitBytes() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get remainingBytes => $_getI64(3);
  @$pb.TagNumber(4)
  set remainingBytes($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRemainingBytes() => $_has(3);
  @$pb.TagNumber(4)
  void clearRemainingBytes() => clearField(4);
}

class StockDetailResponse extends $pb.GeneratedMessage {
  factory StockDetailResponse({
    $core.Iterable<StockDetailMessage>? stock,
  }) {
    final $result = create();
    if (stock != null) {
      $result.stock.addAll(stock);
    }
    return $result;
  }
  StockDetailResponse._() : super();
  factory StockDetailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StockDetailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StockDetailResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pc<StockDetailMessage>(1, _omitFieldNames ? '' : 'stock', $pb.PbFieldType.PM, subBuilder: StockDetailMessage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StockDetailResponse clone() => StockDetailResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StockDetailResponse copyWith(void Function(StockDetailResponse) updates) => super.copyWith((message) => updates(message as StockDetailResponse)) as StockDetailResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockDetailResponse create() => StockDetailResponse._();
  StockDetailResponse createEmptyInstance() => create();
  static $pb.PbList<StockDetailResponse> createRepeated() => $pb.PbList<StockDetailResponse>();
  @$core.pragma('dart2js:noInline')
  static StockDetailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StockDetailResponse>(create);
  static StockDetailResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<StockDetailMessage> get stock => $_getList(0);
}

class FutureDetailResponse extends $pb.GeneratedMessage {
  factory FutureDetailResponse({
    $core.Iterable<FutureDetailMessage>? future,
  }) {
    final $result = create();
    if (future != null) {
      $result.future.addAll(future);
    }
    return $result;
  }
  FutureDetailResponse._() : super();
  factory FutureDetailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FutureDetailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FutureDetailResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pc<FutureDetailMessage>(1, _omitFieldNames ? '' : 'future', $pb.PbFieldType.PM, subBuilder: FutureDetailMessage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FutureDetailResponse clone() => FutureDetailResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FutureDetailResponse copyWith(void Function(FutureDetailResponse) updates) => super.copyWith((message) => updates(message as FutureDetailResponse)) as FutureDetailResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FutureDetailResponse create() => FutureDetailResponse._();
  FutureDetailResponse createEmptyInstance() => create();
  static $pb.PbList<FutureDetailResponse> createRepeated() => $pb.PbList<FutureDetailResponse>();
  @$core.pragma('dart2js:noInline')
  static FutureDetailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FutureDetailResponse>(create);
  static FutureDetailResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FutureDetailMessage> get future => $_getList(0);
}

class OptionDetailResponse extends $pb.GeneratedMessage {
  factory OptionDetailResponse({
    $core.Iterable<OptionDetailMessage>? option,
  }) {
    final $result = create();
    if (option != null) {
      $result.option.addAll(option);
    }
    return $result;
  }
  OptionDetailResponse._() : super();
  factory OptionDetailResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OptionDetailResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OptionDetailResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pc<OptionDetailMessage>(1, _omitFieldNames ? '' : 'option', $pb.PbFieldType.PM, subBuilder: OptionDetailMessage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OptionDetailResponse clone() => OptionDetailResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OptionDetailResponse copyWith(void Function(OptionDetailResponse) updates) => super.copyWith((message) => updates(message as OptionDetailResponse)) as OptionDetailResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OptionDetailResponse create() => OptionDetailResponse._();
  OptionDetailResponse createEmptyInstance() => create();
  static $pb.PbList<OptionDetailResponse> createRepeated() => $pb.PbList<OptionDetailResponse>();
  @$core.pragma('dart2js:noInline')
  static OptionDetailResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OptionDetailResponse>(create);
  static OptionDetailResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<OptionDetailMessage> get option => $_getList(0);
}

class StockDetailMessage extends $pb.GeneratedMessage {
  factory StockDetailMessage({
    $core.String? exchange,
    $core.String? category,
    $core.String? code,
    $core.String? name,
    $core.double? reference,
    $core.String? updateDate,
    $core.String? dayTrade,
  }) {
    final $result = create();
    if (exchange != null) {
      $result.exchange = exchange;
    }
    if (category != null) {
      $result.category = category;
    }
    if (code != null) {
      $result.code = code;
    }
    if (name != null) {
      $result.name = name;
    }
    if (reference != null) {
      $result.reference = reference;
    }
    if (updateDate != null) {
      $result.updateDate = updateDate;
    }
    if (dayTrade != null) {
      $result.dayTrade = dayTrade;
    }
    return $result;
  }
  StockDetailMessage._() : super();
  factory StockDetailMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StockDetailMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StockDetailMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'exchange')
    ..aOS(2, _omitFieldNames ? '' : 'category')
    ..aOS(3, _omitFieldNames ? '' : 'code')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'reference', $pb.PbFieldType.OD)
    ..aOS(6, _omitFieldNames ? '' : 'updateDate')
    ..aOS(7, _omitFieldNames ? '' : 'dayTrade')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StockDetailMessage clone() => StockDetailMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StockDetailMessage copyWith(void Function(StockDetailMessage) updates) => super.copyWith((message) => updates(message as StockDetailMessage)) as StockDetailMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockDetailMessage create() => StockDetailMessage._();
  StockDetailMessage createEmptyInstance() => create();
  static $pb.PbList<StockDetailMessage> createRepeated() => $pb.PbList<StockDetailMessage>();
  @$core.pragma('dart2js:noInline')
  static StockDetailMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StockDetailMessage>(create);
  static StockDetailMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get exchange => $_getSZ(0);
  @$pb.TagNumber(1)
  set exchange($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasExchange() => $_has(0);
  @$pb.TagNumber(1)
  void clearExchange() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get category => $_getSZ(1);
  @$pb.TagNumber(2)
  set category($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get code => $_getSZ(2);
  @$pb.TagNumber(3)
  set code($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCode() => $_has(2);
  @$pb.TagNumber(3)
  void clearCode() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get reference => $_getN(4);
  @$pb.TagNumber(5)
  set reference($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasReference() => $_has(4);
  @$pb.TagNumber(5)
  void clearReference() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get updateDate => $_getSZ(5);
  @$pb.TagNumber(6)
  set updateDate($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdateDate() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdateDate() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get dayTrade => $_getSZ(6);
  @$pb.TagNumber(7)
  set dayTrade($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDayTrade() => $_has(6);
  @$pb.TagNumber(7)
  void clearDayTrade() => clearField(7);
}

class FutureDetailMessage extends $pb.GeneratedMessage {
  factory FutureDetailMessage({
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
  FutureDetailMessage._() : super();
  factory FutureDetailMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FutureDetailMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FutureDetailMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
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
  FutureDetailMessage clone() => FutureDetailMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FutureDetailMessage copyWith(void Function(FutureDetailMessage) updates) => super.copyWith((message) => updates(message as FutureDetailMessage)) as FutureDetailMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FutureDetailMessage create() => FutureDetailMessage._();
  FutureDetailMessage createEmptyInstance() => create();
  static $pb.PbList<FutureDetailMessage> createRepeated() => $pb.PbList<FutureDetailMessage>();
  @$core.pragma('dart2js:noInline')
  static FutureDetailMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FutureDetailMessage>(create);
  static FutureDetailMessage? _defaultInstance;

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

class OptionDetailMessage extends $pb.GeneratedMessage {
  factory OptionDetailMessage({
    $core.String? code,
    $core.String? symbol,
    $core.String? name,
    $core.String? category,
    $core.String? deliveryMonth,
    $core.String? deliveryDate,
    $core.double? strikePrice,
    $core.String? optionRight,
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
    if (strikePrice != null) {
      $result.strikePrice = strikePrice;
    }
    if (optionRight != null) {
      $result.optionRight = optionRight;
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
  OptionDetailMessage._() : super();
  factory OptionDetailMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OptionDetailMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OptionDetailMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'symbol')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'category')
    ..aOS(5, _omitFieldNames ? '' : 'deliveryMonth')
    ..aOS(6, _omitFieldNames ? '' : 'deliveryDate')
    ..a<$core.double>(7, _omitFieldNames ? '' : 'strikePrice', $pb.PbFieldType.OD)
    ..aOS(8, _omitFieldNames ? '' : 'optionRight')
    ..aOS(9, _omitFieldNames ? '' : 'underlyingKind')
    ..aInt64(10, _omitFieldNames ? '' : 'unit')
    ..a<$core.double>(11, _omitFieldNames ? '' : 'limitUp', $pb.PbFieldType.OD)
    ..a<$core.double>(12, _omitFieldNames ? '' : 'limitDown', $pb.PbFieldType.OD)
    ..a<$core.double>(13, _omitFieldNames ? '' : 'reference', $pb.PbFieldType.OD)
    ..aOS(14, _omitFieldNames ? '' : 'updateDate')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OptionDetailMessage clone() => OptionDetailMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OptionDetailMessage copyWith(void Function(OptionDetailMessage) updates) => super.copyWith((message) => updates(message as OptionDetailMessage)) as OptionDetailMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OptionDetailMessage create() => OptionDetailMessage._();
  OptionDetailMessage createEmptyInstance() => create();
  static $pb.PbList<OptionDetailMessage> createRepeated() => $pb.PbList<OptionDetailMessage>();
  @$core.pragma('dart2js:noInline')
  static OptionDetailMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OptionDetailMessage>(create);
  static OptionDetailMessage? _defaultInstance;

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
  $core.double get strikePrice => $_getN(6);
  @$pb.TagNumber(7)
  set strikePrice($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasStrikePrice() => $_has(6);
  @$pb.TagNumber(7)
  void clearStrikePrice() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get optionRight => $_getSZ(7);
  @$pb.TagNumber(8)
  set optionRight($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasOptionRight() => $_has(7);
  @$pb.TagNumber(8)
  void clearOptionRight() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get underlyingKind => $_getSZ(8);
  @$pb.TagNumber(9)
  set underlyingKind($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasUnderlyingKind() => $_has(8);
  @$pb.TagNumber(9)
  void clearUnderlyingKind() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get unit => $_getI64(9);
  @$pb.TagNumber(10)
  set unit($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasUnit() => $_has(9);
  @$pb.TagNumber(10)
  void clearUnit() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get limitUp => $_getN(10);
  @$pb.TagNumber(11)
  set limitUp($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasLimitUp() => $_has(10);
  @$pb.TagNumber(11)
  void clearLimitUp() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get limitDown => $_getN(11);
  @$pb.TagNumber(12)
  set limitDown($core.double v) { $_setDouble(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasLimitDown() => $_has(11);
  @$pb.TagNumber(12)
  void clearLimitDown() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get reference => $_getN(12);
  @$pb.TagNumber(13)
  set reference($core.double v) { $_setDouble(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasReference() => $_has(12);
  @$pb.TagNumber(13)
  void clearReference() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get updateDate => $_getSZ(13);
  @$pb.TagNumber(14)
  set updateDate($core.String v) { $_setString(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasUpdateDate() => $_has(13);
  @$pb.TagNumber(14)
  void clearUpdateDate() => clearField(14);
}

class BasicDataInterfaceApi {
  $pb.RpcClient _client;
  BasicDataInterfaceApi(this._client);

  $async.Future<$1.Empty> createLongConnection($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<$1.Empty>(ctx, 'BasicDataInterface', 'CreateLongConnection', request, $1.Empty())
  ;
  $async.Future<ShioajiUsage> checkUsage($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<ShioajiUsage>(ctx, 'BasicDataInterface', 'CheckUsage', request, ShioajiUsage())
  ;
  $async.Future<$1.Empty> login($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<$1.Empty>(ctx, 'BasicDataInterface', 'Login', request, $1.Empty())
  ;
  $async.Future<StockDetailResponse> getAllStockDetail($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<StockDetailResponse>(ctx, 'BasicDataInterface', 'GetAllStockDetail', request, StockDetailResponse())
  ;
  $async.Future<FutureDetailResponse> getAllFutureDetail($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<FutureDetailResponse>(ctx, 'BasicDataInterface', 'GetAllFutureDetail', request, FutureDetailResponse())
  ;
  $async.Future<OptionDetailResponse> getAllOptionDetail($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<OptionDetailResponse>(ctx, 'BasicDataInterface', 'GetAllOptionDetail', request, OptionDetailResponse())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

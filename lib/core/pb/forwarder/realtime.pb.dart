//
//  Generated code. Do not modify.
//  source: forwarder/realtime.proto
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
import 'entity.pb.dart' as $2;

class SnapshotResponse extends $pb.GeneratedMessage {
  factory SnapshotResponse({
    $core.Iterable<SnapshotMessage>? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  SnapshotResponse._() : super();
  factory SnapshotResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SnapshotResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SnapshotResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pc<SnapshotMessage>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: SnapshotMessage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SnapshotResponse clone() => SnapshotResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SnapshotResponse copyWith(void Function(SnapshotResponse) updates) => super.copyWith((message) => updates(message as SnapshotResponse)) as SnapshotResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SnapshotResponse create() => SnapshotResponse._();
  SnapshotResponse createEmptyInstance() => create();
  static $pb.PbList<SnapshotResponse> createRepeated() => $pb.PbList<SnapshotResponse>();
  @$core.pragma('dart2js:noInline')
  static SnapshotResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SnapshotResponse>(create);
  static SnapshotResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<SnapshotMessage> get data => $_getList(0);
}

class YahooFinancePrice extends $pb.GeneratedMessage {
  factory YahooFinancePrice({
    $core.double? price,
    $core.double? last,
  }) {
    final $result = create();
    if (price != null) {
      $result.price = price;
    }
    if (last != null) {
      $result.last = last;
    }
    return $result;
  }
  YahooFinancePrice._() : super();
  factory YahooFinancePrice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory YahooFinancePrice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'YahooFinancePrice', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'price', $pb.PbFieldType.OD)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'last', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  YahooFinancePrice clone() => YahooFinancePrice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  YahooFinancePrice copyWith(void Function(YahooFinancePrice) updates) => super.copyWith((message) => updates(message as YahooFinancePrice)) as YahooFinancePrice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static YahooFinancePrice create() => YahooFinancePrice._();
  YahooFinancePrice createEmptyInstance() => create();
  static $pb.PbList<YahooFinancePrice> createRepeated() => $pb.PbList<YahooFinancePrice>();
  @$core.pragma('dart2js:noInline')
  static YahooFinancePrice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<YahooFinancePrice>(create);
  static YahooFinancePrice? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get price => $_getN(0);
  @$pb.TagNumber(1)
  set price($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPrice() => $_has(0);
  @$pb.TagNumber(1)
  void clearPrice() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get last => $_getN(1);
  @$pb.TagNumber(2)
  set last($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLast() => $_has(1);
  @$pb.TagNumber(2)
  void clearLast() => clearField(2);
}

class VolumeRankRequest extends $pb.GeneratedMessage {
  factory VolumeRankRequest({
    $fixnum.Int64? count,
    $core.String? date,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    if (date != null) {
      $result.date = date;
    }
    return $result;
  }
  VolumeRankRequest._() : super();
  factory VolumeRankRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VolumeRankRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VolumeRankRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'count')
    ..aOS(2, _omitFieldNames ? '' : 'date')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VolumeRankRequest clone() => VolumeRankRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VolumeRankRequest copyWith(void Function(VolumeRankRequest) updates) => super.copyWith((message) => updates(message as VolumeRankRequest)) as VolumeRankRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VolumeRankRequest create() => VolumeRankRequest._();
  VolumeRankRequest createEmptyInstance() => create();
  static $pb.PbList<VolumeRankRequest> createRepeated() => $pb.PbList<VolumeRankRequest>();
  @$core.pragma('dart2js:noInline')
  static VolumeRankRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VolumeRankRequest>(create);
  static VolumeRankRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get count => $_getI64(0);
  @$pb.TagNumber(1)
  set count($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get date => $_getSZ(1);
  @$pb.TagNumber(2)
  set date($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => clearField(2);
}

class SnapshotMessage extends $pb.GeneratedMessage {
  factory SnapshotMessage({
    $fixnum.Int64? ts,
    $core.String? code,
    $core.String? exchange,
    $core.double? open,
    $core.double? high,
    $core.double? low,
    $core.double? close,
    $core.String? tickType,
    $core.double? changePrice,
    $core.double? changeRate,
    $core.String? changeType,
    $core.double? averagePrice,
    $fixnum.Int64? volume,
    $fixnum.Int64? totalVolume,
    $fixnum.Int64? amount,
    $fixnum.Int64? totalAmount,
    $core.double? yesterdayVolume,
    $core.double? buyPrice,
    $core.double? buyVolume,
    $core.double? sellPrice,
    $fixnum.Int64? sellVolume,
    $core.double? volumeRatio,
  }) {
    final $result = create();
    if (ts != null) {
      $result.ts = ts;
    }
    if (code != null) {
      $result.code = code;
    }
    if (exchange != null) {
      $result.exchange = exchange;
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
    if (close != null) {
      $result.close = close;
    }
    if (tickType != null) {
      $result.tickType = tickType;
    }
    if (changePrice != null) {
      $result.changePrice = changePrice;
    }
    if (changeRate != null) {
      $result.changeRate = changeRate;
    }
    if (changeType != null) {
      $result.changeType = changeType;
    }
    if (averagePrice != null) {
      $result.averagePrice = averagePrice;
    }
    if (volume != null) {
      $result.volume = volume;
    }
    if (totalVolume != null) {
      $result.totalVolume = totalVolume;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (totalAmount != null) {
      $result.totalAmount = totalAmount;
    }
    if (yesterdayVolume != null) {
      $result.yesterdayVolume = yesterdayVolume;
    }
    if (buyPrice != null) {
      $result.buyPrice = buyPrice;
    }
    if (buyVolume != null) {
      $result.buyVolume = buyVolume;
    }
    if (sellPrice != null) {
      $result.sellPrice = sellPrice;
    }
    if (sellVolume != null) {
      $result.sellVolume = sellVolume;
    }
    if (volumeRatio != null) {
      $result.volumeRatio = volumeRatio;
    }
    return $result;
  }
  SnapshotMessage._() : super();
  factory SnapshotMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SnapshotMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SnapshotMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'ts')
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..aOS(3, _omitFieldNames ? '' : 'exchange')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'open', $pb.PbFieldType.OD)
    ..a<$core.double>(5, _omitFieldNames ? '' : 'high', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'low', $pb.PbFieldType.OD)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'close', $pb.PbFieldType.OD)
    ..aOS(8, _omitFieldNames ? '' : 'tickType')
    ..a<$core.double>(9, _omitFieldNames ? '' : 'changePrice', $pb.PbFieldType.OD)
    ..a<$core.double>(10, _omitFieldNames ? '' : 'changeRate', $pb.PbFieldType.OD)
    ..aOS(11, _omitFieldNames ? '' : 'changeType')
    ..a<$core.double>(12, _omitFieldNames ? '' : 'averagePrice', $pb.PbFieldType.OD)
    ..aInt64(13, _omitFieldNames ? '' : 'volume')
    ..aInt64(14, _omitFieldNames ? '' : 'totalVolume')
    ..aInt64(15, _omitFieldNames ? '' : 'amount')
    ..aInt64(16, _omitFieldNames ? '' : 'totalAmount')
    ..a<$core.double>(17, _omitFieldNames ? '' : 'yesterdayVolume', $pb.PbFieldType.OD)
    ..a<$core.double>(18, _omitFieldNames ? '' : 'buyPrice', $pb.PbFieldType.OD)
    ..a<$core.double>(19, _omitFieldNames ? '' : 'buyVolume', $pb.PbFieldType.OD)
    ..a<$core.double>(20, _omitFieldNames ? '' : 'sellPrice', $pb.PbFieldType.OD)
    ..aInt64(21, _omitFieldNames ? '' : 'sellVolume')
    ..a<$core.double>(22, _omitFieldNames ? '' : 'volumeRatio', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SnapshotMessage clone() => SnapshotMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SnapshotMessage copyWith(void Function(SnapshotMessage) updates) => super.copyWith((message) => updates(message as SnapshotMessage)) as SnapshotMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SnapshotMessage create() => SnapshotMessage._();
  SnapshotMessage createEmptyInstance() => create();
  static $pb.PbList<SnapshotMessage> createRepeated() => $pb.PbList<SnapshotMessage>();
  @$core.pragma('dart2js:noInline')
  static SnapshotMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SnapshotMessage>(create);
  static SnapshotMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get ts => $_getI64(0);
  @$pb.TagNumber(1)
  set ts($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTs() => $_has(0);
  @$pb.TagNumber(1)
  void clearTs() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get code => $_getSZ(1);
  @$pb.TagNumber(2)
  set code($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCode() => $_has(1);
  @$pb.TagNumber(2)
  void clearCode() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get exchange => $_getSZ(2);
  @$pb.TagNumber(3)
  set exchange($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExchange() => $_has(2);
  @$pb.TagNumber(3)
  void clearExchange() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get open => $_getN(3);
  @$pb.TagNumber(4)
  set open($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOpen() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpen() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get high => $_getN(4);
  @$pb.TagNumber(5)
  set high($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHigh() => $_has(4);
  @$pb.TagNumber(5)
  void clearHigh() => clearField(5);

  @$pb.TagNumber(6)
  $core.double get low => $_getN(5);
  @$pb.TagNumber(6)
  set low($core.double v) { $_setDouble(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLow() => $_has(5);
  @$pb.TagNumber(6)
  void clearLow() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get close => $_getN(6);
  @$pb.TagNumber(7)
  set close($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasClose() => $_has(6);
  @$pb.TagNumber(7)
  void clearClose() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get tickType => $_getSZ(7);
  @$pb.TagNumber(8)
  set tickType($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasTickType() => $_has(7);
  @$pb.TagNumber(8)
  void clearTickType() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get changePrice => $_getN(8);
  @$pb.TagNumber(9)
  set changePrice($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasChangePrice() => $_has(8);
  @$pb.TagNumber(9)
  void clearChangePrice() => clearField(9);

  @$pb.TagNumber(10)
  $core.double get changeRate => $_getN(9);
  @$pb.TagNumber(10)
  set changeRate($core.double v) { $_setDouble(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasChangeRate() => $_has(9);
  @$pb.TagNumber(10)
  void clearChangeRate() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get changeType => $_getSZ(10);
  @$pb.TagNumber(11)
  set changeType($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasChangeType() => $_has(10);
  @$pb.TagNumber(11)
  void clearChangeType() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get averagePrice => $_getN(11);
  @$pb.TagNumber(12)
  set averagePrice($core.double v) { $_setDouble(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasAveragePrice() => $_has(11);
  @$pb.TagNumber(12)
  void clearAveragePrice() => clearField(12);

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
  $fixnum.Int64 get amount => $_getI64(14);
  @$pb.TagNumber(15)
  set amount($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasAmount() => $_has(14);
  @$pb.TagNumber(15)
  void clearAmount() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get totalAmount => $_getI64(15);
  @$pb.TagNumber(16)
  set totalAmount($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasTotalAmount() => $_has(15);
  @$pb.TagNumber(16)
  void clearTotalAmount() => clearField(16);

  @$pb.TagNumber(17)
  $core.double get yesterdayVolume => $_getN(16);
  @$pb.TagNumber(17)
  set yesterdayVolume($core.double v) { $_setDouble(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasYesterdayVolume() => $_has(16);
  @$pb.TagNumber(17)
  void clearYesterdayVolume() => clearField(17);

  @$pb.TagNumber(18)
  $core.double get buyPrice => $_getN(17);
  @$pb.TagNumber(18)
  set buyPrice($core.double v) { $_setDouble(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasBuyPrice() => $_has(17);
  @$pb.TagNumber(18)
  void clearBuyPrice() => clearField(18);

  @$pb.TagNumber(19)
  $core.double get buyVolume => $_getN(18);
  @$pb.TagNumber(19)
  set buyVolume($core.double v) { $_setDouble(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasBuyVolume() => $_has(18);
  @$pb.TagNumber(19)
  void clearBuyVolume() => clearField(19);

  @$pb.TagNumber(20)
  $core.double get sellPrice => $_getN(19);
  @$pb.TagNumber(20)
  set sellPrice($core.double v) { $_setDouble(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasSellPrice() => $_has(19);
  @$pb.TagNumber(20)
  void clearSellPrice() => clearField(20);

  @$pb.TagNumber(21)
  $fixnum.Int64 get sellVolume => $_getI64(20);
  @$pb.TagNumber(21)
  set sellVolume($fixnum.Int64 v) { $_setInt64(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasSellVolume() => $_has(20);
  @$pb.TagNumber(21)
  void clearSellVolume() => clearField(21);

  @$pb.TagNumber(22)
  $core.double get volumeRatio => $_getN(21);
  @$pb.TagNumber(22)
  set volumeRatio($core.double v) { $_setDouble(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasVolumeRatio() => $_has(21);
  @$pb.TagNumber(22)
  void clearVolumeRatio() => clearField(22);
}

class StockVolumeRankResponse extends $pb.GeneratedMessage {
  factory StockVolumeRankResponse({
    $core.Iterable<StockVolumeRankMessage>? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  StockVolumeRankResponse._() : super();
  factory StockVolumeRankResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StockVolumeRankResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StockVolumeRankResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pc<StockVolumeRankMessage>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: StockVolumeRankMessage.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StockVolumeRankResponse clone() => StockVolumeRankResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StockVolumeRankResponse copyWith(void Function(StockVolumeRankResponse) updates) => super.copyWith((message) => updates(message as StockVolumeRankResponse)) as StockVolumeRankResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockVolumeRankResponse create() => StockVolumeRankResponse._();
  StockVolumeRankResponse createEmptyInstance() => create();
  static $pb.PbList<StockVolumeRankResponse> createRepeated() => $pb.PbList<StockVolumeRankResponse>();
  @$core.pragma('dart2js:noInline')
  static StockVolumeRankResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StockVolumeRankResponse>(create);
  static StockVolumeRankResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<StockVolumeRankMessage> get data => $_getList(0);
}

class StockVolumeRankMessage extends $pb.GeneratedMessage {
  factory StockVolumeRankMessage({
    $core.String? date,
    $core.String? code,
    $core.String? name,
    $fixnum.Int64? ts,
    $core.double? open,
    $core.double? high,
    $core.double? low,
    $core.double? close,
    $core.double? priceRange,
    $fixnum.Int64? tickType,
    $core.double? changePrice,
    $fixnum.Int64? changeType,
    $core.double? averagePrice,
    $fixnum.Int64? volume,
    $fixnum.Int64? totalVolume,
    $fixnum.Int64? amount,
    $fixnum.Int64? totalAmount,
    $fixnum.Int64? yesterdayVolume,
    $core.double? volumeRatio,
    $core.double? buyPrice,
    $fixnum.Int64? buyVolume,
    $core.double? sellPrice,
    $fixnum.Int64? sellVolume,
    $fixnum.Int64? bidOrders,
    $fixnum.Int64? bidVolumes,
    $fixnum.Int64? askOrders,
    $fixnum.Int64? askVolumes,
  }) {
    final $result = create();
    if (date != null) {
      $result.date = date;
    }
    if (code != null) {
      $result.code = code;
    }
    if (name != null) {
      $result.name = name;
    }
    if (ts != null) {
      $result.ts = ts;
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
    if (close != null) {
      $result.close = close;
    }
    if (priceRange != null) {
      $result.priceRange = priceRange;
    }
    if (tickType != null) {
      $result.tickType = tickType;
    }
    if (changePrice != null) {
      $result.changePrice = changePrice;
    }
    if (changeType != null) {
      $result.changeType = changeType;
    }
    if (averagePrice != null) {
      $result.averagePrice = averagePrice;
    }
    if (volume != null) {
      $result.volume = volume;
    }
    if (totalVolume != null) {
      $result.totalVolume = totalVolume;
    }
    if (amount != null) {
      $result.amount = amount;
    }
    if (totalAmount != null) {
      $result.totalAmount = totalAmount;
    }
    if (yesterdayVolume != null) {
      $result.yesterdayVolume = yesterdayVolume;
    }
    if (volumeRatio != null) {
      $result.volumeRatio = volumeRatio;
    }
    if (buyPrice != null) {
      $result.buyPrice = buyPrice;
    }
    if (buyVolume != null) {
      $result.buyVolume = buyVolume;
    }
    if (sellPrice != null) {
      $result.sellPrice = sellPrice;
    }
    if (sellVolume != null) {
      $result.sellVolume = sellVolume;
    }
    if (bidOrders != null) {
      $result.bidOrders = bidOrders;
    }
    if (bidVolumes != null) {
      $result.bidVolumes = bidVolumes;
    }
    if (askOrders != null) {
      $result.askOrders = askOrders;
    }
    if (askVolumes != null) {
      $result.askVolumes = askVolumes;
    }
    return $result;
  }
  StockVolumeRankMessage._() : super();
  factory StockVolumeRankMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StockVolumeRankMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StockVolumeRankMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'date')
    ..aOS(2, _omitFieldNames ? '' : 'code')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aInt64(4, _omitFieldNames ? '' : 'ts')
    ..a<$core.double>(5, _omitFieldNames ? '' : 'open', $pb.PbFieldType.OD)
    ..a<$core.double>(6, _omitFieldNames ? '' : 'high', $pb.PbFieldType.OD)
    ..a<$core.double>(7, _omitFieldNames ? '' : 'low', $pb.PbFieldType.OD)
    ..a<$core.double>(8, _omitFieldNames ? '' : 'close', $pb.PbFieldType.OD)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'priceRange', $pb.PbFieldType.OD)
    ..aInt64(10, _omitFieldNames ? '' : 'tickType')
    ..a<$core.double>(11, _omitFieldNames ? '' : 'changePrice', $pb.PbFieldType.OD)
    ..aInt64(12, _omitFieldNames ? '' : 'changeType')
    ..a<$core.double>(13, _omitFieldNames ? '' : 'averagePrice', $pb.PbFieldType.OD)
    ..aInt64(14, _omitFieldNames ? '' : 'volume')
    ..aInt64(15, _omitFieldNames ? '' : 'totalVolume')
    ..aInt64(16, _omitFieldNames ? '' : 'amount')
    ..aInt64(17, _omitFieldNames ? '' : 'totalAmount')
    ..aInt64(18, _omitFieldNames ? '' : 'yesterdayVolume')
    ..a<$core.double>(19, _omitFieldNames ? '' : 'volumeRatio', $pb.PbFieldType.OD)
    ..a<$core.double>(20, _omitFieldNames ? '' : 'buyPrice', $pb.PbFieldType.OD)
    ..aInt64(21, _omitFieldNames ? '' : 'buyVolume')
    ..a<$core.double>(22, _omitFieldNames ? '' : 'sellPrice', $pb.PbFieldType.OD)
    ..aInt64(23, _omitFieldNames ? '' : 'sellVolume')
    ..aInt64(24, _omitFieldNames ? '' : 'bidOrders')
    ..aInt64(25, _omitFieldNames ? '' : 'bidVolumes')
    ..aInt64(26, _omitFieldNames ? '' : 'askOrders')
    ..aInt64(27, _omitFieldNames ? '' : 'askVolumes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StockVolumeRankMessage clone() => StockVolumeRankMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StockVolumeRankMessage copyWith(void Function(StockVolumeRankMessage) updates) => super.copyWith((message) => updates(message as StockVolumeRankMessage)) as StockVolumeRankMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockVolumeRankMessage create() => StockVolumeRankMessage._();
  StockVolumeRankMessage createEmptyInstance() => create();
  static $pb.PbList<StockVolumeRankMessage> createRepeated() => $pb.PbList<StockVolumeRankMessage>();
  @$core.pragma('dart2js:noInline')
  static StockVolumeRankMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StockVolumeRankMessage>(create);
  static StockVolumeRankMessage? _defaultInstance;

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
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get ts => $_getI64(3);
  @$pb.TagNumber(4)
  set ts($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTs() => $_has(3);
  @$pb.TagNumber(4)
  void clearTs() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get open => $_getN(4);
  @$pb.TagNumber(5)
  set open($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasOpen() => $_has(4);
  @$pb.TagNumber(5)
  void clearOpen() => clearField(5);

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
  $core.double get close => $_getN(7);
  @$pb.TagNumber(8)
  set close($core.double v) { $_setDouble(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasClose() => $_has(7);
  @$pb.TagNumber(8)
  void clearClose() => clearField(8);

  @$pb.TagNumber(9)
  $core.double get priceRange => $_getN(8);
  @$pb.TagNumber(9)
  set priceRange($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPriceRange() => $_has(8);
  @$pb.TagNumber(9)
  void clearPriceRange() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get tickType => $_getI64(9);
  @$pb.TagNumber(10)
  set tickType($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTickType() => $_has(9);
  @$pb.TagNumber(10)
  void clearTickType() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get changePrice => $_getN(10);
  @$pb.TagNumber(11)
  set changePrice($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasChangePrice() => $_has(10);
  @$pb.TagNumber(11)
  void clearChangePrice() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get changeType => $_getI64(11);
  @$pb.TagNumber(12)
  set changeType($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasChangeType() => $_has(11);
  @$pb.TagNumber(12)
  void clearChangeType() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get averagePrice => $_getN(12);
  @$pb.TagNumber(13)
  set averagePrice($core.double v) { $_setDouble(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasAveragePrice() => $_has(12);
  @$pb.TagNumber(13)
  void clearAveragePrice() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get volume => $_getI64(13);
  @$pb.TagNumber(14)
  set volume($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasVolume() => $_has(13);
  @$pb.TagNumber(14)
  void clearVolume() => clearField(14);

  @$pb.TagNumber(15)
  $fixnum.Int64 get totalVolume => $_getI64(14);
  @$pb.TagNumber(15)
  set totalVolume($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasTotalVolume() => $_has(14);
  @$pb.TagNumber(15)
  void clearTotalVolume() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get amount => $_getI64(15);
  @$pb.TagNumber(16)
  set amount($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasAmount() => $_has(15);
  @$pb.TagNumber(16)
  void clearAmount() => clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get totalAmount => $_getI64(16);
  @$pb.TagNumber(17)
  set totalAmount($fixnum.Int64 v) { $_setInt64(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasTotalAmount() => $_has(16);
  @$pb.TagNumber(17)
  void clearTotalAmount() => clearField(17);

  @$pb.TagNumber(18)
  $fixnum.Int64 get yesterdayVolume => $_getI64(17);
  @$pb.TagNumber(18)
  set yesterdayVolume($fixnum.Int64 v) { $_setInt64(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasYesterdayVolume() => $_has(17);
  @$pb.TagNumber(18)
  void clearYesterdayVolume() => clearField(18);

  @$pb.TagNumber(19)
  $core.double get volumeRatio => $_getN(18);
  @$pb.TagNumber(19)
  set volumeRatio($core.double v) { $_setDouble(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasVolumeRatio() => $_has(18);
  @$pb.TagNumber(19)
  void clearVolumeRatio() => clearField(19);

  @$pb.TagNumber(20)
  $core.double get buyPrice => $_getN(19);
  @$pb.TagNumber(20)
  set buyPrice($core.double v) { $_setDouble(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasBuyPrice() => $_has(19);
  @$pb.TagNumber(20)
  void clearBuyPrice() => clearField(20);

  @$pb.TagNumber(21)
  $fixnum.Int64 get buyVolume => $_getI64(20);
  @$pb.TagNumber(21)
  set buyVolume($fixnum.Int64 v) { $_setInt64(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasBuyVolume() => $_has(20);
  @$pb.TagNumber(21)
  void clearBuyVolume() => clearField(21);

  @$pb.TagNumber(22)
  $core.double get sellPrice => $_getN(21);
  @$pb.TagNumber(22)
  set sellPrice($core.double v) { $_setDouble(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasSellPrice() => $_has(21);
  @$pb.TagNumber(22)
  void clearSellPrice() => clearField(22);

  @$pb.TagNumber(23)
  $fixnum.Int64 get sellVolume => $_getI64(22);
  @$pb.TagNumber(23)
  set sellVolume($fixnum.Int64 v) { $_setInt64(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasSellVolume() => $_has(22);
  @$pb.TagNumber(23)
  void clearSellVolume() => clearField(23);

  @$pb.TagNumber(24)
  $fixnum.Int64 get bidOrders => $_getI64(23);
  @$pb.TagNumber(24)
  set bidOrders($fixnum.Int64 v) { $_setInt64(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasBidOrders() => $_has(23);
  @$pb.TagNumber(24)
  void clearBidOrders() => clearField(24);

  @$pb.TagNumber(25)
  $fixnum.Int64 get bidVolumes => $_getI64(24);
  @$pb.TagNumber(25)
  set bidVolumes($fixnum.Int64 v) { $_setInt64(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasBidVolumes() => $_has(24);
  @$pb.TagNumber(25)
  void clearBidVolumes() => clearField(25);

  @$pb.TagNumber(26)
  $fixnum.Int64 get askOrders => $_getI64(25);
  @$pb.TagNumber(26)
  set askOrders($fixnum.Int64 v) { $_setInt64(25, v); }
  @$pb.TagNumber(26)
  $core.bool hasAskOrders() => $_has(25);
  @$pb.TagNumber(26)
  void clearAskOrders() => clearField(26);

  @$pb.TagNumber(27)
  $fixnum.Int64 get askVolumes => $_getI64(26);
  @$pb.TagNumber(27)
  set askVolumes($fixnum.Int64 v) { $_setInt64(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasAskVolumes() => $_has(26);
  @$pb.TagNumber(27)
  void clearAskVolumes() => clearField(27);
}

class RealTimeDataInterfaceApi {
  $pb.RpcClient _client;
  RealTimeDataInterfaceApi(this._client);

  $async.Future<SnapshotResponse> getAllStockSnapshot($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<SnapshotResponse>(ctx, 'RealTimeDataInterface', 'GetAllStockSnapshot', request, SnapshotResponse())
  ;
  $async.Future<SnapshotResponse> getStockSnapshotByNumArr($pb.ClientContext? ctx, $2.StockNumArr request) =>
    _client.invoke<SnapshotResponse>(ctx, 'RealTimeDataInterface', 'GetStockSnapshotByNumArr', request, SnapshotResponse())
  ;
  $async.Future<SnapshotResponse> getStockSnapshotTSE($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<SnapshotResponse>(ctx, 'RealTimeDataInterface', 'GetStockSnapshotTSE', request, SnapshotResponse())
  ;
  $async.Future<SnapshotResponse> getStockSnapshotOTC($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<SnapshotResponse>(ctx, 'RealTimeDataInterface', 'GetStockSnapshotOTC', request, SnapshotResponse())
  ;
  $async.Future<YahooFinancePrice> getNasdaq($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<YahooFinancePrice>(ctx, 'RealTimeDataInterface', 'GetNasdaq', request, YahooFinancePrice())
  ;
  $async.Future<YahooFinancePrice> getNasdaqFuture($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<YahooFinancePrice>(ctx, 'RealTimeDataInterface', 'GetNasdaqFuture', request, YahooFinancePrice())
  ;
  $async.Future<StockVolumeRankResponse> getStockVolumeRank($pb.ClientContext? ctx, VolumeRankRequest request) =>
    _client.invoke<StockVolumeRankResponse>(ctx, 'RealTimeDataInterface', 'GetStockVolumeRank', request, StockVolumeRankResponse())
  ;
  $async.Future<SnapshotResponse> getFutureSnapshotByCodeArr($pb.ClientContext? ctx, $2.FutureCodeArr request) =>
    _client.invoke<SnapshotResponse>(ctx, 'RealTimeDataInterface', 'GetFutureSnapshotByCodeArr', request, SnapshotResponse())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

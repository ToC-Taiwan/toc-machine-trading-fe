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

import '../forwarder/basic.pb.dart' as $4;
import '../forwarder/history.pb.dart' as $0;
import '../forwarder/mq.pb.dart' as $5;
import '../forwarder/realtime.pb.dart' as $3;
import 'app.pbenum.dart';

export 'app.pbenum.dart';

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

class PickFuture extends $pb.GeneratedMessage {
  factory PickFuture({
    $core.String? code,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  PickFuture._() : super();
  factory PickFuture.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PickFuture.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PickFuture', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PickFuture clone() => PickFuture()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PickFuture copyWith(void Function(PickFuture) updates) => super.copyWith((message) => updates(message as PickFuture)) as PickFuture;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PickFuture create() => PickFuture._();
  PickFuture createEmptyInstance() => create();
  static $pb.PbList<PickFuture> createRepeated() => $pb.PbList<PickFuture>();
  @$core.pragma('dart2js:noInline')
  static PickFuture getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PickFuture>(create);
  static PickFuture? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);
}

enum WSMessage_Data {
  futureDetail, 
  futureTick, 
  historyKbar, 
  snapshot, 
  tradeIndex, 
  notSet
}

class WSMessage extends $pb.GeneratedMessage {
  factory WSMessage({
    $4.FutureDetailMessage? futureDetail,
    $5.FutureRealTimeTickMessage? futureTick,
    $0.HistoryKbarResponse? historyKbar,
    $3.SnapshotMessage? snapshot,
    TradeIndex? tradeIndex,
  }) {
    final $result = create();
    if (futureDetail != null) {
      $result.futureDetail = futureDetail;
    }
    if (futureTick != null) {
      $result.futureTick = futureTick;
    }
    if (historyKbar != null) {
      $result.historyKbar = historyKbar;
    }
    if (snapshot != null) {
      $result.snapshot = snapshot;
    }
    if (tradeIndex != null) {
      $result.tradeIndex = tradeIndex;
    }
    return $result;
  }
  WSMessage._() : super();
  factory WSMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WSMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static const $core.Map<$core.int, WSMessage_Data> _WSMessage_DataByTag = {
    1 : WSMessage_Data.futureDetail,
    2 : WSMessage_Data.futureTick,
    3 : WSMessage_Data.historyKbar,
    4 : WSMessage_Data.snapshot,
    5 : WSMessage_Data.tradeIndex,
    0 : WSMessage_Data.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WSMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOM<$4.FutureDetailMessage>(1, _omitFieldNames ? '' : 'futureDetail', subBuilder: $4.FutureDetailMessage.create)
    ..aOM<$5.FutureRealTimeTickMessage>(2, _omitFieldNames ? '' : 'futureTick', subBuilder: $5.FutureRealTimeTickMessage.create)
    ..aOM<$0.HistoryKbarResponse>(3, _omitFieldNames ? '' : 'historyKbar', subBuilder: $0.HistoryKbarResponse.create)
    ..aOM<$3.SnapshotMessage>(4, _omitFieldNames ? '' : 'snapshot', subBuilder: $3.SnapshotMessage.create)
    ..aOM<TradeIndex>(5, _omitFieldNames ? '' : 'tradeIndex', subBuilder: TradeIndex.create)
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
  $4.FutureDetailMessage get futureDetail => $_getN(0);
  @$pb.TagNumber(1)
  set futureDetail($4.FutureDetailMessage v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFutureDetail() => $_has(0);
  @$pb.TagNumber(1)
  void clearFutureDetail() => clearField(1);
  @$pb.TagNumber(1)
  $4.FutureDetailMessage ensureFutureDetail() => $_ensure(0);

  @$pb.TagNumber(2)
  $5.FutureRealTimeTickMessage get futureTick => $_getN(1);
  @$pb.TagNumber(2)
  set futureTick($5.FutureRealTimeTickMessage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFutureTick() => $_has(1);
  @$pb.TagNumber(2)
  void clearFutureTick() => clearField(2);
  @$pb.TagNumber(2)
  $5.FutureRealTimeTickMessage ensureFutureTick() => $_ensure(1);

  @$pb.TagNumber(3)
  $0.HistoryKbarResponse get historyKbar => $_getN(2);
  @$pb.TagNumber(3)
  set historyKbar($0.HistoryKbarResponse v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasHistoryKbar() => $_has(2);
  @$pb.TagNumber(3)
  void clearHistoryKbar() => clearField(3);
  @$pb.TagNumber(3)
  $0.HistoryKbarResponse ensureHistoryKbar() => $_ensure(2);

  @$pb.TagNumber(4)
  $3.SnapshotMessage get snapshot => $_getN(3);
  @$pb.TagNumber(4)
  set snapshot($3.SnapshotMessage v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSnapshot() => $_has(3);
  @$pb.TagNumber(4)
  void clearSnapshot() => clearField(4);
  @$pb.TagNumber(4)
  $3.SnapshotMessage ensureSnapshot() => $_ensure(3);

  @$pb.TagNumber(5)
  TradeIndex get tradeIndex => $_getN(4);
  @$pb.TagNumber(5)
  set tradeIndex(TradeIndex v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasTradeIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearTradeIndex() => clearField(5);
  @$pb.TagNumber(5)
  TradeIndex ensureTradeIndex() => $_ensure(4);
}

class TradeIndex extends $pb.GeneratedMessage {
  factory TradeIndex({
    IndexStatus? tse,
    IndexStatus? otc,
    IndexStatus? nasdaq,
    IndexStatus? nf,
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
  TradeIndex._() : super();
  factory TradeIndex.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TradeIndex.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TradeIndex', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..aOM<IndexStatus>(1, _omitFieldNames ? '' : 'tse', subBuilder: IndexStatus.create)
    ..aOM<IndexStatus>(2, _omitFieldNames ? '' : 'otc', subBuilder: IndexStatus.create)
    ..aOM<IndexStatus>(3, _omitFieldNames ? '' : 'nasdaq', subBuilder: IndexStatus.create)
    ..aOM<IndexStatus>(4, _omitFieldNames ? '' : 'nf', subBuilder: IndexStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TradeIndex clone() => TradeIndex()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TradeIndex copyWith(void Function(TradeIndex) updates) => super.copyWith((message) => updates(message as TradeIndex)) as TradeIndex;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TradeIndex create() => TradeIndex._();
  TradeIndex createEmptyInstance() => create();
  static $pb.PbList<TradeIndex> createRepeated() => $pb.PbList<TradeIndex>();
  @$core.pragma('dart2js:noInline')
  static TradeIndex getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TradeIndex>(create);
  static TradeIndex? _defaultInstance;

  @$pb.TagNumber(1)
  IndexStatus get tse => $_getN(0);
  @$pb.TagNumber(1)
  set tse(IndexStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTse() => $_has(0);
  @$pb.TagNumber(1)
  void clearTse() => clearField(1);
  @$pb.TagNumber(1)
  IndexStatus ensureTse() => $_ensure(0);

  @$pb.TagNumber(2)
  IndexStatus get otc => $_getN(1);
  @$pb.TagNumber(2)
  set otc(IndexStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOtc() => $_has(1);
  @$pb.TagNumber(2)
  void clearOtc() => clearField(2);
  @$pb.TagNumber(2)
  IndexStatus ensureOtc() => $_ensure(1);

  @$pb.TagNumber(3)
  IndexStatus get nasdaq => $_getN(2);
  @$pb.TagNumber(3)
  set nasdaq(IndexStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNasdaq() => $_has(2);
  @$pb.TagNumber(3)
  void clearNasdaq() => clearField(3);
  @$pb.TagNumber(3)
  IndexStatus ensureNasdaq() => $_ensure(2);

  @$pb.TagNumber(4)
  IndexStatus get nf => $_getN(3);
  @$pb.TagNumber(4)
  set nf(IndexStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasNf() => $_has(3);
  @$pb.TagNumber(4)
  void clearNf() => clearField(4);
  @$pb.TagNumber(4)
  IndexStatus ensureNf() => $_ensure(3);
}

class IndexStatus extends $pb.GeneratedMessage {
  factory IndexStatus({
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
  IndexStatus._() : super();
  factory IndexStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IndexStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IndexStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'app'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'breakCount')
    ..a<$core.double>(2, _omitFieldNames ? '' : 'priceChg', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IndexStatus clone() => IndexStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IndexStatus copyWith(void Function(IndexStatus) updates) => super.copyWith((message) => updates(message as IndexStatus)) as IndexStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IndexStatus create() => IndexStatus._();
  IndexStatus createEmptyInstance() => create();
  static $pb.PbList<IndexStatus> createRepeated() => $pb.PbList<IndexStatus>();
  @$core.pragma('dart2js:noInline')
  static IndexStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IndexStatus>(create);
  static IndexStatus? _defaultInstance;

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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

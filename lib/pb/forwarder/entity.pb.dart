//
//  Generated code. Do not modify.
//  source: forwarder/entity.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class StockNumArr extends $pb.GeneratedMessage {
  factory StockNumArr({
    $core.Iterable<$core.String>? stockNumArr,
    $core.bool? odd,
  }) {
    final $result = create();
    if (stockNumArr != null) {
      $result.stockNumArr.addAll(stockNumArr);
    }
    if (odd != null) {
      $result.odd = odd;
    }
    return $result;
  }
  StockNumArr._() : super();
  factory StockNumArr.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StockNumArr.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StockNumArr', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'stockNumArr')
    ..aOB(2, _omitFieldNames ? '' : 'odd')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StockNumArr clone() => StockNumArr()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StockNumArr copyWith(void Function(StockNumArr) updates) => super.copyWith((message) => updates(message as StockNumArr)) as StockNumArr;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StockNumArr create() => StockNumArr._();
  StockNumArr createEmptyInstance() => create();
  static $pb.PbList<StockNumArr> createRepeated() => $pb.PbList<StockNumArr>();
  @$core.pragma('dart2js:noInline')
  static StockNumArr getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StockNumArr>(create);
  static StockNumArr? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get stockNumArr => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get odd => $_getBF(1);
  @$pb.TagNumber(2)
  set odd($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOdd() => $_has(1);
  @$pb.TagNumber(2)
  void clearOdd() => clearField(2);
}

class FutureCodeArr extends $pb.GeneratedMessage {
  factory FutureCodeArr({
    $core.Iterable<$core.String>? futureCodeArr,
  }) {
    final $result = create();
    if (futureCodeArr != null) {
      $result.futureCodeArr.addAll(futureCodeArr);
    }
    return $result;
  }
  FutureCodeArr._() : super();
  factory FutureCodeArr.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FutureCodeArr.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FutureCodeArr', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'futureCodeArr')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FutureCodeArr clone() => FutureCodeArr()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FutureCodeArr copyWith(void Function(FutureCodeArr) updates) => super.copyWith((message) => updates(message as FutureCodeArr)) as FutureCodeArr;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FutureCodeArr create() => FutureCodeArr._();
  FutureCodeArr createEmptyInstance() => create();
  static $pb.PbList<FutureCodeArr> createRepeated() => $pb.PbList<FutureCodeArr>();
  @$core.pragma('dart2js:noInline')
  static FutureCodeArr getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FutureCodeArr>(create);
  static FutureCodeArr? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get futureCodeArr => $_getList(0);
}

class ErrorMessage extends $pb.GeneratedMessage {
  factory ErrorMessage({
    $core.String? err,
  }) {
    final $result = create();
    if (err != null) {
      $result.err = err;
    }
    return $result;
  }
  ErrorMessage._() : super();
  factory ErrorMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrorMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ErrorMessage', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'err')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrorMessage clone() => ErrorMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrorMessage copyWith(void Function(ErrorMessage) updates) => super.copyWith((message) => updates(message as ErrorMessage)) as ErrorMessage;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrorMessage create() => ErrorMessage._();
  ErrorMessage createEmptyInstance() => create();
  static $pb.PbList<ErrorMessage> createRepeated() => $pb.PbList<ErrorMessage>();
  @$core.pragma('dart2js:noInline')
  static ErrorMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrorMessage>(create);
  static ErrorMessage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get err => $_getSZ(0);
  @$pb.TagNumber(1)
  set err($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasErr() => $_has(0);
  @$pb.TagNumber(1)
  void clearErr() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

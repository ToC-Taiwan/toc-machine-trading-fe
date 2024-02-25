//
//  Generated code. Do not modify.
//  source: forwarder/subscribe.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/empty.pb.dart' as $1;
import 'entity.pb.dart' as $2;

class SubscribeResponse extends $pb.GeneratedMessage {
  factory SubscribeResponse({
    $core.Iterable<$core.String>? failArr,
  }) {
    final $result = create();
    if (failArr != null) {
      $result.failArr.addAll(failArr);
    }
    return $result;
  }
  SubscribeResponse._() : super();
  factory SubscribeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscribeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubscribeResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'forwarder'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'failArr')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscribeResponse clone() => SubscribeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscribeResponse copyWith(void Function(SubscribeResponse) updates) => super.copyWith((message) => updates(message as SubscribeResponse)) as SubscribeResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubscribeResponse create() => SubscribeResponse._();
  SubscribeResponse createEmptyInstance() => create();
  static $pb.PbList<SubscribeResponse> createRepeated() => $pb.PbList<SubscribeResponse>();
  @$core.pragma('dart2js:noInline')
  static SubscribeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscribeResponse>(create);
  static SubscribeResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get failArr => $_getList(0);
}

class SubscribeDataInterfaceApi {
  $pb.RpcClient _client;
  SubscribeDataInterfaceApi(this._client);

  $async.Future<SubscribeResponse> subscribeStockTick($pb.ClientContext? ctx, $2.StockNumArr request) =>
    _client.invoke<SubscribeResponse>(ctx, 'SubscribeDataInterface', 'SubscribeStockTick', request, SubscribeResponse())
  ;
  $async.Future<SubscribeResponse> unSubscribeStockTick($pb.ClientContext? ctx, $2.StockNumArr request) =>
    _client.invoke<SubscribeResponse>(ctx, 'SubscribeDataInterface', 'UnSubscribeStockTick', request, SubscribeResponse())
  ;
  $async.Future<SubscribeResponse> subscribeStockBidAsk($pb.ClientContext? ctx, $2.StockNumArr request) =>
    _client.invoke<SubscribeResponse>(ctx, 'SubscribeDataInterface', 'SubscribeStockBidAsk', request, SubscribeResponse())
  ;
  $async.Future<SubscribeResponse> unSubscribeStockBidAsk($pb.ClientContext? ctx, $2.StockNumArr request) =>
    _client.invoke<SubscribeResponse>(ctx, 'SubscribeDataInterface', 'UnSubscribeStockBidAsk', request, SubscribeResponse())
  ;
  $async.Future<SubscribeResponse> subscribeFutureTick($pb.ClientContext? ctx, $2.FutureCodeArr request) =>
    _client.invoke<SubscribeResponse>(ctx, 'SubscribeDataInterface', 'SubscribeFutureTick', request, SubscribeResponse())
  ;
  $async.Future<SubscribeResponse> unSubscribeFutureTick($pb.ClientContext? ctx, $2.FutureCodeArr request) =>
    _client.invoke<SubscribeResponse>(ctx, 'SubscribeDataInterface', 'UnSubscribeFutureTick', request, SubscribeResponse())
  ;
  $async.Future<SubscribeResponse> subscribeFutureBidAsk($pb.ClientContext? ctx, $2.FutureCodeArr request) =>
    _client.invoke<SubscribeResponse>(ctx, 'SubscribeDataInterface', 'SubscribeFutureBidAsk', request, SubscribeResponse())
  ;
  $async.Future<SubscribeResponse> unSubscribeFutureBidAsk($pb.ClientContext? ctx, $2.FutureCodeArr request) =>
    _client.invoke<SubscribeResponse>(ctx, 'SubscribeDataInterface', 'UnSubscribeFutureBidAsk', request, SubscribeResponse())
  ;
  $async.Future<$2.ErrorMessage> unSubscribeAllTick($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<$2.ErrorMessage>(ctx, 'SubscribeDataInterface', 'UnSubscribeAllTick', request, $2.ErrorMessage())
  ;
  $async.Future<$2.ErrorMessage> unSubscribeAllBidAsk($pb.ClientContext? ctx, $1.Empty request) =>
    _client.invoke<$2.ErrorMessage>(ctx, 'SubscribeDataInterface', 'UnSubscribeAllBidAsk', request, $2.ErrorMessage())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');

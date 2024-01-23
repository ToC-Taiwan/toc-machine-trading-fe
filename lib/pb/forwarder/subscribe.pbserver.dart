//
//  Generated code. Do not modify.
//  source: forwarder/subscribe.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../google/protobuf/empty.pb.dart' as $0;
import 'entity.pb.dart' as $3;
import 'subscribe.pb.dart' as $5;
import 'subscribe.pbjson.dart';

export 'subscribe.pb.dart';

abstract class SubscribeDataInterfaceServiceBase extends $pb.GeneratedService {
  $async.Future<$5.SubscribeResponse> subscribeStockTick($pb.ServerContext ctx, $3.StockNumArr request);
  $async.Future<$5.SubscribeResponse> unSubscribeStockTick($pb.ServerContext ctx, $3.StockNumArr request);
  $async.Future<$5.SubscribeResponse> subscribeStockBidAsk($pb.ServerContext ctx, $3.StockNumArr request);
  $async.Future<$5.SubscribeResponse> unSubscribeStockBidAsk($pb.ServerContext ctx, $3.StockNumArr request);
  $async.Future<$5.SubscribeResponse> subscribeFutureTick($pb.ServerContext ctx, $3.FutureCodeArr request);
  $async.Future<$5.SubscribeResponse> unSubscribeFutureTick($pb.ServerContext ctx, $3.FutureCodeArr request);
  $async.Future<$5.SubscribeResponse> subscribeFutureBidAsk($pb.ServerContext ctx, $3.FutureCodeArr request);
  $async.Future<$5.SubscribeResponse> unSubscribeFutureBidAsk($pb.ServerContext ctx, $3.FutureCodeArr request);
  $async.Future<$3.ErrorMessage> unSubscribeAllTick($pb.ServerContext ctx, $0.Empty request);
  $async.Future<$3.ErrorMessage> unSubscribeAllBidAsk($pb.ServerContext ctx, $0.Empty request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'SubscribeStockTick': return $3.StockNumArr();
      case 'UnSubscribeStockTick': return $3.StockNumArr();
      case 'SubscribeStockBidAsk': return $3.StockNumArr();
      case 'UnSubscribeStockBidAsk': return $3.StockNumArr();
      case 'SubscribeFutureTick': return $3.FutureCodeArr();
      case 'UnSubscribeFutureTick': return $3.FutureCodeArr();
      case 'SubscribeFutureBidAsk': return $3.FutureCodeArr();
      case 'UnSubscribeFutureBidAsk': return $3.FutureCodeArr();
      case 'UnSubscribeAllTick': return $0.Empty();
      case 'UnSubscribeAllBidAsk': return $0.Empty();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'SubscribeStockTick': return this.subscribeStockTick(ctx, request as $3.StockNumArr);
      case 'UnSubscribeStockTick': return this.unSubscribeStockTick(ctx, request as $3.StockNumArr);
      case 'SubscribeStockBidAsk': return this.subscribeStockBidAsk(ctx, request as $3.StockNumArr);
      case 'UnSubscribeStockBidAsk': return this.unSubscribeStockBidAsk(ctx, request as $3.StockNumArr);
      case 'SubscribeFutureTick': return this.subscribeFutureTick(ctx, request as $3.FutureCodeArr);
      case 'UnSubscribeFutureTick': return this.unSubscribeFutureTick(ctx, request as $3.FutureCodeArr);
      case 'SubscribeFutureBidAsk': return this.subscribeFutureBidAsk(ctx, request as $3.FutureCodeArr);
      case 'UnSubscribeFutureBidAsk': return this.unSubscribeFutureBidAsk(ctx, request as $3.FutureCodeArr);
      case 'UnSubscribeAllTick': return this.unSubscribeAllTick(ctx, request as $0.Empty);
      case 'UnSubscribeAllBidAsk': return this.unSubscribeAllBidAsk(ctx, request as $0.Empty);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => SubscribeDataInterfaceServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => SubscribeDataInterfaceServiceBase$messageJson;
}


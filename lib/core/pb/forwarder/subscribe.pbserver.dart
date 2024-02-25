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

import '../google/protobuf/empty.pb.dart' as $1;
import 'entity.pb.dart' as $2;
import 'subscribe.pb.dart' as $6;
import 'subscribe.pbjson.dart';

export 'subscribe.pb.dart';

abstract class SubscribeDataInterfaceServiceBase extends $pb.GeneratedService {
  $async.Future<$6.SubscribeResponse> subscribeStockTick($pb.ServerContext ctx, $2.StockNumArr request);
  $async.Future<$6.SubscribeResponse> unSubscribeStockTick($pb.ServerContext ctx, $2.StockNumArr request);
  $async.Future<$6.SubscribeResponse> subscribeStockBidAsk($pb.ServerContext ctx, $2.StockNumArr request);
  $async.Future<$6.SubscribeResponse> unSubscribeStockBidAsk($pb.ServerContext ctx, $2.StockNumArr request);
  $async.Future<$6.SubscribeResponse> subscribeFutureTick($pb.ServerContext ctx, $2.FutureCodeArr request);
  $async.Future<$6.SubscribeResponse> unSubscribeFutureTick($pb.ServerContext ctx, $2.FutureCodeArr request);
  $async.Future<$6.SubscribeResponse> subscribeFutureBidAsk($pb.ServerContext ctx, $2.FutureCodeArr request);
  $async.Future<$6.SubscribeResponse> unSubscribeFutureBidAsk($pb.ServerContext ctx, $2.FutureCodeArr request);
  $async.Future<$2.ErrorMessage> unSubscribeAllTick($pb.ServerContext ctx, $1.Empty request);
  $async.Future<$2.ErrorMessage> unSubscribeAllBidAsk($pb.ServerContext ctx, $1.Empty request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'SubscribeStockTick': return $2.StockNumArr();
      case 'UnSubscribeStockTick': return $2.StockNumArr();
      case 'SubscribeStockBidAsk': return $2.StockNumArr();
      case 'UnSubscribeStockBidAsk': return $2.StockNumArr();
      case 'SubscribeFutureTick': return $2.FutureCodeArr();
      case 'UnSubscribeFutureTick': return $2.FutureCodeArr();
      case 'SubscribeFutureBidAsk': return $2.FutureCodeArr();
      case 'UnSubscribeFutureBidAsk': return $2.FutureCodeArr();
      case 'UnSubscribeAllTick': return $1.Empty();
      case 'UnSubscribeAllBidAsk': return $1.Empty();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'SubscribeStockTick': return this.subscribeStockTick(ctx, request as $2.StockNumArr);
      case 'UnSubscribeStockTick': return this.unSubscribeStockTick(ctx, request as $2.StockNumArr);
      case 'SubscribeStockBidAsk': return this.subscribeStockBidAsk(ctx, request as $2.StockNumArr);
      case 'UnSubscribeStockBidAsk': return this.unSubscribeStockBidAsk(ctx, request as $2.StockNumArr);
      case 'SubscribeFutureTick': return this.subscribeFutureTick(ctx, request as $2.FutureCodeArr);
      case 'UnSubscribeFutureTick': return this.unSubscribeFutureTick(ctx, request as $2.FutureCodeArr);
      case 'SubscribeFutureBidAsk': return this.subscribeFutureBidAsk(ctx, request as $2.FutureCodeArr);
      case 'UnSubscribeFutureBidAsk': return this.unSubscribeFutureBidAsk(ctx, request as $2.FutureCodeArr);
      case 'UnSubscribeAllTick': return this.unSubscribeAllTick(ctx, request as $1.Empty);
      case 'UnSubscribeAllBidAsk': return this.unSubscribeAllBidAsk(ctx, request as $1.Empty);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => SubscribeDataInterfaceServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => SubscribeDataInterfaceServiceBase$messageJson;
}


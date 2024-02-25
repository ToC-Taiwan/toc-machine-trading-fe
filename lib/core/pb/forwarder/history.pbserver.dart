//
//  Generated code. Do not modify.
//  source: forwarder/history.proto
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

import 'history.pb.dart' as $0;
import 'history.pbjson.dart';

export 'history.pb.dart';

abstract class HistoryDataInterfaceServiceBase extends $pb.GeneratedService {
  $async.Future<$0.HistoryTickResponse> getStockHistoryTick($pb.ServerContext ctx, $0.StockNumArrWithDate request);
  $async.Future<$0.HistoryKbarResponse> getStockHistoryKbar($pb.ServerContext ctx, $0.StockNumArrWithDate request);
  $async.Future<$0.HistoryCloseResponse> getStockHistoryClose($pb.ServerContext ctx, $0.StockNumArrWithDate request);
  $async.Future<$0.HistoryKbarResponse> getFutureHistoryKbar($pb.ServerContext ctx, $0.FutureCodeArrWithDate request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'GetStockHistoryTick': return $0.StockNumArrWithDate();
      case 'GetStockHistoryKbar': return $0.StockNumArrWithDate();
      case 'GetStockHistoryClose': return $0.StockNumArrWithDate();
      case 'GetFutureHistoryKbar': return $0.FutureCodeArrWithDate();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'GetStockHistoryTick': return this.getStockHistoryTick(ctx, request as $0.StockNumArrWithDate);
      case 'GetStockHistoryKbar': return this.getStockHistoryKbar(ctx, request as $0.StockNumArrWithDate);
      case 'GetStockHistoryClose': return this.getStockHistoryClose(ctx, request as $0.StockNumArrWithDate);
      case 'GetFutureHistoryKbar': return this.getFutureHistoryKbar(ctx, request as $0.FutureCodeArrWithDate);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => HistoryDataInterfaceServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => HistoryDataInterfaceServiceBase$messageJson;
}


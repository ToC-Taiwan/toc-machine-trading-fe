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

import 'history.pb.dart' as $2;
import 'history.pbjson.dart';

export 'history.pb.dart';

abstract class HistoryDataInterfaceServiceBase extends $pb.GeneratedService {
  $async.Future<$2.HistoryTickResponse> getStockHistoryTick($pb.ServerContext ctx, $2.StockNumArrWithDate request);
  $async.Future<$2.HistoryKbarResponse> getStockHistoryKbar($pb.ServerContext ctx, $2.StockNumArrWithDate request);
  $async.Future<$2.HistoryCloseResponse> getStockHistoryClose($pb.ServerContext ctx, $2.StockNumArrWithDate request);
  $async.Future<$2.HistoryCloseResponse> getStockHistoryCloseByDateArr($pb.ServerContext ctx, $2.StockNumArrWithDateArr request);
  $async.Future<$2.HistoryTickResponse> getFutureHistoryTick($pb.ServerContext ctx, $2.FutureCodeArrWithDate request);
  $async.Future<$2.HistoryKbarResponse> getFutureHistoryKbar($pb.ServerContext ctx, $2.FutureCodeArrWithDate request);
  $async.Future<$2.HistoryCloseResponse> getFutureHistoryClose($pb.ServerContext ctx, $2.FutureCodeArrWithDate request);
  $async.Future<$2.HistoryTickResponse> getStockTSEHistoryTick($pb.ServerContext ctx, $2.Date request);
  $async.Future<$2.HistoryKbarResponse> getStockTSEHistoryKbar($pb.ServerContext ctx, $2.Date request);
  $async.Future<$2.HistoryCloseResponse> getStockTSEHistoryClose($pb.ServerContext ctx, $2.Date request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'GetStockHistoryTick': return $2.StockNumArrWithDate();
      case 'GetStockHistoryKbar': return $2.StockNumArrWithDate();
      case 'GetStockHistoryClose': return $2.StockNumArrWithDate();
      case 'GetStockHistoryCloseByDateArr': return $2.StockNumArrWithDateArr();
      case 'GetFutureHistoryTick': return $2.FutureCodeArrWithDate();
      case 'GetFutureHistoryKbar': return $2.FutureCodeArrWithDate();
      case 'GetFutureHistoryClose': return $2.FutureCodeArrWithDate();
      case 'GetStockTSEHistoryTick': return $2.Date();
      case 'GetStockTSEHistoryKbar': return $2.Date();
      case 'GetStockTSEHistoryClose': return $2.Date();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'GetStockHistoryTick': return this.getStockHistoryTick(ctx, request as $2.StockNumArrWithDate);
      case 'GetStockHistoryKbar': return this.getStockHistoryKbar(ctx, request as $2.StockNumArrWithDate);
      case 'GetStockHistoryClose': return this.getStockHistoryClose(ctx, request as $2.StockNumArrWithDate);
      case 'GetStockHistoryCloseByDateArr': return this.getStockHistoryCloseByDateArr(ctx, request as $2.StockNumArrWithDateArr);
      case 'GetFutureHistoryTick': return this.getFutureHistoryTick(ctx, request as $2.FutureCodeArrWithDate);
      case 'GetFutureHistoryKbar': return this.getFutureHistoryKbar(ctx, request as $2.FutureCodeArrWithDate);
      case 'GetFutureHistoryClose': return this.getFutureHistoryClose(ctx, request as $2.FutureCodeArrWithDate);
      case 'GetStockTSEHistoryTick': return this.getStockTSEHistoryTick(ctx, request as $2.Date);
      case 'GetStockTSEHistoryKbar': return this.getStockTSEHistoryKbar(ctx, request as $2.Date);
      case 'GetStockTSEHistoryClose': return this.getStockTSEHistoryClose(ctx, request as $2.Date);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => HistoryDataInterfaceServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => HistoryDataInterfaceServiceBase$messageJson;
}


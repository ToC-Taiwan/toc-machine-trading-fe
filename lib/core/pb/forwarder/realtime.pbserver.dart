//
//  Generated code. Do not modify.
//  source: forwarder/realtime.proto
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
import 'realtime.pb.dart' as $3;
import 'realtime.pbjson.dart';

export 'realtime.pb.dart';

abstract class RealTimeDataInterfaceServiceBase extends $pb.GeneratedService {
  $async.Future<$3.SnapshotResponse> getAllStockSnapshot($pb.ServerContext ctx, $1.Empty request);
  $async.Future<$3.SnapshotResponse> getStockSnapshotByNumArr($pb.ServerContext ctx, $2.StockNumArr request);
  $async.Future<$3.SnapshotResponse> getStockSnapshotTSE($pb.ServerContext ctx, $1.Empty request);
  $async.Future<$3.SnapshotResponse> getStockSnapshotOTC($pb.ServerContext ctx, $1.Empty request);
  $async.Future<$3.YahooFinancePrice> getNasdaq($pb.ServerContext ctx, $1.Empty request);
  $async.Future<$3.YahooFinancePrice> getNasdaqFuture($pb.ServerContext ctx, $1.Empty request);
  $async.Future<$3.StockVolumeRankResponse> getStockVolumeRank($pb.ServerContext ctx, $3.VolumeRankRequest request);
  $async.Future<$3.SnapshotResponse> getFutureSnapshotByCodeArr($pb.ServerContext ctx, $2.FutureCodeArr request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'GetAllStockSnapshot': return $1.Empty();
      case 'GetStockSnapshotByNumArr': return $2.StockNumArr();
      case 'GetStockSnapshotTSE': return $1.Empty();
      case 'GetStockSnapshotOTC': return $1.Empty();
      case 'GetNasdaq': return $1.Empty();
      case 'GetNasdaqFuture': return $1.Empty();
      case 'GetStockVolumeRank': return $3.VolumeRankRequest();
      case 'GetFutureSnapshotByCodeArr': return $2.FutureCodeArr();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'GetAllStockSnapshot': return this.getAllStockSnapshot(ctx, request as $1.Empty);
      case 'GetStockSnapshotByNumArr': return this.getStockSnapshotByNumArr(ctx, request as $2.StockNumArr);
      case 'GetStockSnapshotTSE': return this.getStockSnapshotTSE(ctx, request as $1.Empty);
      case 'GetStockSnapshotOTC': return this.getStockSnapshotOTC(ctx, request as $1.Empty);
      case 'GetNasdaq': return this.getNasdaq(ctx, request as $1.Empty);
      case 'GetNasdaqFuture': return this.getNasdaqFuture(ctx, request as $1.Empty);
      case 'GetStockVolumeRank': return this.getStockVolumeRank(ctx, request as $3.VolumeRankRequest);
      case 'GetFutureSnapshotByCodeArr': return this.getFutureSnapshotByCodeArr(ctx, request as $2.FutureCodeArr);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => RealTimeDataInterfaceServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => RealTimeDataInterfaceServiceBase$messageJson;
}


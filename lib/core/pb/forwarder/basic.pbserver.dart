//
//  Generated code. Do not modify.
//  source: forwarder/basic.proto
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
import 'basic.pb.dart' as $4;
import 'basic.pbjson.dart';

export 'basic.pb.dart';

abstract class BasicDataInterfaceServiceBase extends $pb.GeneratedService {
  $async.Future<$1.Empty> createLongConnection($pb.ServerContext ctx, $1.Empty request);
  $async.Future<$4.ShioajiUsage> checkUsage($pb.ServerContext ctx, $1.Empty request);
  $async.Future<$1.Empty> login($pb.ServerContext ctx, $1.Empty request);
  $async.Future<$4.StockDetailResponse> getAllStockDetail($pb.ServerContext ctx, $1.Empty request);
  $async.Future<$4.FutureDetailResponse> getAllFutureDetail($pb.ServerContext ctx, $1.Empty request);
  $async.Future<$4.OptionDetailResponse> getAllOptionDetail($pb.ServerContext ctx, $1.Empty request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'CreateLongConnection': return $1.Empty();
      case 'CheckUsage': return $1.Empty();
      case 'Login': return $1.Empty();
      case 'GetAllStockDetail': return $1.Empty();
      case 'GetAllFutureDetail': return $1.Empty();
      case 'GetAllOptionDetail': return $1.Empty();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'CreateLongConnection': return this.createLongConnection(ctx, request as $1.Empty);
      case 'CheckUsage': return this.checkUsage(ctx, request as $1.Empty);
      case 'Login': return this.login(ctx, request as $1.Empty);
      case 'GetAllStockDetail': return this.getAllStockDetail(ctx, request as $1.Empty);
      case 'GetAllFutureDetail': return this.getAllFutureDetail(ctx, request as $1.Empty);
      case 'GetAllOptionDetail': return this.getAllOptionDetail(ctx, request as $1.Empty);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => BasicDataInterfaceServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => BasicDataInterfaceServiceBase$messageJson;
}


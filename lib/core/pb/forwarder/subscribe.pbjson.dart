//
//  Generated code. Do not modify.
//  source: forwarder/subscribe.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import '../google/protobuf/empty.pbjson.dart' as $1;
import 'entity.pbjson.dart' as $2;

@$core.Deprecated('Use subscribeResponseDescriptor instead')
const SubscribeResponse$json = {
  '1': 'SubscribeResponse',
  '2': [
    {'1': 'fail_arr', '3': 1, '4': 3, '5': 9, '10': 'failArr'},
  ],
};

/// Descriptor for `SubscribeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeResponseDescriptor = $convert.base64Decode(
    'ChFTdWJzY3JpYmVSZXNwb25zZRIZCghmYWlsX2FychgBIAMoCVIHZmFpbEFycg==');

const $core.Map<$core.String, $core.dynamic> SubscribeDataInterfaceServiceBase$json = {
  '1': 'SubscribeDataInterface',
  '2': [
    {'1': 'SubscribeStockTick', '2': '.forwarder.StockNumArr', '3': '.forwarder.SubscribeResponse', '4': {}},
    {'1': 'UnSubscribeStockTick', '2': '.forwarder.StockNumArr', '3': '.forwarder.SubscribeResponse', '4': {}},
    {'1': 'SubscribeStockBidAsk', '2': '.forwarder.StockNumArr', '3': '.forwarder.SubscribeResponse', '4': {}},
    {'1': 'UnSubscribeStockBidAsk', '2': '.forwarder.StockNumArr', '3': '.forwarder.SubscribeResponse', '4': {}},
    {'1': 'SubscribeFutureTick', '2': '.forwarder.FutureCodeArr', '3': '.forwarder.SubscribeResponse', '4': {}},
    {'1': 'UnSubscribeFutureTick', '2': '.forwarder.FutureCodeArr', '3': '.forwarder.SubscribeResponse', '4': {}},
    {'1': 'SubscribeFutureBidAsk', '2': '.forwarder.FutureCodeArr', '3': '.forwarder.SubscribeResponse', '4': {}},
    {'1': 'UnSubscribeFutureBidAsk', '2': '.forwarder.FutureCodeArr', '3': '.forwarder.SubscribeResponse', '4': {}},
    {'1': 'UnSubscribeAllTick', '2': '.google.protobuf.Empty', '3': '.forwarder.ErrorMessage', '4': {}},
    {'1': 'UnSubscribeAllBidAsk', '2': '.google.protobuf.Empty', '3': '.forwarder.ErrorMessage', '4': {}},
  ],
};

@$core.Deprecated('Use subscribeDataInterfaceServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> SubscribeDataInterfaceServiceBase$messageJson = {
  '.forwarder.StockNumArr': $2.StockNumArr$json,
  '.forwarder.SubscribeResponse': SubscribeResponse$json,
  '.forwarder.FutureCodeArr': $2.FutureCodeArr$json,
  '.google.protobuf.Empty': $1.Empty$json,
  '.forwarder.ErrorMessage': $2.ErrorMessage$json,
};

/// Descriptor for `SubscribeDataInterface`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List subscribeDataInterfaceServiceDescriptor = $convert.base64Decode(
    'ChZTdWJzY3JpYmVEYXRhSW50ZXJmYWNlEkwKElN1YnNjcmliZVN0b2NrVGljaxIWLmZvcndhcm'
    'Rlci5TdG9ja051bUFychocLmZvcndhcmRlci5TdWJzY3JpYmVSZXNwb25zZSIAEk4KFFVuU3Vi'
    'c2NyaWJlU3RvY2tUaWNrEhYuZm9yd2FyZGVyLlN0b2NrTnVtQXJyGhwuZm9yd2FyZGVyLlN1Yn'
    'NjcmliZVJlc3BvbnNlIgASTgoUU3Vic2NyaWJlU3RvY2tCaWRBc2sSFi5mb3J3YXJkZXIuU3Rv'
    'Y2tOdW1BcnIaHC5mb3J3YXJkZXIuU3Vic2NyaWJlUmVzcG9uc2UiABJQChZVblN1YnNjcmliZV'
    'N0b2NrQmlkQXNrEhYuZm9yd2FyZGVyLlN0b2NrTnVtQXJyGhwuZm9yd2FyZGVyLlN1YnNjcmli'
    'ZVJlc3BvbnNlIgASTwoTU3Vic2NyaWJlRnV0dXJlVGljaxIYLmZvcndhcmRlci5GdXR1cmVDb2'
    'RlQXJyGhwuZm9yd2FyZGVyLlN1YnNjcmliZVJlc3BvbnNlIgASUQoVVW5TdWJzY3JpYmVGdXR1'
    'cmVUaWNrEhguZm9yd2FyZGVyLkZ1dHVyZUNvZGVBcnIaHC5mb3J3YXJkZXIuU3Vic2NyaWJlUm'
    'VzcG9uc2UiABJRChVTdWJzY3JpYmVGdXR1cmVCaWRBc2sSGC5mb3J3YXJkZXIuRnV0dXJlQ29k'
    'ZUFychocLmZvcndhcmRlci5TdWJzY3JpYmVSZXNwb25zZSIAElMKF1VuU3Vic2NyaWJlRnV0dX'
    'JlQmlkQXNrEhguZm9yd2FyZGVyLkZ1dHVyZUNvZGVBcnIaHC5mb3J3YXJkZXIuU3Vic2NyaWJl'
    'UmVzcG9uc2UiABJHChJVblN1YnNjcmliZUFsbFRpY2sSFi5nb29nbGUucHJvdG9idWYuRW1wdH'
    'kaFy5mb3J3YXJkZXIuRXJyb3JNZXNzYWdlIgASSQoUVW5TdWJzY3JpYmVBbGxCaWRBc2sSFi5n'
    'b29nbGUucHJvdG9idWYuRW1wdHkaFy5mb3J3YXJkZXIuRXJyb3JNZXNzYWdlIgA=');


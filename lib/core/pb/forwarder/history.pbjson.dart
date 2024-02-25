//
//  Generated code. Do not modify.
//  source: forwarder/history.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use stockNumArrWithDateDescriptor instead')
const StockNumArrWithDate$json = {
  '1': 'StockNumArrWithDate',
  '2': [
    {'1': 'stock_num_arr', '3': 1, '4': 3, '5': 9, '10': 'stockNumArr'},
    {'1': 'date', '3': 2, '4': 1, '5': 9, '10': 'date'},
  ],
};

/// Descriptor for `StockNumArrWithDate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stockNumArrWithDateDescriptor = $convert.base64Decode(
    'ChNTdG9ja051bUFycldpdGhEYXRlEiIKDXN0b2NrX251bV9hcnIYASADKAlSC3N0b2NrTnVtQX'
    'JyEhIKBGRhdGUYAiABKAlSBGRhdGU=');

@$core.Deprecated('Use futureCodeArrWithDateDescriptor instead')
const FutureCodeArrWithDate$json = {
  '1': 'FutureCodeArrWithDate',
  '2': [
    {'1': 'future_code_arr', '3': 1, '4': 3, '5': 9, '10': 'futureCodeArr'},
    {'1': 'date', '3': 2, '4': 1, '5': 9, '10': 'date'},
  ],
};

/// Descriptor for `FutureCodeArrWithDate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List futureCodeArrWithDateDescriptor = $convert.base64Decode(
    'ChVGdXR1cmVDb2RlQXJyV2l0aERhdGUSJgoPZnV0dXJlX2NvZGVfYXJyGAEgAygJUg1mdXR1cm'
    'VDb2RlQXJyEhIKBGRhdGUYAiABKAlSBGRhdGU=');

@$core.Deprecated('Use stockNumArrWithDateArrDescriptor instead')
const StockNumArrWithDateArr$json = {
  '1': 'StockNumArrWithDateArr',
  '2': [
    {'1': 'stock_num_arr', '3': 1, '4': 3, '5': 9, '10': 'stockNumArr'},
    {'1': 'date_arr', '3': 2, '4': 3, '5': 9, '10': 'dateArr'},
  ],
};

/// Descriptor for `StockNumArrWithDateArr`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stockNumArrWithDateArrDescriptor = $convert.base64Decode(
    'ChZTdG9ja051bUFycldpdGhEYXRlQXJyEiIKDXN0b2NrX251bV9hcnIYASADKAlSC3N0b2NrTn'
    'VtQXJyEhkKCGRhdGVfYXJyGAIgAygJUgdkYXRlQXJy');

@$core.Deprecated('Use historyTickResponseDescriptor instead')
const HistoryTickResponse$json = {
  '1': 'HistoryTickResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.forwarder.HistoryTickMessage', '10': 'data'},
  ],
};

/// Descriptor for `HistoryTickResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyTickResponseDescriptor = $convert.base64Decode(
    'ChNIaXN0b3J5VGlja1Jlc3BvbnNlEjEKBGRhdGEYASADKAsyHS5mb3J3YXJkZXIuSGlzdG9yeV'
    'RpY2tNZXNzYWdlUgRkYXRh');

@$core.Deprecated('Use historyKbarResponseDescriptor instead')
const HistoryKbarResponse$json = {
  '1': 'HistoryKbarResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.forwarder.HistoryKbarMessage', '10': 'data'},
  ],
};

/// Descriptor for `HistoryKbarResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyKbarResponseDescriptor = $convert.base64Decode(
    'ChNIaXN0b3J5S2JhclJlc3BvbnNlEjEKBGRhdGEYASADKAsyHS5mb3J3YXJkZXIuSGlzdG9yeU'
    'tiYXJNZXNzYWdlUgRkYXRh');

@$core.Deprecated('Use historyCloseResponseDescriptor instead')
const HistoryCloseResponse$json = {
  '1': 'HistoryCloseResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.forwarder.HistoryCloseMessage', '10': 'data'},
  ],
};

/// Descriptor for `HistoryCloseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyCloseResponseDescriptor = $convert.base64Decode(
    'ChRIaXN0b3J5Q2xvc2VSZXNwb25zZRIyCgRkYXRhGAEgAygLMh4uZm9yd2FyZGVyLkhpc3Rvcn'
    'lDbG9zZU1lc3NhZ2VSBGRhdGE=');

@$core.Deprecated('Use historyTickMessageDescriptor instead')
const HistoryTickMessage$json = {
  '1': 'HistoryTickMessage',
  '2': [
    {'1': 'ts', '3': 1, '4': 1, '5': 3, '10': 'ts'},
    {'1': 'close', '3': 2, '4': 1, '5': 1, '10': 'close'},
    {'1': 'volume', '3': 3, '4': 1, '5': 3, '10': 'volume'},
    {'1': 'bid_price', '3': 4, '4': 1, '5': 1, '10': 'bidPrice'},
    {'1': 'bid_volume', '3': 5, '4': 1, '5': 3, '10': 'bidVolume'},
    {'1': 'ask_price', '3': 6, '4': 1, '5': 1, '10': 'askPrice'},
    {'1': 'ask_volume', '3': 7, '4': 1, '5': 3, '10': 'askVolume'},
    {'1': 'tick_type', '3': 8, '4': 1, '5': 3, '10': 'tickType'},
    {'1': 'code', '3': 9, '4': 1, '5': 9, '10': 'code'},
  ],
};

/// Descriptor for `HistoryTickMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyTickMessageDescriptor = $convert.base64Decode(
    'ChJIaXN0b3J5VGlja01lc3NhZ2USDgoCdHMYASABKANSAnRzEhQKBWNsb3NlGAIgASgBUgVjbG'
    '9zZRIWCgZ2b2x1bWUYAyABKANSBnZvbHVtZRIbCgliaWRfcHJpY2UYBCABKAFSCGJpZFByaWNl'
    'Eh0KCmJpZF92b2x1bWUYBSABKANSCWJpZFZvbHVtZRIbCglhc2tfcHJpY2UYBiABKAFSCGFza1'
    'ByaWNlEh0KCmFza192b2x1bWUYByABKANSCWFza1ZvbHVtZRIbCgl0aWNrX3R5cGUYCCABKANS'
    'CHRpY2tUeXBlEhIKBGNvZGUYCSABKAlSBGNvZGU=');

@$core.Deprecated('Use historyKbarMessageDescriptor instead')
const HistoryKbarMessage$json = {
  '1': 'HistoryKbarMessage',
  '2': [
    {'1': 'ts', '3': 1, '4': 1, '5': 3, '10': 'ts'},
    {'1': 'close', '3': 2, '4': 1, '5': 1, '10': 'close'},
    {'1': 'open', '3': 3, '4': 1, '5': 1, '10': 'open'},
    {'1': 'high', '3': 4, '4': 1, '5': 1, '10': 'high'},
    {'1': 'low', '3': 5, '4': 1, '5': 1, '10': 'low'},
    {'1': 'volume', '3': 6, '4': 1, '5': 3, '10': 'volume'},
    {'1': 'code', '3': 7, '4': 1, '5': 9, '10': 'code'},
  ],
};

/// Descriptor for `HistoryKbarMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyKbarMessageDescriptor = $convert.base64Decode(
    'ChJIaXN0b3J5S2Jhck1lc3NhZ2USDgoCdHMYASABKANSAnRzEhQKBWNsb3NlGAIgASgBUgVjbG'
    '9zZRISCgRvcGVuGAMgASgBUgRvcGVuEhIKBGhpZ2gYBCABKAFSBGhpZ2gSEAoDbG93GAUgASgB'
    'UgNsb3cSFgoGdm9sdW1lGAYgASgDUgZ2b2x1bWUSEgoEY29kZRgHIAEoCVIEY29kZQ==');

@$core.Deprecated('Use historyCloseMessageDescriptor instead')
const HistoryCloseMessage$json = {
  '1': 'HistoryCloseMessage',
  '2': [
    {'1': 'date', '3': 1, '4': 1, '5': 9, '10': 'date'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    {'1': 'close', '3': 3, '4': 1, '5': 1, '10': 'close'},
  ],
};

/// Descriptor for `HistoryCloseMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List historyCloseMessageDescriptor = $convert.base64Decode(
    'ChNIaXN0b3J5Q2xvc2VNZXNzYWdlEhIKBGRhdGUYASABKAlSBGRhdGUSEgoEY29kZRgCIAEoCV'
    'IEY29kZRIUCgVjbG9zZRgDIAEoAVIFY2xvc2U=');

@$core.Deprecated('Use dateDescriptor instead')
const Date$json = {
  '1': 'Date',
  '2': [
    {'1': 'date', '3': 1, '4': 1, '5': 9, '10': 'date'},
  ],
};

/// Descriptor for `Date`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dateDescriptor = $convert.base64Decode(
    'CgREYXRlEhIKBGRhdGUYASABKAlSBGRhdGU=');

const $core.Map<$core.String, $core.dynamic> HistoryDataInterfaceServiceBase$json = {
  '1': 'HistoryDataInterface',
  '2': [
    {'1': 'GetStockHistoryTick', '2': '.forwarder.StockNumArrWithDate', '3': '.forwarder.HistoryTickResponse', '4': {}},
    {'1': 'GetStockHistoryKbar', '2': '.forwarder.StockNumArrWithDate', '3': '.forwarder.HistoryKbarResponse', '4': {}},
    {'1': 'GetStockHistoryClose', '2': '.forwarder.StockNumArrWithDate', '3': '.forwarder.HistoryCloseResponse', '4': {}},
    {'1': 'GetFutureHistoryKbar', '2': '.forwarder.FutureCodeArrWithDate', '3': '.forwarder.HistoryKbarResponse', '4': {}},
  ],
};

@$core.Deprecated('Use historyDataInterfaceServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> HistoryDataInterfaceServiceBase$messageJson = {
  '.forwarder.StockNumArrWithDate': StockNumArrWithDate$json,
  '.forwarder.HistoryTickResponse': HistoryTickResponse$json,
  '.forwarder.HistoryTickMessage': HistoryTickMessage$json,
  '.forwarder.HistoryKbarResponse': HistoryKbarResponse$json,
  '.forwarder.HistoryKbarMessage': HistoryKbarMessage$json,
  '.forwarder.HistoryCloseResponse': HistoryCloseResponse$json,
  '.forwarder.HistoryCloseMessage': HistoryCloseMessage$json,
  '.forwarder.FutureCodeArrWithDate': FutureCodeArrWithDate$json,
};

/// Descriptor for `HistoryDataInterface`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List historyDataInterfaceServiceDescriptor = $convert.base64Decode(
    'ChRIaXN0b3J5RGF0YUludGVyZmFjZRJXChNHZXRTdG9ja0hpc3RvcnlUaWNrEh4uZm9yd2FyZG'
    'VyLlN0b2NrTnVtQXJyV2l0aERhdGUaHi5mb3J3YXJkZXIuSGlzdG9yeVRpY2tSZXNwb25zZSIA'
    'ElcKE0dldFN0b2NrSGlzdG9yeUtiYXISHi5mb3J3YXJkZXIuU3RvY2tOdW1BcnJXaXRoRGF0ZR'
    'oeLmZvcndhcmRlci5IaXN0b3J5S2JhclJlc3BvbnNlIgASWQoUR2V0U3RvY2tIaXN0b3J5Q2xv'
    'c2USHi5mb3J3YXJkZXIuU3RvY2tOdW1BcnJXaXRoRGF0ZRofLmZvcndhcmRlci5IaXN0b3J5Q2'
    'xvc2VSZXNwb25zZSIAEloKFEdldEZ1dHVyZUhpc3RvcnlLYmFyEiAuZm9yd2FyZGVyLkZ1dHVy'
    'ZUNvZGVBcnJXaXRoRGF0ZRoeLmZvcndhcmRlci5IaXN0b3J5S2JhclJlc3BvbnNlIgA=');


//
//  Generated code. Do not modify.
//  source: forwarder/basic.proto
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

@$core.Deprecated('Use beatMessageDescriptor instead')
const BeatMessage$json = {
  '1': 'BeatMessage',
  '2': [
    {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `BeatMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List beatMessageDescriptor = $convert.base64Decode(
    'CgtCZWF0TWVzc2FnZRIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdlEhQKBWVycm9yGAIgASgJUg'
    'VlcnJvcg==');

@$core.Deprecated('Use shioajiUsageDescriptor instead')
const ShioajiUsage$json = {
  '1': 'ShioajiUsage',
  '2': [
    {'1': 'connections', '3': 1, '4': 1, '5': 3, '10': 'connections'},
    {'1': 'bytes', '3': 2, '4': 1, '5': 3, '10': 'bytes'},
    {'1': 'limit_bytes', '3': 3, '4': 1, '5': 3, '10': 'limitBytes'},
    {'1': 'remaining_bytes', '3': 4, '4': 1, '5': 3, '10': 'remainingBytes'},
  ],
};

/// Descriptor for `ShioajiUsage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shioajiUsageDescriptor = $convert.base64Decode(
    'CgxTaGlvYWppVXNhZ2USIAoLY29ubmVjdGlvbnMYASABKANSC2Nvbm5lY3Rpb25zEhQKBWJ5dG'
    'VzGAIgASgDUgVieXRlcxIfCgtsaW1pdF9ieXRlcxgDIAEoA1IKbGltaXRCeXRlcxInCg9yZW1h'
    'aW5pbmdfYnl0ZXMYBCABKANSDnJlbWFpbmluZ0J5dGVz');

@$core.Deprecated('Use stockDetailResponseDescriptor instead')
const StockDetailResponse$json = {
  '1': 'StockDetailResponse',
  '2': [
    {'1': 'stock', '3': 1, '4': 3, '5': 11, '6': '.forwarder.StockDetailMessage', '10': 'stock'},
  ],
};

/// Descriptor for `StockDetailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stockDetailResponseDescriptor = $convert.base64Decode(
    'ChNTdG9ja0RldGFpbFJlc3BvbnNlEjMKBXN0b2NrGAEgAygLMh0uZm9yd2FyZGVyLlN0b2NrRG'
    'V0YWlsTWVzc2FnZVIFc3RvY2s=');

@$core.Deprecated('Use futureDetailResponseDescriptor instead')
const FutureDetailResponse$json = {
  '1': 'FutureDetailResponse',
  '2': [
    {'1': 'future', '3': 1, '4': 3, '5': 11, '6': '.forwarder.FutureDetailMessage', '10': 'future'},
  ],
};

/// Descriptor for `FutureDetailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List futureDetailResponseDescriptor = $convert.base64Decode(
    'ChRGdXR1cmVEZXRhaWxSZXNwb25zZRI2CgZmdXR1cmUYASADKAsyHi5mb3J3YXJkZXIuRnV0dX'
    'JlRGV0YWlsTWVzc2FnZVIGZnV0dXJl');

@$core.Deprecated('Use optionDetailResponseDescriptor instead')
const OptionDetailResponse$json = {
  '1': 'OptionDetailResponse',
  '2': [
    {'1': 'option', '3': 1, '4': 3, '5': 11, '6': '.forwarder.OptionDetailMessage', '10': 'option'},
  ],
};

/// Descriptor for `OptionDetailResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List optionDetailResponseDescriptor = $convert.base64Decode(
    'ChRPcHRpb25EZXRhaWxSZXNwb25zZRI2CgZvcHRpb24YASADKAsyHi5mb3J3YXJkZXIuT3B0aW'
    '9uRGV0YWlsTWVzc2FnZVIGb3B0aW9u');

@$core.Deprecated('Use stockDetailMessageDescriptor instead')
const StockDetailMessage$json = {
  '1': 'StockDetailMessage',
  '2': [
    {'1': 'exchange', '3': 1, '4': 1, '5': 9, '10': 'exchange'},
    {'1': 'category', '3': 2, '4': 1, '5': 9, '10': 'category'},
    {'1': 'code', '3': 3, '4': 1, '5': 9, '10': 'code'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'reference', '3': 5, '4': 1, '5': 1, '10': 'reference'},
    {'1': 'update_date', '3': 6, '4': 1, '5': 9, '10': 'updateDate'},
    {'1': 'day_trade', '3': 7, '4': 1, '5': 9, '10': 'dayTrade'},
  ],
};

/// Descriptor for `StockDetailMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stockDetailMessageDescriptor = $convert.base64Decode(
    'ChJTdG9ja0RldGFpbE1lc3NhZ2USGgoIZXhjaGFuZ2UYASABKAlSCGV4Y2hhbmdlEhoKCGNhdG'
    'Vnb3J5GAIgASgJUghjYXRlZ29yeRISCgRjb2RlGAMgASgJUgRjb2RlEhIKBG5hbWUYBCABKAlS'
    'BG5hbWUSHAoJcmVmZXJlbmNlGAUgASgBUglyZWZlcmVuY2USHwoLdXBkYXRlX2RhdGUYBiABKA'
    'lSCnVwZGF0ZURhdGUSGwoJZGF5X3RyYWRlGAcgASgJUghkYXlUcmFkZQ==');

@$core.Deprecated('Use futureDetailMessageDescriptor instead')
const FutureDetailMessage$json = {
  '1': 'FutureDetailMessage',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'category', '3': 4, '4': 1, '5': 9, '10': 'category'},
    {'1': 'delivery_month', '3': 5, '4': 1, '5': 9, '10': 'deliveryMonth'},
    {'1': 'delivery_date', '3': 6, '4': 1, '5': 9, '10': 'deliveryDate'},
    {'1': 'underlying_kind', '3': 7, '4': 1, '5': 9, '10': 'underlyingKind'},
    {'1': 'unit', '3': 8, '4': 1, '5': 3, '10': 'unit'},
    {'1': 'limit_up', '3': 9, '4': 1, '5': 1, '10': 'limitUp'},
    {'1': 'limit_down', '3': 10, '4': 1, '5': 1, '10': 'limitDown'},
    {'1': 'reference', '3': 11, '4': 1, '5': 1, '10': 'reference'},
    {'1': 'update_date', '3': 12, '4': 1, '5': 9, '10': 'updateDate'},
  ],
};

/// Descriptor for `FutureDetailMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List futureDetailMessageDescriptor = $convert.base64Decode(
    'ChNGdXR1cmVEZXRhaWxNZXNzYWdlEhIKBGNvZGUYASABKAlSBGNvZGUSFgoGc3ltYm9sGAIgAS'
    'gJUgZzeW1ib2wSEgoEbmFtZRgDIAEoCVIEbmFtZRIaCghjYXRlZ29yeRgEIAEoCVIIY2F0ZWdv'
    'cnkSJQoOZGVsaXZlcnlfbW9udGgYBSABKAlSDWRlbGl2ZXJ5TW9udGgSIwoNZGVsaXZlcnlfZG'
    'F0ZRgGIAEoCVIMZGVsaXZlcnlEYXRlEicKD3VuZGVybHlpbmdfa2luZBgHIAEoCVIOdW5kZXJs'
    'eWluZ0tpbmQSEgoEdW5pdBgIIAEoA1IEdW5pdBIZCghsaW1pdF91cBgJIAEoAVIHbGltaXRVcB'
    'IdCgpsaW1pdF9kb3duGAogASgBUglsaW1pdERvd24SHAoJcmVmZXJlbmNlGAsgASgBUglyZWZl'
    'cmVuY2USHwoLdXBkYXRlX2RhdGUYDCABKAlSCnVwZGF0ZURhdGU=');

@$core.Deprecated('Use optionDetailMessageDescriptor instead')
const OptionDetailMessage$json = {
  '1': 'OptionDetailMessage',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'symbol', '3': 2, '4': 1, '5': 9, '10': 'symbol'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'category', '3': 4, '4': 1, '5': 9, '10': 'category'},
    {'1': 'delivery_month', '3': 5, '4': 1, '5': 9, '10': 'deliveryMonth'},
    {'1': 'delivery_date', '3': 6, '4': 1, '5': 9, '10': 'deliveryDate'},
    {'1': 'strike_price', '3': 7, '4': 1, '5': 1, '10': 'strikePrice'},
    {'1': 'option_right', '3': 8, '4': 1, '5': 9, '10': 'optionRight'},
    {'1': 'underlying_kind', '3': 9, '4': 1, '5': 9, '10': 'underlyingKind'},
    {'1': 'unit', '3': 10, '4': 1, '5': 3, '10': 'unit'},
    {'1': 'limit_up', '3': 11, '4': 1, '5': 1, '10': 'limitUp'},
    {'1': 'limit_down', '3': 12, '4': 1, '5': 1, '10': 'limitDown'},
    {'1': 'reference', '3': 13, '4': 1, '5': 1, '10': 'reference'},
    {'1': 'update_date', '3': 14, '4': 1, '5': 9, '10': 'updateDate'},
  ],
};

/// Descriptor for `OptionDetailMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List optionDetailMessageDescriptor = $convert.base64Decode(
    'ChNPcHRpb25EZXRhaWxNZXNzYWdlEhIKBGNvZGUYASABKAlSBGNvZGUSFgoGc3ltYm9sGAIgAS'
    'gJUgZzeW1ib2wSEgoEbmFtZRgDIAEoCVIEbmFtZRIaCghjYXRlZ29yeRgEIAEoCVIIY2F0ZWdv'
    'cnkSJQoOZGVsaXZlcnlfbW9udGgYBSABKAlSDWRlbGl2ZXJ5TW9udGgSIwoNZGVsaXZlcnlfZG'
    'F0ZRgGIAEoCVIMZGVsaXZlcnlEYXRlEiEKDHN0cmlrZV9wcmljZRgHIAEoAVILc3RyaWtlUHJp'
    'Y2USIQoMb3B0aW9uX3JpZ2h0GAggASgJUgtvcHRpb25SaWdodBInCg91bmRlcmx5aW5nX2tpbm'
    'QYCSABKAlSDnVuZGVybHlpbmdLaW5kEhIKBHVuaXQYCiABKANSBHVuaXQSGQoIbGltaXRfdXAY'
    'CyABKAFSB2xpbWl0VXASHQoKbGltaXRfZG93bhgMIAEoAVIJbGltaXREb3duEhwKCXJlZmVyZW'
    '5jZRgNIAEoAVIJcmVmZXJlbmNlEh8KC3VwZGF0ZV9kYXRlGA4gASgJUgp1cGRhdGVEYXRl');

const $core.Map<$core.String, $core.dynamic> BasicDataInterfaceServiceBase$json = {
  '1': 'BasicDataInterface',
  '2': [
    {'1': 'CreateLongConnection', '2': '.google.protobuf.Empty', '3': '.google.protobuf.Empty', '5': true},
    {'1': 'CheckUsage', '2': '.google.protobuf.Empty', '3': '.forwarder.ShioajiUsage', '4': {}},
    {'1': 'Login', '2': '.google.protobuf.Empty', '3': '.google.protobuf.Empty', '4': {}},
    {'1': 'GetAllStockDetail', '2': '.google.protobuf.Empty', '3': '.forwarder.StockDetailResponse', '4': {}},
    {'1': 'GetAllFutureDetail', '2': '.google.protobuf.Empty', '3': '.forwarder.FutureDetailResponse', '4': {}},
    {'1': 'GetAllOptionDetail', '2': '.google.protobuf.Empty', '3': '.forwarder.OptionDetailResponse', '4': {}},
  ],
};

@$core.Deprecated('Use basicDataInterfaceServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> BasicDataInterfaceServiceBase$messageJson = {
  '.google.protobuf.Empty': $1.Empty$json,
  '.forwarder.ShioajiUsage': ShioajiUsage$json,
  '.forwarder.StockDetailResponse': StockDetailResponse$json,
  '.forwarder.StockDetailMessage': StockDetailMessage$json,
  '.forwarder.FutureDetailResponse': FutureDetailResponse$json,
  '.forwarder.FutureDetailMessage': FutureDetailMessage$json,
  '.forwarder.OptionDetailResponse': OptionDetailResponse$json,
  '.forwarder.OptionDetailMessage': OptionDetailMessage$json,
};

/// Descriptor for `BasicDataInterface`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List basicDataInterfaceServiceDescriptor = $convert.base64Decode(
    'ChJCYXNpY0RhdGFJbnRlcmZhY2USSAoUQ3JlYXRlTG9uZ0Nvbm5lY3Rpb24SFi5nb29nbGUucH'
    'JvdG9idWYuRW1wdHkaFi5nb29nbGUucHJvdG9idWYuRW1wdHkoARI/CgpDaGVja1VzYWdlEhYu'
    'Z29vZ2xlLnByb3RvYnVmLkVtcHR5GhcuZm9yd2FyZGVyLlNoaW9hamlVc2FnZSIAEjkKBUxvZ2'
    'luEhYuZ29vZ2xlLnByb3RvYnVmLkVtcHR5GhYuZ29vZ2xlLnByb3RvYnVmLkVtcHR5IgASTQoR'
    'R2V0QWxsU3RvY2tEZXRhaWwSFi5nb29nbGUucHJvdG9idWYuRW1wdHkaHi5mb3J3YXJkZXIuU3'
    'RvY2tEZXRhaWxSZXNwb25zZSIAEk8KEkdldEFsbEZ1dHVyZURldGFpbBIWLmdvb2dsZS5wcm90'
    'b2J1Zi5FbXB0eRofLmZvcndhcmRlci5GdXR1cmVEZXRhaWxSZXNwb25zZSIAEk8KEkdldEFsbE'
    '9wdGlvbkRldGFpbBIWLmdvb2dsZS5wcm90b2J1Zi5FbXB0eRofLmZvcndhcmRlci5PcHRpb25E'
    'ZXRhaWxSZXNwb25zZSIA');


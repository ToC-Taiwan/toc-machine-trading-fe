//
//  Generated code. Do not modify.
//  source: app/app.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use pickListTypeDescriptor instead')
const PickListType$json = {
  '1': 'PickListType',
  '2': [
    {'1': 'TYPE_ADD', '2': 0},
    {'1': 'TYPE_REMOVE', '2': 1},
  ],
};

/// Descriptor for `PickListType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List pickListTypeDescriptor = $convert.base64Decode(
    'CgxQaWNrTGlzdFR5cGUSDAoIVFlQRV9BREQQABIPCgtUWVBFX1JFTU9WRRAB');

@$core.Deprecated('Use pickRealMapDescriptor instead')
const PickRealMap$json = {
  '1': 'PickRealMap',
  '2': [
    {'1': 'pick_map', '3': 1, '4': 3, '5': 11, '6': '.app.PickRealMap.PickMapEntry', '10': 'pickMap'},
  ],
  '3': [PickRealMap_PickMapEntry$json],
};

@$core.Deprecated('Use pickRealMapDescriptor instead')
const PickRealMap_PickMapEntry$json = {
  '1': 'PickMapEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 14, '6': '.app.PickListType', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `PickRealMap`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pickRealMapDescriptor = $convert.base64Decode(
    'CgtQaWNrUmVhbE1hcBI4CghwaWNrX21hcBgBIAMoCzIdLmFwcC5QaWNrUmVhbE1hcC5QaWNrTW'
    'FwRW50cnlSB3BpY2tNYXAaTQoMUGlja01hcEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EicKBXZh'
    'bHVlGAIgASgOMhEuYXBwLlBpY2tMaXN0VHlwZVIFdmFsdWU6AjgB');

@$core.Deprecated('Use pickFutureDescriptor instead')
const PickFuture$json = {
  '1': 'PickFuture',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
  ],
};

/// Descriptor for `PickFuture`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pickFutureDescriptor = $convert.base64Decode(
    'CgpQaWNrRnV0dXJlEhIKBGNvZGUYASABKAlSBGNvZGU=');

@$core.Deprecated('Use wSMessageDescriptor instead')
const WSMessage$json = {
  '1': 'WSMessage',
  '2': [
    {'1': 'future_detail', '3': 1, '4': 1, '5': 11, '6': '.forwarder.FutureDetailMessage', '9': 0, '10': 'futureDetail'},
    {'1': 'future_tick', '3': 2, '4': 1, '5': 11, '6': '.forwarder.FutureRealTimeTickMessage', '9': 0, '10': 'futureTick'},
    {'1': 'history_kbar', '3': 3, '4': 1, '5': 11, '6': '.forwarder.HistoryKbarResponse', '9': 0, '10': 'historyKbar'},
    {'1': 'snapshot', '3': 4, '4': 1, '5': 11, '6': '.forwarder.SnapshotMessage', '9': 0, '10': 'snapshot'},
    {'1': 'trade_index', '3': 5, '4': 1, '5': 11, '6': '.app.TradeIndex', '9': 0, '10': 'tradeIndex'},
  ],
  '8': [
    {'1': 'data'},
  ],
};

/// Descriptor for `WSMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wSMessageDescriptor = $convert.base64Decode(
    'CglXU01lc3NhZ2USRQoNZnV0dXJlX2RldGFpbBgBIAEoCzIeLmZvcndhcmRlci5GdXR1cmVEZX'
    'RhaWxNZXNzYWdlSABSDGZ1dHVyZURldGFpbBJHCgtmdXR1cmVfdGljaxgCIAEoCzIkLmZvcndh'
    'cmRlci5GdXR1cmVSZWFsVGltZVRpY2tNZXNzYWdlSABSCmZ1dHVyZVRpY2sSQwoMaGlzdG9yeV'
    '9rYmFyGAMgASgLMh4uZm9yd2FyZGVyLkhpc3RvcnlLYmFyUmVzcG9uc2VIAFILaGlzdG9yeUti'
    'YXISOAoIc25hcHNob3QYBCABKAsyGi5mb3J3YXJkZXIuU25hcHNob3RNZXNzYWdlSABSCHNuYX'
    'BzaG90EjIKC3RyYWRlX2luZGV4GAUgASgLMg8uYXBwLlRyYWRlSW5kZXhIAFIKdHJhZGVJbmRl'
    'eEIGCgRkYXRh');

@$core.Deprecated('Use tradeIndexDescriptor instead')
const TradeIndex$json = {
  '1': 'TradeIndex',
  '2': [
    {'1': 'tse', '3': 1, '4': 1, '5': 11, '6': '.app.IndexStatus', '10': 'tse'},
    {'1': 'otc', '3': 2, '4': 1, '5': 11, '6': '.app.IndexStatus', '10': 'otc'},
    {'1': 'nasdaq', '3': 3, '4': 1, '5': 11, '6': '.app.IndexStatus', '10': 'nasdaq'},
    {'1': 'nf', '3': 4, '4': 1, '5': 11, '6': '.app.IndexStatus', '10': 'nf'},
  ],
};

/// Descriptor for `TradeIndex`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tradeIndexDescriptor = $convert.base64Decode(
    'CgpUcmFkZUluZGV4EiIKA3RzZRgBIAEoCzIQLmFwcC5JbmRleFN0YXR1c1IDdHNlEiIKA290Yx'
    'gCIAEoCzIQLmFwcC5JbmRleFN0YXR1c1IDb3RjEigKBm5hc2RhcRgDIAEoCzIQLmFwcC5JbmRl'
    'eFN0YXR1c1IGbmFzZGFxEiAKAm5mGAQgASgLMhAuYXBwLkluZGV4U3RhdHVzUgJuZg==');

@$core.Deprecated('Use indexStatusDescriptor instead')
const IndexStatus$json = {
  '1': 'IndexStatus',
  '2': [
    {'1': 'break_count', '3': 1, '4': 1, '5': 3, '10': 'breakCount'},
    {'1': 'price_chg', '3': 2, '4': 1, '5': 1, '10': 'priceChg'},
  ],
};

/// Descriptor for `IndexStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indexStatusDescriptor = $convert.base64Decode(
    'CgtJbmRleFN0YXR1cxIfCgticmVha19jb3VudBgBIAEoA1IKYnJlYWtDb3VudBIbCglwcmljZV'
    '9jaGcYAiABKAFSCHByaWNlQ2hn');


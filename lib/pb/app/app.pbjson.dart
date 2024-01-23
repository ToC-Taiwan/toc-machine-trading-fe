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

@$core.Deprecated('Use wSTypeDescriptor instead')
const WSType$json = {
  '1': 'WSType',
  '2': [
    {'1': 'TYPE_FUTURE_TICK', '2': 0},
    {'1': 'TYPE_FUTURE_ORDER', '2': 1},
    {'1': 'TYPE_TRADE_INDEX', '2': 2},
    {'1': 'TYPE_FUTURE_POSITION', '2': 3},
    {'1': 'TYPE_ASSIST_STATUS', '2': 4},
    {'1': 'TYPE_ERR_MESSAGE', '2': 5},
    {'1': 'TYPE_KBAR_ARR', '2': 6},
    {'1': 'TYPE_FUTURE_DETAIL', '2': 7},
  ],
};

/// Descriptor for `WSType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List wSTypeDescriptor = $convert.base64Decode(
    'CgZXU1R5cGUSFAoQVFlQRV9GVVRVUkVfVElDSxAAEhUKEVRZUEVfRlVUVVJFX09SREVSEAESFA'
    'oQVFlQRV9UUkFERV9JTkRFWBACEhgKFFRZUEVfRlVUVVJFX1BPU0lUSU9OEAMSFgoSVFlQRV9B'
    'U1NJU1RfU1RBVFVTEAQSFAoQVFlQRV9FUlJfTUVTU0FHRRAFEhEKDVRZUEVfS0JBUl9BUlIQBh'
    'IWChJUWVBFX0ZVVFVSRV9ERVRBSUwQBw==');

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

@$core.Deprecated('Use wSMessageDescriptor instead')
const WSMessage$json = {
  '1': 'WSMessage',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.app.WSType', '10': 'type'},
    {'1': 'future_tick', '3': 2, '4': 1, '5': 11, '6': '.app.WSFutureTick', '9': 0, '10': 'futureTick'},
    {'1': 'future_order', '3': 3, '4': 1, '5': 11, '6': '.app.WSFutureOrder', '9': 0, '10': 'futureOrder'},
    {'1': 'trade_index', '3': 5, '4': 1, '5': 11, '6': '.app.WSTradeIndex', '9': 0, '10': 'tradeIndex'},
    {'1': 'future_position', '3': 6, '4': 1, '5': 11, '6': '.app.WSFuturePosition', '9': 0, '10': 'futurePosition'},
    {'1': 'assit_status', '3': 7, '4': 1, '5': 11, '6': '.app.WSAssitStatus', '9': 0, '10': 'assitStatus'},
    {'1': 'err_message', '3': 8, '4': 1, '5': 11, '6': '.app.WSErrMessage', '9': 0, '10': 'errMessage'},
    {'1': 'history_kbar', '3': 9, '4': 1, '5': 11, '6': '.app.WSHistoryKbarMessage', '9': 0, '10': 'historyKbar'},
    {'1': 'future_detail', '3': 10, '4': 1, '5': 11, '6': '.app.WSFutureDetail', '9': 0, '10': 'futureDetail'},
  ],
  '8': [
    {'1': 'data'},
  ],
};

/// Descriptor for `WSMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wSMessageDescriptor = $convert.base64Decode(
    'CglXU01lc3NhZ2USHwoEdHlwZRgBIAEoDjILLmFwcC5XU1R5cGVSBHR5cGUSNAoLZnV0dXJlX3'
    'RpY2sYAiABKAsyES5hcHAuV1NGdXR1cmVUaWNrSABSCmZ1dHVyZVRpY2sSNwoMZnV0dXJlX29y'
    'ZGVyGAMgASgLMhIuYXBwLldTRnV0dXJlT3JkZXJIAFILZnV0dXJlT3JkZXISNAoLdHJhZGVfaW'
    '5kZXgYBSABKAsyES5hcHAuV1NUcmFkZUluZGV4SABSCnRyYWRlSW5kZXgSQAoPZnV0dXJlX3Bv'
    'c2l0aW9uGAYgASgLMhUuYXBwLldTRnV0dXJlUG9zaXRpb25IAFIOZnV0dXJlUG9zaXRpb24SNw'
    'oMYXNzaXRfc3RhdHVzGAcgASgLMhIuYXBwLldTQXNzaXRTdGF0dXNIAFILYXNzaXRTdGF0dXMS'
    'NAoLZXJyX21lc3NhZ2UYCCABKAsyES5hcHAuV1NFcnJNZXNzYWdlSABSCmVyck1lc3NhZ2USPg'
    'oMaGlzdG9yeV9rYmFyGAkgASgLMhkuYXBwLldTSGlzdG9yeUtiYXJNZXNzYWdlSABSC2hpc3Rv'
    'cnlLYmFyEjoKDWZ1dHVyZV9kZXRhaWwYCiABKAsyEy5hcHAuV1NGdXR1cmVEZXRhaWxIAFIMZn'
    'V0dXJlRGV0YWlsQgYKBGRhdGE=');

@$core.Deprecated('Use wSFutureDetailDescriptor instead')
const WSFutureDetail$json = {
  '1': 'WSFutureDetail',
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

/// Descriptor for `WSFutureDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wSFutureDetailDescriptor = $convert.base64Decode(
    'Cg5XU0Z1dHVyZURldGFpbBISCgRjb2RlGAEgASgJUgRjb2RlEhYKBnN5bWJvbBgCIAEoCVIGc3'
    'ltYm9sEhIKBG5hbWUYAyABKAlSBG5hbWUSGgoIY2F0ZWdvcnkYBCABKAlSCGNhdGVnb3J5EiUK'
    'DmRlbGl2ZXJ5X21vbnRoGAUgASgJUg1kZWxpdmVyeU1vbnRoEiMKDWRlbGl2ZXJ5X2RhdGUYBi'
    'ABKAlSDGRlbGl2ZXJ5RGF0ZRInCg91bmRlcmx5aW5nX2tpbmQYByABKAlSDnVuZGVybHlpbmdL'
    'aW5kEhIKBHVuaXQYCCABKANSBHVuaXQSGQoIbGltaXRfdXAYCSABKAFSB2xpbWl0VXASHQoKbG'
    'ltaXRfZG93bhgKIAEoAVIJbGltaXREb3duEhwKCXJlZmVyZW5jZRgLIAEoAVIJcmVmZXJlbmNl'
    'Eh8KC3VwZGF0ZV9kYXRlGAwgASgJUgp1cGRhdGVEYXRl');

@$core.Deprecated('Use wSErrMessageDescriptor instead')
const WSErrMessage$json = {
  '1': 'WSErrMessage',
  '2': [
    {'1': 'err_code', '3': 1, '4': 1, '5': 3, '10': 'errCode'},
    {'1': 'response', '3': 2, '4': 1, '5': 9, '10': 'response'},
  ],
};

/// Descriptor for `WSErrMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wSErrMessageDescriptor = $convert.base64Decode(
    'CgxXU0Vyck1lc3NhZ2USGQoIZXJyX2NvZGUYASABKANSB2VyckNvZGUSGgoIcmVzcG9uc2UYAi'
    'ABKAlSCHJlc3BvbnNl');

@$core.Deprecated('Use wSFutureOrderDescriptor instead')
const WSFutureOrder$json = {
  '1': 'WSFutureOrder',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'base_order', '3': 2, '4': 1, '5': 11, '6': '.app.WSOrder', '10': 'baseOrder'},
  ],
};

/// Descriptor for `WSFutureOrder`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wSFutureOrderDescriptor = $convert.base64Decode(
    'Cg1XU0Z1dHVyZU9yZGVyEhIKBGNvZGUYASABKAlSBGNvZGUSKwoKYmFzZV9vcmRlchgCIAEoCz'
    'IMLmFwcC5XU09yZGVyUgliYXNlT3JkZXI=');

@$core.Deprecated('Use wSOrderDescriptor instead')
const WSOrder$json = {
  '1': 'WSOrder',
  '2': [
    {'1': 'order_id', '3': 1, '4': 1, '5': 9, '10': 'orderId'},
    {'1': 'status', '3': 2, '4': 1, '5': 3, '10': 'status'},
    {'1': 'order_time', '3': 3, '4': 1, '5': 9, '10': 'orderTime'},
    {'1': 'action', '3': 4, '4': 1, '5': 3, '10': 'action'},
    {'1': 'price', '3': 5, '4': 1, '5': 1, '10': 'price'},
    {'1': 'quantity', '3': 6, '4': 1, '5': 3, '10': 'quantity'},
  ],
};

/// Descriptor for `WSOrder`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wSOrderDescriptor = $convert.base64Decode(
    'CgdXU09yZGVyEhkKCG9yZGVyX2lkGAEgASgJUgdvcmRlcklkEhYKBnN0YXR1cxgCIAEoA1IGc3'
    'RhdHVzEh0KCm9yZGVyX3RpbWUYAyABKAlSCW9yZGVyVGltZRIWCgZhY3Rpb24YBCABKANSBmFj'
    'dGlvbhIUCgVwcmljZRgFIAEoAVIFcHJpY2USGgoIcXVhbnRpdHkYBiABKANSCHF1YW50aXR5');

@$core.Deprecated('Use wSFutureTickDescriptor instead')
const WSFutureTick$json = {
  '1': 'WSFutureTick',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'tick_time', '3': 2, '4': 1, '5': 9, '10': 'tickTime'},
    {'1': 'open', '3': 3, '4': 1, '5': 1, '10': 'open'},
    {'1': 'underlying_price', '3': 4, '4': 1, '5': 1, '10': 'underlyingPrice'},
    {'1': 'bid_side_total_vol', '3': 5, '4': 1, '5': 3, '10': 'bidSideTotalVol'},
    {'1': 'ask_side_total_vol', '3': 6, '4': 1, '5': 3, '10': 'askSideTotalVol'},
    {'1': 'avg_price', '3': 7, '4': 1, '5': 1, '10': 'avgPrice'},
    {'1': 'close', '3': 8, '4': 1, '5': 1, '10': 'close'},
    {'1': 'high', '3': 9, '4': 1, '5': 1, '10': 'high'},
    {'1': 'low', '3': 10, '4': 1, '5': 1, '10': 'low'},
    {'1': 'amount', '3': 11, '4': 1, '5': 1, '10': 'amount'},
    {'1': 'total_amount', '3': 12, '4': 1, '5': 1, '10': 'totalAmount'},
    {'1': 'volume', '3': 13, '4': 1, '5': 3, '10': 'volume'},
    {'1': 'total_volume', '3': 14, '4': 1, '5': 3, '10': 'totalVolume'},
    {'1': 'tick_type', '3': 15, '4': 1, '5': 3, '10': 'tickType'},
    {'1': 'chg_type', '3': 16, '4': 1, '5': 3, '10': 'chgType'},
    {'1': 'price_chg', '3': 17, '4': 1, '5': 1, '10': 'priceChg'},
    {'1': 'pct_chg', '3': 18, '4': 1, '5': 1, '10': 'pctChg'},
  ],
};

/// Descriptor for `WSFutureTick`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wSFutureTickDescriptor = $convert.base64Decode(
    'CgxXU0Z1dHVyZVRpY2sSEgoEY29kZRgBIAEoCVIEY29kZRIbCgl0aWNrX3RpbWUYAiABKAlSCH'
    'RpY2tUaW1lEhIKBG9wZW4YAyABKAFSBG9wZW4SKQoQdW5kZXJseWluZ19wcmljZRgEIAEoAVIP'
    'dW5kZXJseWluZ1ByaWNlEisKEmJpZF9zaWRlX3RvdGFsX3ZvbBgFIAEoA1IPYmlkU2lkZVRvdG'
    'FsVm9sEisKEmFza19zaWRlX3RvdGFsX3ZvbBgGIAEoA1IPYXNrU2lkZVRvdGFsVm9sEhsKCWF2'
    'Z19wcmljZRgHIAEoAVIIYXZnUHJpY2USFAoFY2xvc2UYCCABKAFSBWNsb3NlEhIKBGhpZ2gYCS'
    'ABKAFSBGhpZ2gSEAoDbG93GAogASgBUgNsb3cSFgoGYW1vdW50GAsgASgBUgZhbW91bnQSIQoM'
    'dG90YWxfYW1vdW50GAwgASgBUgt0b3RhbEFtb3VudBIWCgZ2b2x1bWUYDSABKANSBnZvbHVtZR'
    'IhCgx0b3RhbF92b2x1bWUYDiABKANSC3RvdGFsVm9sdW1lEhsKCXRpY2tfdHlwZRgPIAEoA1II'
    'dGlja1R5cGUSGQoIY2hnX3R5cGUYECABKANSB2NoZ1R5cGUSGwoJcHJpY2VfY2hnGBEgASgBUg'
    'hwcmljZUNoZxIXCgdwY3RfY2hnGBIgASgBUgZwY3RDaGc=');

@$core.Deprecated('Use wSTradeIndexDescriptor instead')
const WSTradeIndex$json = {
  '1': 'WSTradeIndex',
  '2': [
    {'1': 'tse', '3': 1, '4': 1, '5': 11, '6': '.app.WSIndexStatus', '10': 'tse'},
    {'1': 'otc', '3': 2, '4': 1, '5': 11, '6': '.app.WSIndexStatus', '10': 'otc'},
    {'1': 'nasdaq', '3': 3, '4': 1, '5': 11, '6': '.app.WSIndexStatus', '10': 'nasdaq'},
    {'1': 'nf', '3': 4, '4': 1, '5': 11, '6': '.app.WSIndexStatus', '10': 'nf'},
  ],
};

/// Descriptor for `WSTradeIndex`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wSTradeIndexDescriptor = $convert.base64Decode(
    'CgxXU1RyYWRlSW5kZXgSJAoDdHNlGAEgASgLMhIuYXBwLldTSW5kZXhTdGF0dXNSA3RzZRIkCg'
    'NvdGMYAiABKAsyEi5hcHAuV1NJbmRleFN0YXR1c1IDb3RjEioKBm5hc2RhcRgDIAEoCzISLmFw'
    'cC5XU0luZGV4U3RhdHVzUgZuYXNkYXESIgoCbmYYBCABKAsyEi5hcHAuV1NJbmRleFN0YXR1c1'
    'ICbmY=');

@$core.Deprecated('Use wSIndexStatusDescriptor instead')
const WSIndexStatus$json = {
  '1': 'WSIndexStatus',
  '2': [
    {'1': 'break_count', '3': 1, '4': 1, '5': 3, '10': 'breakCount'},
    {'1': 'price_chg', '3': 2, '4': 1, '5': 1, '10': 'priceChg'},
  ],
};

/// Descriptor for `WSIndexStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wSIndexStatusDescriptor = $convert.base64Decode(
    'Cg1XU0luZGV4U3RhdHVzEh8KC2JyZWFrX2NvdW50GAEgASgDUgpicmVha0NvdW50EhsKCXByaW'
    'NlX2NoZxgCIAEoAVIIcHJpY2VDaGc=');

@$core.Deprecated('Use wSFuturePositionDescriptor instead')
const WSFuturePosition$json = {
  '1': 'WSFuturePosition',
  '2': [
    {'1': 'position', '3': 1, '4': 3, '5': 11, '6': '.app.Position', '10': 'position'},
  ],
};

/// Descriptor for `WSFuturePosition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wSFuturePositionDescriptor = $convert.base64Decode(
    'ChBXU0Z1dHVyZVBvc2l0aW9uEikKCHBvc2l0aW9uGAEgAygLMg0uYXBwLlBvc2l0aW9uUghwb3'
    'NpdGlvbg==');

@$core.Deprecated('Use positionDescriptor instead')
const Position$json = {
  '1': 'Position',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'direction', '3': 2, '4': 1, '5': 9, '10': 'direction'},
    {'1': 'quantity', '3': 3, '4': 1, '5': 3, '10': 'quantity'},
    {'1': 'price', '3': 4, '4': 1, '5': 1, '10': 'price'},
    {'1': 'last_price', '3': 5, '4': 1, '5': 1, '10': 'lastPrice'},
    {'1': 'pnl', '3': 6, '4': 1, '5': 1, '10': 'pnl'},
  ],
};

/// Descriptor for `Position`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List positionDescriptor = $convert.base64Decode(
    'CghQb3NpdGlvbhISCgRjb2RlGAEgASgJUgRjb2RlEhwKCWRpcmVjdGlvbhgCIAEoCVIJZGlyZW'
    'N0aW9uEhoKCHF1YW50aXR5GAMgASgDUghxdWFudGl0eRIUCgVwcmljZRgEIAEoAVIFcHJpY2US'
    'HQoKbGFzdF9wcmljZRgFIAEoAVIJbGFzdFByaWNlEhAKA3BubBgGIAEoAVIDcG5s');

@$core.Deprecated('Use wSAssitStatusDescriptor instead')
const WSAssitStatus$json = {
  '1': 'WSAssitStatus',
  '2': [
    {'1': 'running', '3': 1, '4': 1, '5': 8, '10': 'running'},
  ],
};

/// Descriptor for `WSAssitStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wSAssitStatusDescriptor = $convert.base64Decode(
    'Cg1XU0Fzc2l0U3RhdHVzEhgKB3J1bm5pbmcYASABKAhSB3J1bm5pbmc=');

@$core.Deprecated('Use wSHistoryKbarMessageDescriptor instead')
const WSHistoryKbarMessage$json = {
  '1': 'WSHistoryKbarMessage',
  '2': [
    {'1': 'arr', '3': 1, '4': 3, '5': 11, '6': '.app.Kbar', '10': 'arr'},
  ],
};

/// Descriptor for `WSHistoryKbarMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List wSHistoryKbarMessageDescriptor = $convert.base64Decode(
    'ChRXU0hpc3RvcnlLYmFyTWVzc2FnZRIbCgNhcnIYASADKAsyCS5hcHAuS2JhclIDYXJy');

@$core.Deprecated('Use kbarDescriptor instead')
const Kbar$json = {
  '1': 'Kbar',
  '2': [
    {'1': 'kbar_time', '3': 1, '4': 1, '5': 9, '10': 'kbarTime'},
    {'1': 'open', '3': 2, '4': 1, '5': 1, '10': 'open'},
    {'1': 'high', '3': 3, '4': 1, '5': 1, '10': 'high'},
    {'1': 'close', '3': 4, '4': 1, '5': 1, '10': 'close'},
    {'1': 'low', '3': 5, '4': 1, '5': 1, '10': 'low'},
    {'1': 'volume', '3': 6, '4': 1, '5': 3, '10': 'volume'},
  ],
};

/// Descriptor for `Kbar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List kbarDescriptor = $convert.base64Decode(
    'CgRLYmFyEhsKCWtiYXJfdGltZRgBIAEoCVIIa2JhclRpbWUSEgoEb3BlbhgCIAEoAVIEb3Blbh'
    'ISCgRoaWdoGAMgASgBUgRoaWdoEhQKBWNsb3NlGAQgASgBUgVjbG9zZRIQCgNsb3cYBSABKAFS'
    'A2xvdxIWCgZ2b2x1bWUYBiABKANSBnZvbHVtZQ==');

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


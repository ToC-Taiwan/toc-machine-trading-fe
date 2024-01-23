//
//  Generated code. Do not modify.
//  source: forwarder/mq.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use orderTypeDescriptor instead')
const OrderType$json = {
  '1': 'OrderType',
  '2': [
    {'1': 'TYPE_UNKNOWN', '2': 0},
    {'1': 'TYPE_STOCK_LOT', '2': 1},
    {'1': 'TYPE_STOCK_SHARE', '2': 2},
    {'1': 'TYPE_FUTURE', '2': 3},
  ],
};

/// Descriptor for `OrderType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List orderTypeDescriptor = $convert.base64Decode(
    'CglPcmRlclR5cGUSEAoMVFlQRV9VTktOT1dOEAASEgoOVFlQRV9TVE9DS19MT1QQARIUChBUWV'
    'BFX1NUT0NLX1NIQVJFEAISDwoLVFlQRV9GVVRVUkUQAw==');

@$core.Deprecated('Use eventMessageDescriptor instead')
const EventMessage$json = {
  '1': 'EventMessage',
  '2': [
    {'1': 'resp_code', '3': 1, '4': 1, '5': 3, '10': 'respCode'},
    {'1': 'event_code', '3': 2, '4': 1, '5': 3, '10': 'eventCode'},
    {'1': 'info', '3': 3, '4': 1, '5': 9, '10': 'info'},
    {'1': 'event', '3': 4, '4': 1, '5': 9, '10': 'event'},
    {'1': 'event_time', '3': 5, '4': 1, '5': 9, '10': 'eventTime'},
  ],
};

/// Descriptor for `EventMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventMessageDescriptor = $convert.base64Decode(
    'CgxFdmVudE1lc3NhZ2USGwoJcmVzcF9jb2RlGAEgASgDUghyZXNwQ29kZRIdCgpldmVudF9jb2'
    'RlGAIgASgDUglldmVudENvZGUSEgoEaW5mbxgDIAEoCVIEaW5mbxIUCgVldmVudBgEIAEoCVIF'
    'ZXZlbnQSHQoKZXZlbnRfdGltZRgFIAEoCVIJZXZlbnRUaW1l');

@$core.Deprecated('Use stockRealTimeTickMessageDescriptor instead')
const StockRealTimeTickMessage$json = {
  '1': 'StockRealTimeTickMessage',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'date_time', '3': 2, '4': 1, '5': 9, '10': 'dateTime'},
    {'1': 'open', '3': 3, '4': 1, '5': 1, '10': 'open'},
    {'1': 'avg_price', '3': 4, '4': 1, '5': 1, '10': 'avgPrice'},
    {'1': 'close', '3': 5, '4': 1, '5': 1, '10': 'close'},
    {'1': 'high', '3': 6, '4': 1, '5': 1, '10': 'high'},
    {'1': 'low', '3': 7, '4': 1, '5': 1, '10': 'low'},
    {'1': 'amount', '3': 8, '4': 1, '5': 1, '10': 'amount'},
    {'1': 'total_amount', '3': 9, '4': 1, '5': 1, '10': 'totalAmount'},
    {'1': 'volume', '3': 10, '4': 1, '5': 3, '10': 'volume'},
    {'1': 'total_volume', '3': 11, '4': 1, '5': 3, '10': 'totalVolume'},
    {'1': 'tick_type', '3': 12, '4': 1, '5': 3, '10': 'tickType'},
    {'1': 'chg_type', '3': 13, '4': 1, '5': 3, '10': 'chgType'},
    {'1': 'price_chg', '3': 14, '4': 1, '5': 1, '10': 'priceChg'},
    {'1': 'pct_chg', '3': 15, '4': 1, '5': 1, '10': 'pctChg'},
    {'1': 'bid_side_total_vol', '3': 16, '4': 1, '5': 3, '10': 'bidSideTotalVol'},
    {'1': 'ask_side_total_vol', '3': 17, '4': 1, '5': 3, '10': 'askSideTotalVol'},
    {'1': 'bid_side_total_cnt', '3': 18, '4': 1, '5': 3, '10': 'bidSideTotalCnt'},
    {'1': 'ask_side_total_cnt', '3': 19, '4': 1, '5': 3, '10': 'askSideTotalCnt'},
    {'1': 'suspend', '3': 20, '4': 1, '5': 8, '10': 'suspend'},
    {'1': 'simtrade', '3': 21, '4': 1, '5': 8, '10': 'simtrade'},
  ],
};

/// Descriptor for `StockRealTimeTickMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stockRealTimeTickMessageDescriptor = $convert.base64Decode(
    'ChhTdG9ja1JlYWxUaW1lVGlja01lc3NhZ2USEgoEY29kZRgBIAEoCVIEY29kZRIbCglkYXRlX3'
    'RpbWUYAiABKAlSCGRhdGVUaW1lEhIKBG9wZW4YAyABKAFSBG9wZW4SGwoJYXZnX3ByaWNlGAQg'
    'ASgBUghhdmdQcmljZRIUCgVjbG9zZRgFIAEoAVIFY2xvc2USEgoEaGlnaBgGIAEoAVIEaGlnaB'
    'IQCgNsb3cYByABKAFSA2xvdxIWCgZhbW91bnQYCCABKAFSBmFtb3VudBIhCgx0b3RhbF9hbW91'
    'bnQYCSABKAFSC3RvdGFsQW1vdW50EhYKBnZvbHVtZRgKIAEoA1IGdm9sdW1lEiEKDHRvdGFsX3'
    'ZvbHVtZRgLIAEoA1ILdG90YWxWb2x1bWUSGwoJdGlja190eXBlGAwgASgDUgh0aWNrVHlwZRIZ'
    'CghjaGdfdHlwZRgNIAEoA1IHY2hnVHlwZRIbCglwcmljZV9jaGcYDiABKAFSCHByaWNlQ2hnEh'
    'cKB3BjdF9jaGcYDyABKAFSBnBjdENoZxIrChJiaWRfc2lkZV90b3RhbF92b2wYECABKANSD2Jp'
    'ZFNpZGVUb3RhbFZvbBIrChJhc2tfc2lkZV90b3RhbF92b2wYESABKANSD2Fza1NpZGVUb3RhbF'
    'ZvbBIrChJiaWRfc2lkZV90b3RhbF9jbnQYEiABKANSD2JpZFNpZGVUb3RhbENudBIrChJhc2tf'
    'c2lkZV90b3RhbF9jbnQYEyABKANSD2Fza1NpZGVUb3RhbENudBIYCgdzdXNwZW5kGBQgASgIUg'
    'dzdXNwZW5kEhoKCHNpbXRyYWRlGBUgASgIUghzaW10cmFkZQ==');

@$core.Deprecated('Use stockRealTimeBidAskMessageDescriptor instead')
const StockRealTimeBidAskMessage$json = {
  '1': 'StockRealTimeBidAskMessage',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'date_time', '3': 2, '4': 1, '5': 9, '10': 'dateTime'},
    {'1': 'bid_price', '3': 3, '4': 3, '5': 1, '10': 'bidPrice'},
    {'1': 'bid_volume', '3': 4, '4': 3, '5': 3, '10': 'bidVolume'},
    {'1': 'diff_bid_vol', '3': 5, '4': 3, '5': 3, '10': 'diffBidVol'},
    {'1': 'ask_price', '3': 6, '4': 3, '5': 1, '10': 'askPrice'},
    {'1': 'ask_volume', '3': 7, '4': 3, '5': 3, '10': 'askVolume'},
    {'1': 'diff_ask_vol', '3': 8, '4': 3, '5': 3, '10': 'diffAskVol'},
    {'1': 'suspend', '3': 9, '4': 1, '5': 8, '10': 'suspend'},
    {'1': 'simtrade', '3': 10, '4': 1, '5': 8, '10': 'simtrade'},
  ],
};

/// Descriptor for `StockRealTimeBidAskMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stockRealTimeBidAskMessageDescriptor = $convert.base64Decode(
    'ChpTdG9ja1JlYWxUaW1lQmlkQXNrTWVzc2FnZRISCgRjb2RlGAEgASgJUgRjb2RlEhsKCWRhdG'
    'VfdGltZRgCIAEoCVIIZGF0ZVRpbWUSGwoJYmlkX3ByaWNlGAMgAygBUghiaWRQcmljZRIdCgpi'
    'aWRfdm9sdW1lGAQgAygDUgliaWRWb2x1bWUSIAoMZGlmZl9iaWRfdm9sGAUgAygDUgpkaWZmQm'
    'lkVm9sEhsKCWFza19wcmljZRgGIAMoAVIIYXNrUHJpY2USHQoKYXNrX3ZvbHVtZRgHIAMoA1IJ'
    'YXNrVm9sdW1lEiAKDGRpZmZfYXNrX3ZvbBgIIAMoA1IKZGlmZkFza1ZvbBIYCgdzdXNwZW5kGA'
    'kgASgIUgdzdXNwZW5kEhoKCHNpbXRyYWRlGAogASgIUghzaW10cmFkZQ==');

@$core.Deprecated('Use futureRealTimeTickMessageDescriptor instead')
const FutureRealTimeTickMessage$json = {
  '1': 'FutureRealTimeTickMessage',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'date_time', '3': 2, '4': 1, '5': 9, '10': 'dateTime'},
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
    {'1': 'simtrade', '3': 19, '4': 1, '5': 8, '10': 'simtrade'},
  ],
};

/// Descriptor for `FutureRealTimeTickMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List futureRealTimeTickMessageDescriptor = $convert.base64Decode(
    'ChlGdXR1cmVSZWFsVGltZVRpY2tNZXNzYWdlEhIKBGNvZGUYASABKAlSBGNvZGUSGwoJZGF0ZV'
    '90aW1lGAIgASgJUghkYXRlVGltZRISCgRvcGVuGAMgASgBUgRvcGVuEikKEHVuZGVybHlpbmdf'
    'cHJpY2UYBCABKAFSD3VuZGVybHlpbmdQcmljZRIrChJiaWRfc2lkZV90b3RhbF92b2wYBSABKA'
    'NSD2JpZFNpZGVUb3RhbFZvbBIrChJhc2tfc2lkZV90b3RhbF92b2wYBiABKANSD2Fza1NpZGVU'
    'b3RhbFZvbBIbCglhdmdfcHJpY2UYByABKAFSCGF2Z1ByaWNlEhQKBWNsb3NlGAggASgBUgVjbG'
    '9zZRISCgRoaWdoGAkgASgBUgRoaWdoEhAKA2xvdxgKIAEoAVIDbG93EhYKBmFtb3VudBgLIAEo'
    'AVIGYW1vdW50EiEKDHRvdGFsX2Ftb3VudBgMIAEoAVILdG90YWxBbW91bnQSFgoGdm9sdW1lGA'
    '0gASgDUgZ2b2x1bWUSIQoMdG90YWxfdm9sdW1lGA4gASgDUgt0b3RhbFZvbHVtZRIbCgl0aWNr'
    'X3R5cGUYDyABKANSCHRpY2tUeXBlEhkKCGNoZ190eXBlGBAgASgDUgdjaGdUeXBlEhsKCXByaW'
    'NlX2NoZxgRIAEoAVIIcHJpY2VDaGcSFwoHcGN0X2NoZxgSIAEoAVIGcGN0Q2hnEhoKCHNpbXRy'
    'YWRlGBMgASgIUghzaW10cmFkZQ==');

@$core.Deprecated('Use futureRealTimeBidAskMessageDescriptor instead')
const FutureRealTimeBidAskMessage$json = {
  '1': 'FutureRealTimeBidAskMessage',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'date_time', '3': 2, '4': 1, '5': 9, '10': 'dateTime'},
    {'1': 'bid_total_vol', '3': 3, '4': 1, '5': 3, '10': 'bidTotalVol'},
    {'1': 'ask_total_vol', '3': 4, '4': 1, '5': 3, '10': 'askTotalVol'},
    {'1': 'bid_price', '3': 5, '4': 3, '5': 1, '10': 'bidPrice'},
    {'1': 'bid_volume', '3': 6, '4': 3, '5': 3, '10': 'bidVolume'},
    {'1': 'diff_bid_vol', '3': 7, '4': 3, '5': 3, '10': 'diffBidVol'},
    {'1': 'ask_price', '3': 8, '4': 3, '5': 1, '10': 'askPrice'},
    {'1': 'ask_volume', '3': 9, '4': 3, '5': 3, '10': 'askVolume'},
    {'1': 'diff_ask_vol', '3': 10, '4': 3, '5': 3, '10': 'diffAskVol'},
    {'1': 'first_derived_bid_price', '3': 11, '4': 1, '5': 1, '10': 'firstDerivedBidPrice'},
    {'1': 'first_derived_ask_price', '3': 12, '4': 1, '5': 1, '10': 'firstDerivedAskPrice'},
    {'1': 'first_derived_bid_vol', '3': 13, '4': 1, '5': 3, '10': 'firstDerivedBidVol'},
    {'1': 'first_derived_ask_vol', '3': 14, '4': 1, '5': 3, '10': 'firstDerivedAskVol'},
    {'1': 'underlying_price', '3': 15, '4': 1, '5': 1, '10': 'underlyingPrice'},
    {'1': 'simtrade', '3': 16, '4': 1, '5': 8, '10': 'simtrade'},
  ],
};

/// Descriptor for `FutureRealTimeBidAskMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List futureRealTimeBidAskMessageDescriptor = $convert.base64Decode(
    'ChtGdXR1cmVSZWFsVGltZUJpZEFza01lc3NhZ2USEgoEY29kZRgBIAEoCVIEY29kZRIbCglkYX'
    'RlX3RpbWUYAiABKAlSCGRhdGVUaW1lEiIKDWJpZF90b3RhbF92b2wYAyABKANSC2JpZFRvdGFs'
    'Vm9sEiIKDWFza190b3RhbF92b2wYBCABKANSC2Fza1RvdGFsVm9sEhsKCWJpZF9wcmljZRgFIA'
    'MoAVIIYmlkUHJpY2USHQoKYmlkX3ZvbHVtZRgGIAMoA1IJYmlkVm9sdW1lEiAKDGRpZmZfYmlk'
    'X3ZvbBgHIAMoA1IKZGlmZkJpZFZvbBIbCglhc2tfcHJpY2UYCCADKAFSCGFza1ByaWNlEh0KCm'
    'Fza192b2x1bWUYCSADKANSCWFza1ZvbHVtZRIgCgxkaWZmX2Fza192b2wYCiADKANSCmRpZmZB'
    'c2tWb2wSNQoXZmlyc3RfZGVyaXZlZF9iaWRfcHJpY2UYCyABKAFSFGZpcnN0RGVyaXZlZEJpZF'
    'ByaWNlEjUKF2ZpcnN0X2Rlcml2ZWRfYXNrX3ByaWNlGAwgASgBUhRmaXJzdERlcml2ZWRBc2tQ'
    'cmljZRIxChVmaXJzdF9kZXJpdmVkX2JpZF92b2wYDSABKANSEmZpcnN0RGVyaXZlZEJpZFZvbB'
    'IxChVmaXJzdF9kZXJpdmVkX2Fza192b2wYDiABKANSEmZpcnN0RGVyaXZlZEFza1ZvbBIpChB1'
    'bmRlcmx5aW5nX3ByaWNlGA8gASgBUg91bmRlcmx5aW5nUHJpY2USGgoIc2ltdHJhZGUYECABKA'
    'hSCHNpbXRyYWRl');

@$core.Deprecated('Use orderStatusArrDescriptor instead')
const OrderStatusArr$json = {
  '1': 'OrderStatusArr',
  '2': [
    {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.forwarder.OrderStatus', '10': 'data'},
  ],
};

/// Descriptor for `OrderStatusArr`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orderStatusArrDescriptor = $convert.base64Decode(
    'Cg5PcmRlclN0YXR1c0FychIqCgRkYXRhGAEgAygLMhYuZm9yd2FyZGVyLk9yZGVyU3RhdHVzUg'
    'RkYXRh');

@$core.Deprecated('Use orderStatusDescriptor instead')
const OrderStatus$json = {
  '1': 'OrderStatus',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.forwarder.OrderType', '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'code', '3': 3, '4': 1, '5': 9, '10': 'code'},
    {'1': 'action', '3': 4, '4': 1, '5': 9, '10': 'action'},
    {'1': 'price', '3': 5, '4': 1, '5': 1, '10': 'price'},
    {'1': 'quantity', '3': 6, '4': 1, '5': 3, '10': 'quantity'},
    {'1': 'order_id', '3': 7, '4': 1, '5': 9, '10': 'orderId'},
    {'1': 'order_time', '3': 8, '4': 1, '5': 9, '10': 'orderTime'},
  ],
};

/// Descriptor for `OrderStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orderStatusDescriptor = $convert.base64Decode(
    'CgtPcmRlclN0YXR1cxIoCgR0eXBlGAEgASgOMhQuZm9yd2FyZGVyLk9yZGVyVHlwZVIEdHlwZR'
    'IWCgZzdGF0dXMYAiABKAlSBnN0YXR1cxISCgRjb2RlGAMgASgJUgRjb2RlEhYKBmFjdGlvbhgE'
    'IAEoCVIGYWN0aW9uEhQKBXByaWNlGAUgASgBUgVwcmljZRIaCghxdWFudGl0eRgGIAEoA1IIcX'
    'VhbnRpdHkSGQoIb3JkZXJfaWQYByABKAlSB29yZGVySWQSHQoKb3JkZXJfdGltZRgIIAEoCVIJ'
    'b3JkZXJUaW1l');


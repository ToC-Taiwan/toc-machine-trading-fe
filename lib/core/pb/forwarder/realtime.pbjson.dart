//
//  Generated code. Do not modify.
//  source: forwarder/realtime.proto
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

@$core.Deprecated('Use snapshotResponseDescriptor instead')
const SnapshotResponse$json = {
  '1': 'SnapshotResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.forwarder.SnapshotMessage', '10': 'data'},
  ],
};

/// Descriptor for `SnapshotResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List snapshotResponseDescriptor = $convert.base64Decode(
    'ChBTbmFwc2hvdFJlc3BvbnNlEi4KBGRhdGEYASADKAsyGi5mb3J3YXJkZXIuU25hcHNob3RNZX'
    'NzYWdlUgRkYXRh');

@$core.Deprecated('Use yahooFinancePriceDescriptor instead')
const YahooFinancePrice$json = {
  '1': 'YahooFinancePrice',
  '2': [
    {'1': 'price', '3': 1, '4': 1, '5': 1, '10': 'price'},
    {'1': 'last', '3': 2, '4': 1, '5': 1, '10': 'last'},
  ],
};

/// Descriptor for `YahooFinancePrice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List yahooFinancePriceDescriptor = $convert.base64Decode(
    'ChFZYWhvb0ZpbmFuY2VQcmljZRIUCgVwcmljZRgBIAEoAVIFcHJpY2USEgoEbGFzdBgCIAEoAV'
    'IEbGFzdA==');

@$core.Deprecated('Use volumeRankRequestDescriptor instead')
const VolumeRankRequest$json = {
  '1': 'VolumeRankRequest',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 3, '10': 'count'},
    {'1': 'date', '3': 2, '4': 1, '5': 9, '10': 'date'},
  ],
};

/// Descriptor for `VolumeRankRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeRankRequestDescriptor = $convert.base64Decode(
    'ChFWb2x1bWVSYW5rUmVxdWVzdBIUCgVjb3VudBgBIAEoA1IFY291bnQSEgoEZGF0ZRgCIAEoCV'
    'IEZGF0ZQ==');

@$core.Deprecated('Use snapshotMessageDescriptor instead')
const SnapshotMessage$json = {
  '1': 'SnapshotMessage',
  '2': [
    {'1': 'ts', '3': 1, '4': 1, '5': 3, '10': 'ts'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    {'1': 'exchange', '3': 3, '4': 1, '5': 9, '10': 'exchange'},
    {'1': 'open', '3': 4, '4': 1, '5': 1, '10': 'open'},
    {'1': 'high', '3': 5, '4': 1, '5': 1, '10': 'high'},
    {'1': 'low', '3': 6, '4': 1, '5': 1, '10': 'low'},
    {'1': 'close', '3': 7, '4': 1, '5': 1, '10': 'close'},
    {'1': 'tick_type', '3': 8, '4': 1, '5': 9, '10': 'tickType'},
    {'1': 'change_price', '3': 9, '4': 1, '5': 1, '10': 'changePrice'},
    {'1': 'change_rate', '3': 10, '4': 1, '5': 1, '10': 'changeRate'},
    {'1': 'change_type', '3': 11, '4': 1, '5': 9, '10': 'changeType'},
    {'1': 'average_price', '3': 12, '4': 1, '5': 1, '10': 'averagePrice'},
    {'1': 'volume', '3': 13, '4': 1, '5': 3, '10': 'volume'},
    {'1': 'total_volume', '3': 14, '4': 1, '5': 3, '10': 'totalVolume'},
    {'1': 'amount', '3': 15, '4': 1, '5': 3, '10': 'amount'},
    {'1': 'total_amount', '3': 16, '4': 1, '5': 3, '10': 'totalAmount'},
    {'1': 'yesterday_volume', '3': 17, '4': 1, '5': 1, '10': 'yesterdayVolume'},
    {'1': 'buy_price', '3': 18, '4': 1, '5': 1, '10': 'buyPrice'},
    {'1': 'buy_volume', '3': 19, '4': 1, '5': 1, '10': 'buyVolume'},
    {'1': 'sell_price', '3': 20, '4': 1, '5': 1, '10': 'sellPrice'},
    {'1': 'sell_volume', '3': 21, '4': 1, '5': 3, '10': 'sellVolume'},
    {'1': 'volume_ratio', '3': 22, '4': 1, '5': 1, '10': 'volumeRatio'},
  ],
};

/// Descriptor for `SnapshotMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List snapshotMessageDescriptor = $convert.base64Decode(
    'Cg9TbmFwc2hvdE1lc3NhZ2USDgoCdHMYASABKANSAnRzEhIKBGNvZGUYAiABKAlSBGNvZGUSGg'
    'oIZXhjaGFuZ2UYAyABKAlSCGV4Y2hhbmdlEhIKBG9wZW4YBCABKAFSBG9wZW4SEgoEaGlnaBgF'
    'IAEoAVIEaGlnaBIQCgNsb3cYBiABKAFSA2xvdxIUCgVjbG9zZRgHIAEoAVIFY2xvc2USGwoJdG'
    'lja190eXBlGAggASgJUgh0aWNrVHlwZRIhCgxjaGFuZ2VfcHJpY2UYCSABKAFSC2NoYW5nZVBy'
    'aWNlEh8KC2NoYW5nZV9yYXRlGAogASgBUgpjaGFuZ2VSYXRlEh8KC2NoYW5nZV90eXBlGAsgAS'
    'gJUgpjaGFuZ2VUeXBlEiMKDWF2ZXJhZ2VfcHJpY2UYDCABKAFSDGF2ZXJhZ2VQcmljZRIWCgZ2'
    'b2x1bWUYDSABKANSBnZvbHVtZRIhCgx0b3RhbF92b2x1bWUYDiABKANSC3RvdGFsVm9sdW1lEh'
    'YKBmFtb3VudBgPIAEoA1IGYW1vdW50EiEKDHRvdGFsX2Ftb3VudBgQIAEoA1ILdG90YWxBbW91'
    'bnQSKQoQeWVzdGVyZGF5X3ZvbHVtZRgRIAEoAVIPeWVzdGVyZGF5Vm9sdW1lEhsKCWJ1eV9wcm'
    'ljZRgSIAEoAVIIYnV5UHJpY2USHQoKYnV5X3ZvbHVtZRgTIAEoAVIJYnV5Vm9sdW1lEh0KCnNl'
    'bGxfcHJpY2UYFCABKAFSCXNlbGxQcmljZRIfCgtzZWxsX3ZvbHVtZRgVIAEoA1IKc2VsbFZvbH'
    'VtZRIhCgx2b2x1bWVfcmF0aW8YFiABKAFSC3ZvbHVtZVJhdGlv');

@$core.Deprecated('Use stockVolumeRankResponseDescriptor instead')
const StockVolumeRankResponse$json = {
  '1': 'StockVolumeRankResponse',
  '2': [
    {'1': 'data', '3': 1, '4': 3, '5': 11, '6': '.forwarder.StockVolumeRankMessage', '10': 'data'},
  ],
};

/// Descriptor for `StockVolumeRankResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stockVolumeRankResponseDescriptor = $convert.base64Decode(
    'ChdTdG9ja1ZvbHVtZVJhbmtSZXNwb25zZRI1CgRkYXRhGAEgAygLMiEuZm9yd2FyZGVyLlN0b2'
    'NrVm9sdW1lUmFua01lc3NhZ2VSBGRhdGE=');

@$core.Deprecated('Use stockVolumeRankMessageDescriptor instead')
const StockVolumeRankMessage$json = {
  '1': 'StockVolumeRankMessage',
  '2': [
    {'1': 'date', '3': 1, '4': 1, '5': 9, '10': 'date'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'ts', '3': 4, '4': 1, '5': 3, '10': 'ts'},
    {'1': 'open', '3': 5, '4': 1, '5': 1, '10': 'open'},
    {'1': 'high', '3': 6, '4': 1, '5': 1, '10': 'high'},
    {'1': 'low', '3': 7, '4': 1, '5': 1, '10': 'low'},
    {'1': 'close', '3': 8, '4': 1, '5': 1, '10': 'close'},
    {'1': 'price_range', '3': 9, '4': 1, '5': 1, '10': 'priceRange'},
    {'1': 'tick_type', '3': 10, '4': 1, '5': 3, '10': 'tickType'},
    {'1': 'change_price', '3': 11, '4': 1, '5': 1, '10': 'changePrice'},
    {'1': 'change_type', '3': 12, '4': 1, '5': 3, '10': 'changeType'},
    {'1': 'average_price', '3': 13, '4': 1, '5': 1, '10': 'averagePrice'},
    {'1': 'volume', '3': 14, '4': 1, '5': 3, '10': 'volume'},
    {'1': 'total_volume', '3': 15, '4': 1, '5': 3, '10': 'totalVolume'},
    {'1': 'amount', '3': 16, '4': 1, '5': 3, '10': 'amount'},
    {'1': 'total_amount', '3': 17, '4': 1, '5': 3, '10': 'totalAmount'},
    {'1': 'yesterday_volume', '3': 18, '4': 1, '5': 3, '10': 'yesterdayVolume'},
    {'1': 'volume_ratio', '3': 19, '4': 1, '5': 1, '10': 'volumeRatio'},
    {'1': 'buy_price', '3': 20, '4': 1, '5': 1, '10': 'buyPrice'},
    {'1': 'buy_volume', '3': 21, '4': 1, '5': 3, '10': 'buyVolume'},
    {'1': 'sell_price', '3': 22, '4': 1, '5': 1, '10': 'sellPrice'},
    {'1': 'sell_volume', '3': 23, '4': 1, '5': 3, '10': 'sellVolume'},
    {'1': 'bid_orders', '3': 24, '4': 1, '5': 3, '10': 'bidOrders'},
    {'1': 'bid_volumes', '3': 25, '4': 1, '5': 3, '10': 'bidVolumes'},
    {'1': 'ask_orders', '3': 26, '4': 1, '5': 3, '10': 'askOrders'},
    {'1': 'ask_volumes', '3': 27, '4': 1, '5': 3, '10': 'askVolumes'},
  ],
};

/// Descriptor for `StockVolumeRankMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stockVolumeRankMessageDescriptor = $convert.base64Decode(
    'ChZTdG9ja1ZvbHVtZVJhbmtNZXNzYWdlEhIKBGRhdGUYASABKAlSBGRhdGUSEgoEY29kZRgCIA'
    'EoCVIEY29kZRISCgRuYW1lGAMgASgJUgRuYW1lEg4KAnRzGAQgASgDUgJ0cxISCgRvcGVuGAUg'
    'ASgBUgRvcGVuEhIKBGhpZ2gYBiABKAFSBGhpZ2gSEAoDbG93GAcgASgBUgNsb3cSFAoFY2xvc2'
    'UYCCABKAFSBWNsb3NlEh8KC3ByaWNlX3JhbmdlGAkgASgBUgpwcmljZVJhbmdlEhsKCXRpY2tf'
    'dHlwZRgKIAEoA1IIdGlja1R5cGUSIQoMY2hhbmdlX3ByaWNlGAsgASgBUgtjaGFuZ2VQcmljZR'
    'IfCgtjaGFuZ2VfdHlwZRgMIAEoA1IKY2hhbmdlVHlwZRIjCg1hdmVyYWdlX3ByaWNlGA0gASgB'
    'UgxhdmVyYWdlUHJpY2USFgoGdm9sdW1lGA4gASgDUgZ2b2x1bWUSIQoMdG90YWxfdm9sdW1lGA'
    '8gASgDUgt0b3RhbFZvbHVtZRIWCgZhbW91bnQYECABKANSBmFtb3VudBIhCgx0b3RhbF9hbW91'
    'bnQYESABKANSC3RvdGFsQW1vdW50EikKEHllc3RlcmRheV92b2x1bWUYEiABKANSD3llc3Rlcm'
    'RheVZvbHVtZRIhCgx2b2x1bWVfcmF0aW8YEyABKAFSC3ZvbHVtZVJhdGlvEhsKCWJ1eV9wcmlj'
    'ZRgUIAEoAVIIYnV5UHJpY2USHQoKYnV5X3ZvbHVtZRgVIAEoA1IJYnV5Vm9sdW1lEh0KCnNlbG'
    'xfcHJpY2UYFiABKAFSCXNlbGxQcmljZRIfCgtzZWxsX3ZvbHVtZRgXIAEoA1IKc2VsbFZvbHVt'
    'ZRIdCgpiaWRfb3JkZXJzGBggASgDUgliaWRPcmRlcnMSHwoLYmlkX3ZvbHVtZXMYGSABKANSCm'
    'JpZFZvbHVtZXMSHQoKYXNrX29yZGVycxgaIAEoA1IJYXNrT3JkZXJzEh8KC2Fza192b2x1bWVz'
    'GBsgASgDUgphc2tWb2x1bWVz');

const $core.Map<$core.String, $core.dynamic> RealTimeDataInterfaceServiceBase$json = {
  '1': 'RealTimeDataInterface',
  '2': [
    {'1': 'GetAllStockSnapshot', '2': '.google.protobuf.Empty', '3': '.forwarder.SnapshotResponse', '4': {}},
    {'1': 'GetStockSnapshotByNumArr', '2': '.forwarder.StockNumArr', '3': '.forwarder.SnapshotResponse', '4': {}},
    {'1': 'GetStockSnapshotTSE', '2': '.google.protobuf.Empty', '3': '.forwarder.SnapshotResponse', '4': {}},
    {'1': 'GetStockSnapshotOTC', '2': '.google.protobuf.Empty', '3': '.forwarder.SnapshotResponse', '4': {}},
    {'1': 'GetNasdaq', '2': '.google.protobuf.Empty', '3': '.forwarder.YahooFinancePrice', '4': {}},
    {'1': 'GetNasdaqFuture', '2': '.google.protobuf.Empty', '3': '.forwarder.YahooFinancePrice', '4': {}},
    {'1': 'GetStockVolumeRank', '2': '.forwarder.VolumeRankRequest', '3': '.forwarder.StockVolumeRankResponse', '4': {}},
    {'1': 'GetFutureSnapshotByCodeArr', '2': '.forwarder.FutureCodeArr', '3': '.forwarder.SnapshotResponse', '4': {}},
  ],
};

@$core.Deprecated('Use realTimeDataInterfaceServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> RealTimeDataInterfaceServiceBase$messageJson = {
  '.google.protobuf.Empty': $1.Empty$json,
  '.forwarder.SnapshotResponse': SnapshotResponse$json,
  '.forwarder.SnapshotMessage': SnapshotMessage$json,
  '.forwarder.StockNumArr': $2.StockNumArr$json,
  '.forwarder.YahooFinancePrice': YahooFinancePrice$json,
  '.forwarder.VolumeRankRequest': VolumeRankRequest$json,
  '.forwarder.StockVolumeRankResponse': StockVolumeRankResponse$json,
  '.forwarder.StockVolumeRankMessage': StockVolumeRankMessage$json,
  '.forwarder.FutureCodeArr': $2.FutureCodeArr$json,
};

/// Descriptor for `RealTimeDataInterface`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List realTimeDataInterfaceServiceDescriptor = $convert.base64Decode(
    'ChVSZWFsVGltZURhdGFJbnRlcmZhY2USTAoTR2V0QWxsU3RvY2tTbmFwc2hvdBIWLmdvb2dsZS'
    '5wcm90b2J1Zi5FbXB0eRobLmZvcndhcmRlci5TbmFwc2hvdFJlc3BvbnNlIgASUQoYR2V0U3Rv'
    'Y2tTbmFwc2hvdEJ5TnVtQXJyEhYuZm9yd2FyZGVyLlN0b2NrTnVtQXJyGhsuZm9yd2FyZGVyLl'
    'NuYXBzaG90UmVzcG9uc2UiABJMChNHZXRTdG9ja1NuYXBzaG90VFNFEhYuZ29vZ2xlLnByb3Rv'
    'YnVmLkVtcHR5GhsuZm9yd2FyZGVyLlNuYXBzaG90UmVzcG9uc2UiABJMChNHZXRTdG9ja1NuYX'
    'BzaG90T1RDEhYuZ29vZ2xlLnByb3RvYnVmLkVtcHR5GhsuZm9yd2FyZGVyLlNuYXBzaG90UmVz'
    'cG9uc2UiABJDCglHZXROYXNkYXESFi5nb29nbGUucHJvdG9idWYuRW1wdHkaHC5mb3J3YXJkZX'
    'IuWWFob29GaW5hbmNlUHJpY2UiABJJCg9HZXROYXNkYXFGdXR1cmUSFi5nb29nbGUucHJvdG9i'
    'dWYuRW1wdHkaHC5mb3J3YXJkZXIuWWFob29GaW5hbmNlUHJpY2UiABJYChJHZXRTdG9ja1ZvbH'
    'VtZVJhbmsSHC5mb3J3YXJkZXIuVm9sdW1lUmFua1JlcXVlc3QaIi5mb3J3YXJkZXIuU3RvY2tW'
    'b2x1bWVSYW5rUmVzcG9uc2UiABJVChpHZXRGdXR1cmVTbmFwc2hvdEJ5Q29kZUFychIYLmZvcn'
    'dhcmRlci5GdXR1cmVDb2RlQXJyGhsuZm9yd2FyZGVyLlNuYXBzaG90UmVzcG9uc2UiAA==');


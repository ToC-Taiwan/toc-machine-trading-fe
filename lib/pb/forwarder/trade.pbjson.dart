//
//  Generated code. Do not modify.
//  source: forwarder/trade.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

import '../google/protobuf/empty.pbjson.dart' as $0;
import 'entity.pbjson.dart' as $3;

@$core.Deprecated('Use futurePositionDescriptor instead')
const FuturePosition$json = {
  '1': 'FuturePosition',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'direction', '3': 2, '4': 1, '5': 9, '10': 'direction'},
    {'1': 'quantity', '3': 3, '4': 1, '5': 5, '10': 'quantity'},
    {'1': 'price', '3': 4, '4': 1, '5': 1, '10': 'price'},
    {'1': 'last_price', '3': 5, '4': 1, '5': 1, '10': 'lastPrice'},
    {'1': 'pnl', '3': 6, '4': 1, '5': 1, '10': 'pnl'},
  ],
};

/// Descriptor for `FuturePosition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List futurePositionDescriptor = $convert.base64Decode(
    'Cg5GdXR1cmVQb3NpdGlvbhISCgRjb2RlGAEgASgJUgRjb2RlEhwKCWRpcmVjdGlvbhgCIAEoCV'
    'IJZGlyZWN0aW9uEhoKCHF1YW50aXR5GAMgASgFUghxdWFudGl0eRIUCgVwcmljZRgEIAEoAVIF'
    'cHJpY2USHQoKbGFzdF9wcmljZRgFIAEoAVIJbGFzdFByaWNlEhAKA3BubBgGIAEoAVIDcG5s');

@$core.Deprecated('Use futurePositionArrDescriptor instead')
const FuturePositionArr$json = {
  '1': 'FuturePositionArr',
  '2': [
    {'1': 'position_arr', '3': 1, '4': 3, '5': 11, '6': '.forwarder.FuturePosition', '10': 'positionArr'},
  ],
};

/// Descriptor for `FuturePositionArr`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List futurePositionArrDescriptor = $convert.base64Decode(
    'ChFGdXR1cmVQb3NpdGlvbkFychI8Cgxwb3NpdGlvbl9hcnIYASADKAsyGS5mb3J3YXJkZXIuRn'
    'V0dXJlUG9zaXRpb25SC3Bvc2l0aW9uQXJy');

@$core.Deprecated('Use stockPositionDescriptor instead')
const StockPosition$json = {
  '1': 'StockPosition',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    {'1': 'code', '3': 2, '4': 1, '5': 9, '10': 'code'},
    {'1': 'direction', '3': 3, '4': 1, '5': 9, '10': 'direction'},
    {'1': 'quantity', '3': 4, '4': 1, '5': 5, '10': 'quantity'},
    {'1': 'price', '3': 5, '4': 1, '5': 1, '10': 'price'},
    {'1': 'last_price', '3': 6, '4': 1, '5': 1, '10': 'lastPrice'},
    {'1': 'pnl', '3': 7, '4': 1, '5': 1, '10': 'pnl'},
    {'1': 'yd_quantity', '3': 8, '4': 1, '5': 5, '10': 'ydQuantity'},
    {'1': 'cond', '3': 9, '4': 1, '5': 9, '10': 'cond'},
    {'1': 'margin_purchase_amount', '3': 10, '4': 1, '5': 5, '10': 'marginPurchaseAmount'},
    {'1': 'collateral', '3': 11, '4': 1, '5': 5, '10': 'collateral'},
    {'1': 'short_sale_margin', '3': 12, '4': 1, '5': 5, '10': 'shortSaleMargin'},
    {'1': 'interest', '3': 13, '4': 1, '5': 5, '10': 'interest'},
  ],
};

/// Descriptor for `StockPosition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stockPositionDescriptor = $convert.base64Decode(
    'Cg1TdG9ja1Bvc2l0aW9uEg4KAmlkGAEgASgFUgJpZBISCgRjb2RlGAIgASgJUgRjb2RlEhwKCW'
    'RpcmVjdGlvbhgDIAEoCVIJZGlyZWN0aW9uEhoKCHF1YW50aXR5GAQgASgFUghxdWFudGl0eRIU'
    'CgVwcmljZRgFIAEoAVIFcHJpY2USHQoKbGFzdF9wcmljZRgGIAEoAVIJbGFzdFByaWNlEhAKA3'
    'BubBgHIAEoAVIDcG5sEh8KC3lkX3F1YW50aXR5GAggASgFUgp5ZFF1YW50aXR5EhIKBGNvbmQY'
    'CSABKAlSBGNvbmQSNAoWbWFyZ2luX3B1cmNoYXNlX2Ftb3VudBgKIAEoBVIUbWFyZ2luUHVyY2'
    'hhc2VBbW91bnQSHgoKY29sbGF0ZXJhbBgLIAEoBVIKY29sbGF0ZXJhbBIqChFzaG9ydF9zYWxl'
    'X21hcmdpbhgMIAEoBVIPc2hvcnRTYWxlTWFyZ2luEhoKCGludGVyZXN0GA0gASgFUghpbnRlcm'
    'VzdA==');

@$core.Deprecated('Use stockPositionArrDescriptor instead')
const StockPositionArr$json = {
  '1': 'StockPositionArr',
  '2': [
    {'1': 'position_arr', '3': 1, '4': 3, '5': 11, '6': '.forwarder.StockPosition', '10': 'positionArr'},
  ],
};

/// Descriptor for `StockPositionArr`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stockPositionArrDescriptor = $convert.base64Decode(
    'ChBTdG9ja1Bvc2l0aW9uQXJyEjsKDHBvc2l0aW9uX2FychgBIAMoCzIYLmZvcndhcmRlci5TdG'
    '9ja1Bvc2l0aW9uUgtwb3NpdGlvbkFycg==');

@$core.Deprecated('Use stockOrderDetailDescriptor instead')
const StockOrderDetail$json = {
  '1': 'StockOrderDetail',
  '2': [
    {'1': 'stock_num', '3': 1, '4': 1, '5': 9, '10': 'stockNum'},
    {'1': 'price', '3': 2, '4': 1, '5': 1, '10': 'price'},
    {'1': 'quantity', '3': 3, '4': 1, '5': 3, '10': 'quantity'},
    {'1': 'simulate', '3': 4, '4': 1, '5': 8, '10': 'simulate'},
  ],
};

/// Descriptor for `StockOrderDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stockOrderDetailDescriptor = $convert.base64Decode(
    'ChBTdG9ja09yZGVyRGV0YWlsEhsKCXN0b2NrX251bRgBIAEoCVIIc3RvY2tOdW0SFAoFcHJpY2'
    'UYAiABKAFSBXByaWNlEhoKCHF1YW50aXR5GAMgASgDUghxdWFudGl0eRIaCghzaW11bGF0ZRgE'
    'IAEoCFIIc2ltdWxhdGU=');

@$core.Deprecated('Use oddStockOrderDetailDescriptor instead')
const OddStockOrderDetail$json = {
  '1': 'OddStockOrderDetail',
  '2': [
    {'1': 'stock_num', '3': 1, '4': 1, '5': 9, '10': 'stockNum'},
    {'1': 'price', '3': 2, '4': 1, '5': 1, '10': 'price'},
    {'1': 'share', '3': 3, '4': 1, '5': 3, '10': 'share'},
  ],
};

/// Descriptor for `OddStockOrderDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oddStockOrderDetailDescriptor = $convert.base64Decode(
    'ChNPZGRTdG9ja09yZGVyRGV0YWlsEhsKCXN0b2NrX251bRgBIAEoCVIIc3RvY2tOdW0SFAoFcH'
    'JpY2UYAiABKAFSBXByaWNlEhQKBXNoYXJlGAMgASgDUgVzaGFyZQ==');

@$core.Deprecated('Use futureOrderDetailDescriptor instead')
const FutureOrderDetail$json = {
  '1': 'FutureOrderDetail',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'price', '3': 2, '4': 1, '5': 1, '10': 'price'},
    {'1': 'quantity', '3': 3, '4': 1, '5': 3, '10': 'quantity'},
    {'1': 'simulate', '3': 4, '4': 1, '5': 8, '10': 'simulate'},
  ],
};

/// Descriptor for `FutureOrderDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List futureOrderDetailDescriptor = $convert.base64Decode(
    'ChFGdXR1cmVPcmRlckRldGFpbBISCgRjb2RlGAEgASgJUgRjb2RlEhQKBXByaWNlGAIgASgBUg'
    'VwcmljZRIaCghxdWFudGl0eRgDIAEoA1IIcXVhbnRpdHkSGgoIc2ltdWxhdGUYBCABKAhSCHNp'
    'bXVsYXRl');

@$core.Deprecated('Use optionOrderDetailDescriptor instead')
const OptionOrderDetail$json = {
  '1': 'OptionOrderDetail',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'price', '3': 2, '4': 1, '5': 1, '10': 'price'},
    {'1': 'quantity', '3': 3, '4': 1, '5': 3, '10': 'quantity'},
    {'1': 'simulate', '3': 4, '4': 1, '5': 8, '10': 'simulate'},
  ],
};

/// Descriptor for `OptionOrderDetail`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List optionOrderDetailDescriptor = $convert.base64Decode(
    'ChFPcHRpb25PcmRlckRldGFpbBISCgRjb2RlGAEgASgJUgRjb2RlEhQKBXByaWNlGAIgASgBUg'
    'VwcmljZRIaCghxdWFudGl0eRgDIAEoA1IIcXVhbnRpdHkSGgoIc2ltdWxhdGUYBCABKAhSCHNp'
    'bXVsYXRl');

@$core.Deprecated('Use tradeResultDescriptor instead')
const TradeResult$json = {
  '1': 'TradeResult',
  '2': [
    {'1': 'order_id', '3': 1, '4': 1, '5': 9, '10': 'orderId'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'error', '3': 3, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `TradeResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tradeResultDescriptor = $convert.base64Decode(
    'CgtUcmFkZVJlc3VsdBIZCghvcmRlcl9pZBgBIAEoCVIHb3JkZXJJZBIWCgZzdGF0dXMYAiABKA'
    'lSBnN0YXR1cxIUCgVlcnJvchgDIAEoCVIFZXJyb3I=');

@$core.Deprecated('Use orderIDDescriptor instead')
const OrderID$json = {
  '1': 'OrderID',
  '2': [
    {'1': 'order_id', '3': 1, '4': 1, '5': 9, '10': 'orderId'},
    {'1': 'simulate', '3': 2, '4': 1, '5': 8, '10': 'simulate'},
  ],
};

/// Descriptor for `OrderID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List orderIDDescriptor = $convert.base64Decode(
    'CgdPcmRlcklEEhkKCG9yZGVyX2lkGAEgASgJUgdvcmRlcklkEhoKCHNpbXVsYXRlGAIgASgIUg'
    'hzaW11bGF0ZQ==');

@$core.Deprecated('Use futureOrderIDDescriptor instead')
const FutureOrderID$json = {
  '1': 'FutureOrderID',
  '2': [
    {'1': 'order_id', '3': 1, '4': 1, '5': 9, '10': 'orderId'},
    {'1': 'simulate', '3': 2, '4': 1, '5': 8, '10': 'simulate'},
  ],
};

/// Descriptor for `FutureOrderID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List futureOrderIDDescriptor = $convert.base64Decode(
    'Cg1GdXR1cmVPcmRlcklEEhkKCG9yZGVyX2lkGAEgASgJUgdvcmRlcklkEhoKCHNpbXVsYXRlGA'
    'IgASgIUghzaW11bGF0ZQ==');

@$core.Deprecated('Use optionOrderIDDescriptor instead')
const OptionOrderID$json = {
  '1': 'OptionOrderID',
  '2': [
    {'1': 'order_id', '3': 1, '4': 1, '5': 9, '10': 'orderId'},
    {'1': 'simulate', '3': 2, '4': 1, '5': 8, '10': 'simulate'},
  ],
};

/// Descriptor for `OptionOrderID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List optionOrderIDDescriptor = $convert.base64Decode(
    'Cg1PcHRpb25PcmRlcklEEhkKCG9yZGVyX2lkGAEgASgJUgdvcmRlcklkEhoKCHNpbXVsYXRlGA'
    'IgASgIUghzaW11bGF0ZQ==');

@$core.Deprecated('Use marginDescriptor instead')
const Margin$json = {
  '1': 'Margin',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    {'1': 'yesterday_balance', '3': 2, '4': 1, '5': 1, '10': 'yesterdayBalance'},
    {'1': 'today_balance', '3': 3, '4': 1, '5': 1, '10': 'todayBalance'},
    {'1': 'deposit_withdrawal', '3': 4, '4': 1, '5': 1, '10': 'depositWithdrawal'},
    {'1': 'fee', '3': 5, '4': 1, '5': 1, '10': 'fee'},
    {'1': 'tax', '3': 6, '4': 1, '5': 1, '10': 'tax'},
    {'1': 'initial_margin', '3': 7, '4': 1, '5': 1, '10': 'initialMargin'},
    {'1': 'maintenance_margin', '3': 8, '4': 1, '5': 1, '10': 'maintenanceMargin'},
    {'1': 'margin_call', '3': 9, '4': 1, '5': 1, '10': 'marginCall'},
    {'1': 'risk_indicator', '3': 10, '4': 1, '5': 1, '10': 'riskIndicator'},
    {'1': 'royalty_revenue_expenditure', '3': 11, '4': 1, '5': 1, '10': 'royaltyRevenueExpenditure'},
    {'1': 'equity', '3': 12, '4': 1, '5': 1, '10': 'equity'},
    {'1': 'equity_amount', '3': 13, '4': 1, '5': 1, '10': 'equityAmount'},
    {'1': 'option_openbuy_market_value', '3': 14, '4': 1, '5': 1, '10': 'optionOpenbuyMarketValue'},
    {'1': 'option_opensell_market_value', '3': 15, '4': 1, '5': 1, '10': 'optionOpensellMarketValue'},
    {'1': 'option_open_position', '3': 16, '4': 1, '5': 1, '10': 'optionOpenPosition'},
    {'1': 'option_settle_profitloss', '3': 17, '4': 1, '5': 1, '10': 'optionSettleProfitloss'},
    {'1': 'future_open_position', '3': 18, '4': 1, '5': 1, '10': 'futureOpenPosition'},
    {'1': 'today_future_open_position', '3': 19, '4': 1, '5': 1, '10': 'todayFutureOpenPosition'},
    {'1': 'future_settle_profitloss', '3': 20, '4': 1, '5': 1, '10': 'futureSettleProfitloss'},
    {'1': 'available_margin', '3': 21, '4': 1, '5': 1, '10': 'availableMargin'},
    {'1': 'plus_margin', '3': 22, '4': 1, '5': 1, '10': 'plusMargin'},
    {'1': 'plus_margin_indicator', '3': 23, '4': 1, '5': 1, '10': 'plusMarginIndicator'},
    {'1': 'security_collateral_amount', '3': 24, '4': 1, '5': 1, '10': 'securityCollateralAmount'},
    {'1': 'order_margin_premium', '3': 25, '4': 1, '5': 1, '10': 'orderMarginPremium'},
    {'1': 'collateral_amount', '3': 26, '4': 1, '5': 1, '10': 'collateralAmount'},
  ],
};

/// Descriptor for `Margin`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List marginDescriptor = $convert.base64Decode(
    'CgZNYXJnaW4SFgoGc3RhdHVzGAEgASgJUgZzdGF0dXMSKwoReWVzdGVyZGF5X2JhbGFuY2UYAi'
    'ABKAFSEHllc3RlcmRheUJhbGFuY2USIwoNdG9kYXlfYmFsYW5jZRgDIAEoAVIMdG9kYXlCYWxh'
    'bmNlEi0KEmRlcG9zaXRfd2l0aGRyYXdhbBgEIAEoAVIRZGVwb3NpdFdpdGhkcmF3YWwSEAoDZm'
    'VlGAUgASgBUgNmZWUSEAoDdGF4GAYgASgBUgN0YXgSJQoOaW5pdGlhbF9tYXJnaW4YByABKAFS'
    'DWluaXRpYWxNYXJnaW4SLQoSbWFpbnRlbmFuY2VfbWFyZ2luGAggASgBUhFtYWludGVuYW5jZU'
    '1hcmdpbhIfCgttYXJnaW5fY2FsbBgJIAEoAVIKbWFyZ2luQ2FsbBIlCg5yaXNrX2luZGljYXRv'
    'chgKIAEoAVINcmlza0luZGljYXRvchI+Chtyb3lhbHR5X3JldmVudWVfZXhwZW5kaXR1cmUYCy'
    'ABKAFSGXJveWFsdHlSZXZlbnVlRXhwZW5kaXR1cmUSFgoGZXF1aXR5GAwgASgBUgZlcXVpdHkS'
    'IwoNZXF1aXR5X2Ftb3VudBgNIAEoAVIMZXF1aXR5QW1vdW50Ej0KG29wdGlvbl9vcGVuYnV5X2'
    '1hcmtldF92YWx1ZRgOIAEoAVIYb3B0aW9uT3BlbmJ1eU1hcmtldFZhbHVlEj8KHG9wdGlvbl9v'
    'cGVuc2VsbF9tYXJrZXRfdmFsdWUYDyABKAFSGW9wdGlvbk9wZW5zZWxsTWFya2V0VmFsdWUSMA'
    'oUb3B0aW9uX29wZW5fcG9zaXRpb24YECABKAFSEm9wdGlvbk9wZW5Qb3NpdGlvbhI4ChhvcHRp'
    'b25fc2V0dGxlX3Byb2ZpdGxvc3MYESABKAFSFm9wdGlvblNldHRsZVByb2ZpdGxvc3MSMAoUZn'
    'V0dXJlX29wZW5fcG9zaXRpb24YEiABKAFSEmZ1dHVyZU9wZW5Qb3NpdGlvbhI7Chp0b2RheV9m'
    'dXR1cmVfb3Blbl9wb3NpdGlvbhgTIAEoAVIXdG9kYXlGdXR1cmVPcGVuUG9zaXRpb24SOAoYZn'
    'V0dXJlX3NldHRsZV9wcm9maXRsb3NzGBQgASgBUhZmdXR1cmVTZXR0bGVQcm9maXRsb3NzEikK'
    'EGF2YWlsYWJsZV9tYXJnaW4YFSABKAFSD2F2YWlsYWJsZU1hcmdpbhIfCgtwbHVzX21hcmdpbh'
    'gWIAEoAVIKcGx1c01hcmdpbhIyChVwbHVzX21hcmdpbl9pbmRpY2F0b3IYFyABKAFSE3BsdXNN'
    'YXJnaW5JbmRpY2F0b3ISPAoac2VjdXJpdHlfY29sbGF0ZXJhbF9hbW91bnQYGCABKAFSGHNlY3'
    'VyaXR5Q29sbGF0ZXJhbEFtb3VudBIwChRvcmRlcl9tYXJnaW5fcHJlbWl1bRgZIAEoAVISb3Jk'
    'ZXJNYXJnaW5QcmVtaXVtEisKEWNvbGxhdGVyYWxfYW1vdW50GBogASgBUhBjb2xsYXRlcmFsQW'
    '1vdW50');

@$core.Deprecated('Use accountBalanceDescriptor instead')
const AccountBalance$json = {
  '1': 'AccountBalance',
  '2': [
    {'1': 'date', '3': 1, '4': 1, '5': 9, '10': 'date'},
    {'1': 'balance', '3': 2, '4': 1, '5': 1, '10': 'balance'},
  ],
};

/// Descriptor for `AccountBalance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accountBalanceDescriptor = $convert.base64Decode(
    'Cg5BY2NvdW50QmFsYW5jZRISCgRkYXRlGAEgASgJUgRkYXRlEhgKB2JhbGFuY2UYAiABKAFSB2'
    'JhbGFuY2U=');

@$core.Deprecated('Use settlementDescriptor instead')
const Settlement$json = {
  '1': 'Settlement',
  '2': [
    {'1': 'date', '3': 1, '4': 1, '5': 9, '10': 'date'},
    {'1': 'amount', '3': 2, '4': 1, '5': 1, '10': 'amount'},
  ],
};

/// Descriptor for `Settlement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List settlementDescriptor = $convert.base64Decode(
    'CgpTZXR0bGVtZW50EhIKBGRhdGUYASABKAlSBGRhdGUSFgoGYW1vdW50GAIgASgBUgZhbW91bn'
    'Q=');

@$core.Deprecated('Use settlementListDescriptor instead')
const SettlementList$json = {
  '1': 'SettlementList',
  '2': [
    {'1': 'settlement', '3': 1, '4': 3, '5': 11, '6': '.forwarder.Settlement', '10': 'settlement'},
  ],
};

/// Descriptor for `SettlementList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List settlementListDescriptor = $convert.base64Decode(
    'Cg5TZXR0bGVtZW50TGlzdBI1CgpzZXR0bGVtZW50GAEgAygLMhUuZm9yd2FyZGVyLlNldHRsZW'
    '1lbnRSCnNldHRsZW1lbnQ=');

const $core.Map<$core.String, $core.dynamic> TradeInterfaceServiceBase$json = {
  '1': 'TradeInterface',
  '2': [
    {'1': 'BuyStock', '2': '.forwarder.StockOrderDetail', '3': '.forwarder.TradeResult', '4': {}},
    {'1': 'SellStock', '2': '.forwarder.StockOrderDetail', '3': '.forwarder.TradeResult', '4': {}},
    {'1': 'BuyOddStock', '2': '.forwarder.OddStockOrderDetail', '3': '.forwarder.TradeResult', '4': {}},
    {'1': 'SellOddStock', '2': '.forwarder.OddStockOrderDetail', '3': '.forwarder.TradeResult', '4': {}},
    {'1': 'SellFirstStock', '2': '.forwarder.StockOrderDetail', '3': '.forwarder.TradeResult', '4': {}},
    {'1': 'CancelStock', '2': '.forwarder.OrderID', '3': '.forwarder.TradeResult', '4': {}},
    {'1': 'BuyFuture', '2': '.forwarder.FutureOrderDetail', '3': '.forwarder.TradeResult', '4': {}},
    {'1': 'SellFuture', '2': '.forwarder.FutureOrderDetail', '3': '.forwarder.TradeResult', '4': {}},
    {'1': 'SellFirstFuture', '2': '.forwarder.FutureOrderDetail', '3': '.forwarder.TradeResult', '4': {}},
    {'1': 'CancelFuture', '2': '.forwarder.FutureOrderID', '3': '.forwarder.TradeResult', '4': {}},
    {'1': 'BuyOption', '2': '.forwarder.OptionOrderDetail', '3': '.forwarder.TradeResult', '4': {}},
    {'1': 'SellOption', '2': '.forwarder.OptionOrderDetail', '3': '.forwarder.TradeResult', '4': {}},
    {'1': 'SellFirstOption', '2': '.forwarder.OptionOrderDetail', '3': '.forwarder.TradeResult', '4': {}},
    {'1': 'CancelOption', '2': '.forwarder.OptionOrderID', '3': '.forwarder.TradeResult', '4': {}},
    {'1': 'GetLocalOrderStatusArr', '2': '.google.protobuf.Empty', '3': '.google.protobuf.Empty', '4': {}},
    {'1': 'GetSimulateOrderStatusArr', '2': '.google.protobuf.Empty', '3': '.google.protobuf.Empty', '4': {}},
    {'1': 'GetOrderStatusByID', '2': '.forwarder.OrderID', '3': '.forwarder.TradeResult', '4': {}},
    {'1': 'GetNonBlockOrderStatusArr', '2': '.google.protobuf.Empty', '3': '.forwarder.ErrorMessage', '4': {}},
    {'1': 'GetFuturePosition', '2': '.google.protobuf.Empty', '3': '.forwarder.FuturePositionArr', '4': {}},
    {'1': 'GetStockPosition', '2': '.google.protobuf.Empty', '3': '.forwarder.StockPositionArr', '4': {}},
    {'1': 'GetSettlement', '2': '.google.protobuf.Empty', '3': '.forwarder.SettlementList', '4': {}},
    {'1': 'GetAccountBalance', '2': '.google.protobuf.Empty', '3': '.forwarder.AccountBalance', '4': {}},
    {'1': 'GetMargin', '2': '.google.protobuf.Empty', '3': '.forwarder.Margin', '4': {}},
  ],
};

@$core.Deprecated('Use tradeInterfaceServiceDescriptor instead')
const $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> TradeInterfaceServiceBase$messageJson = {
  '.forwarder.StockOrderDetail': StockOrderDetail$json,
  '.forwarder.TradeResult': TradeResult$json,
  '.forwarder.OddStockOrderDetail': OddStockOrderDetail$json,
  '.forwarder.OrderID': OrderID$json,
  '.forwarder.FutureOrderDetail': FutureOrderDetail$json,
  '.forwarder.FutureOrderID': FutureOrderID$json,
  '.forwarder.OptionOrderDetail': OptionOrderDetail$json,
  '.forwarder.OptionOrderID': OptionOrderID$json,
  '.google.protobuf.Empty': $0.Empty$json,
  '.forwarder.ErrorMessage': $3.ErrorMessage$json,
  '.forwarder.FuturePositionArr': FuturePositionArr$json,
  '.forwarder.FuturePosition': FuturePosition$json,
  '.forwarder.StockPositionArr': StockPositionArr$json,
  '.forwarder.StockPosition': StockPosition$json,
  '.forwarder.SettlementList': SettlementList$json,
  '.forwarder.Settlement': Settlement$json,
  '.forwarder.AccountBalance': AccountBalance$json,
  '.forwarder.Margin': Margin$json,
};

/// Descriptor for `TradeInterface`. Decode as a `google.protobuf.ServiceDescriptorProto`.
final $typed_data.Uint8List tradeInterfaceServiceDescriptor = $convert.base64Decode(
    'Cg5UcmFkZUludGVyZmFjZRJBCghCdXlTdG9jaxIbLmZvcndhcmRlci5TdG9ja09yZGVyRGV0YW'
    'lsGhYuZm9yd2FyZGVyLlRyYWRlUmVzdWx0IgASQgoJU2VsbFN0b2NrEhsuZm9yd2FyZGVyLlN0'
    'b2NrT3JkZXJEZXRhaWwaFi5mb3J3YXJkZXIuVHJhZGVSZXN1bHQiABJHCgtCdXlPZGRTdG9jax'
    'IeLmZvcndhcmRlci5PZGRTdG9ja09yZGVyRGV0YWlsGhYuZm9yd2FyZGVyLlRyYWRlUmVzdWx0'
    'IgASSAoMU2VsbE9kZFN0b2NrEh4uZm9yd2FyZGVyLk9kZFN0b2NrT3JkZXJEZXRhaWwaFi5mb3'
    'J3YXJkZXIuVHJhZGVSZXN1bHQiABJHCg5TZWxsRmlyc3RTdG9jaxIbLmZvcndhcmRlci5TdG9j'
    'a09yZGVyRGV0YWlsGhYuZm9yd2FyZGVyLlRyYWRlUmVzdWx0IgASOwoLQ2FuY2VsU3RvY2sSEi'
    '5mb3J3YXJkZXIuT3JkZXJJRBoWLmZvcndhcmRlci5UcmFkZVJlc3VsdCIAEkMKCUJ1eUZ1dHVy'
    'ZRIcLmZvcndhcmRlci5GdXR1cmVPcmRlckRldGFpbBoWLmZvcndhcmRlci5UcmFkZVJlc3VsdC'
    'IAEkQKClNlbGxGdXR1cmUSHC5mb3J3YXJkZXIuRnV0dXJlT3JkZXJEZXRhaWwaFi5mb3J3YXJk'
    'ZXIuVHJhZGVSZXN1bHQiABJJCg9TZWxsRmlyc3RGdXR1cmUSHC5mb3J3YXJkZXIuRnV0dXJlT3'
    'JkZXJEZXRhaWwaFi5mb3J3YXJkZXIuVHJhZGVSZXN1bHQiABJCCgxDYW5jZWxGdXR1cmUSGC5m'
    'b3J3YXJkZXIuRnV0dXJlT3JkZXJJRBoWLmZvcndhcmRlci5UcmFkZVJlc3VsdCIAEkMKCUJ1eU'
    '9wdGlvbhIcLmZvcndhcmRlci5PcHRpb25PcmRlckRldGFpbBoWLmZvcndhcmRlci5UcmFkZVJl'
    'c3VsdCIAEkQKClNlbGxPcHRpb24SHC5mb3J3YXJkZXIuT3B0aW9uT3JkZXJEZXRhaWwaFi5mb3'
    'J3YXJkZXIuVHJhZGVSZXN1bHQiABJJCg9TZWxsRmlyc3RPcHRpb24SHC5mb3J3YXJkZXIuT3B0'
    'aW9uT3JkZXJEZXRhaWwaFi5mb3J3YXJkZXIuVHJhZGVSZXN1bHQiABJCCgxDYW5jZWxPcHRpb2'
    '4SGC5mb3J3YXJkZXIuT3B0aW9uT3JkZXJJRBoWLmZvcndhcmRlci5UcmFkZVJlc3VsdCIAEkoK'
    'FkdldExvY2FsT3JkZXJTdGF0dXNBcnISFi5nb29nbGUucHJvdG9idWYuRW1wdHkaFi5nb29nbG'
    'UucHJvdG9idWYuRW1wdHkiABJNChlHZXRTaW11bGF0ZU9yZGVyU3RhdHVzQXJyEhYuZ29vZ2xl'
    'LnByb3RvYnVmLkVtcHR5GhYuZ29vZ2xlLnByb3RvYnVmLkVtcHR5IgASQgoSR2V0T3JkZXJTdG'
    'F0dXNCeUlEEhIuZm9yd2FyZGVyLk9yZGVySUQaFi5mb3J3YXJkZXIuVHJhZGVSZXN1bHQiABJO'
    'ChlHZXROb25CbG9ja09yZGVyU3RhdHVzQXJyEhYuZ29vZ2xlLnByb3RvYnVmLkVtcHR5GhcuZm'
    '9yd2FyZGVyLkVycm9yTWVzc2FnZSIAEksKEUdldEZ1dHVyZVBvc2l0aW9uEhYuZ29vZ2xlLnBy'
    'b3RvYnVmLkVtcHR5GhwuZm9yd2FyZGVyLkZ1dHVyZVBvc2l0aW9uQXJyIgASSQoQR2V0U3RvY2'
    'tQb3NpdGlvbhIWLmdvb2dsZS5wcm90b2J1Zi5FbXB0eRobLmZvcndhcmRlci5TdG9ja1Bvc2l0'
    'aW9uQXJyIgASRAoNR2V0U2V0dGxlbWVudBIWLmdvb2dsZS5wcm90b2J1Zi5FbXB0eRoZLmZvcn'
    'dhcmRlci5TZXR0bGVtZW50TGlzdCIAEkgKEUdldEFjY291bnRCYWxhbmNlEhYuZ29vZ2xlLnBy'
    'b3RvYnVmLkVtcHR5GhkuZm9yd2FyZGVyLkFjY291bnRCYWxhbmNlIgASOAoJR2V0TWFyZ2luEh'
    'YuZ29vZ2xlLnByb3RvYnVmLkVtcHR5GhEuZm9yd2FyZGVyLk1hcmdpbiIA');


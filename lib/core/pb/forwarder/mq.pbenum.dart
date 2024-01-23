//
//  Generated code. Do not modify.
//  source: forwarder/mq.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class OrderType extends $pb.ProtobufEnum {
  static const OrderType TYPE_UNKNOWN = OrderType._(0, _omitEnumNames ? '' : 'TYPE_UNKNOWN');
  static const OrderType TYPE_STOCK_LOT = OrderType._(1, _omitEnumNames ? '' : 'TYPE_STOCK_LOT');
  static const OrderType TYPE_STOCK_SHARE = OrderType._(2, _omitEnumNames ? '' : 'TYPE_STOCK_SHARE');
  static const OrderType TYPE_FUTURE = OrderType._(3, _omitEnumNames ? '' : 'TYPE_FUTURE');

  static const $core.List<OrderType> values = <OrderType> [
    TYPE_UNKNOWN,
    TYPE_STOCK_LOT,
    TYPE_STOCK_SHARE,
    TYPE_FUTURE,
  ];

  static final $core.Map<$core.int, OrderType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static OrderType? valueOf($core.int value) => _byValue[value];

  const OrderType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');

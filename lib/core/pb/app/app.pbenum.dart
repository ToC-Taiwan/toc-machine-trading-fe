//
//  Generated code. Do not modify.
//  source: app/app.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PickListType extends $pb.ProtobufEnum {
  static const PickListType TYPE_ADD = PickListType._(0, _omitEnumNames ? '' : 'TYPE_ADD');
  static const PickListType TYPE_REMOVE = PickListType._(1, _omitEnumNames ? '' : 'TYPE_REMOVE');

  static const $core.List<PickListType> values = <PickListType> [
    TYPE_ADD,
    TYPE_REMOVE,
  ];

  static final $core.Map<$core.int, PickListType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PickListType? valueOf($core.int value) => _byValue[value];

  const PickListType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');

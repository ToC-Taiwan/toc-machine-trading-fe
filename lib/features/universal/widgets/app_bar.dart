import 'package:flutter/material.dart';

AppBar topAppBar(
  BuildContext context,
  String title, {
  bool automaticallyImplyLeading = false,
}) {
  return AppBar(
    centerTitle: automaticallyImplyLeading,
    title: Text(title),
    automaticallyImplyLeading: automaticallyImplyLeading,
  );
}

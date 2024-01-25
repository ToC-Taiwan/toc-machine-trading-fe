import 'package:flutter/material.dart';

AppBar topAppBar(BuildContext context, {Color? backgroundColor, String? title}) {
  return AppBar(
    centerTitle: false,
    title: (title != null) ? Text(title) : null,
    automaticallyImplyLeading: false,
    backgroundColor: backgroundColor,
    leading: null,
    actions: null,
  );
}

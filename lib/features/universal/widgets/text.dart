import 'package:flutter/material.dart';

Text numberText(
  String text, {
  Color? backgroundColor,
  Color color = Colors.black,
  double fontSize = 16.0,
  bool bold = false,
}) {
  return Text(
    text,
    style: TextStyle(
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontFamily: 'NotoSansMono',
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
    ),
  );
}

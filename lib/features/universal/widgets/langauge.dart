import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:toc_machine_trading_fe/core/locale/locale.dart';

Widget newDropdownButton2() {
  return DropdownButton2(
    customButton: const Icon(
      Icons.language,
      size: 30,
      color: Colors.blueGrey,
    ),
    items: const [
      DropdownMenuItem<String>(
        value: 'en',
        child: Text(
          'English',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      DropdownMenuItem<String>(
          value: 'ja',
          child: Text(
            '日本語',
            style: TextStyle(
              color: Colors.white,
            ),
          )),
      DropdownMenuItem<String>(
          value: 'ko',
          child: Text(
            '한국어',
            style: TextStyle(
              color: Colors.white,
            ),
          )),
      DropdownMenuItem<String>(
          value: 'zh_TW',
          child: Text(
            '正體中文',
            style: TextStyle(
              color: Colors.white,
            ),
          )),
      DropdownMenuItem<String>(
          value: 'zh_CN',
          child: Text(
            '简体中文',
            style: TextStyle(
              color: Colors.white,
            ),
          )),
    ],
    onChanged: (value) {
      LocaleBloc.changeLocale(value!);
    },
    dropdownStyleData: DropdownStyleData(
      width: 120,
      padding: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.blueGrey[400],
      ),
      offset: const Offset(-100, -5),
    ),
    menuItemStyleData: const MenuItemStyleData(
      padding: EdgeInsets.only(left: 16, right: 16),
    ),
  );
}

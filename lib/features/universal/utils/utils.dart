import 'package:intl/intl.dart';

abstract class Utils {
  static String mathFunc(Match match) => '${match[1]},';
  static String commaNumber(String n) {
    return n.replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      mathFunc,
    );
  }

  static String ntdCurrency(num n) {
    return NumberFormat.currency(
      locale: 'zh_TW',
      decimalDigits: 0,
      name: 'NTD ',
    ).format(n).toString();
  }
}

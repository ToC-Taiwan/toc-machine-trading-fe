import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

abstract class ErrorCode {
  static String toMsg(BuildContext context, int code) {
    switch (code) {
      case -1001:
        return AppLocalizations.of(context)!.user_not_found;
      case -1002:
        return AppLocalizations.of(context)!.password_not_match;
      case -1003:
        return AppLocalizations.of(context)!.email_not_verified;
      default:
        return AppLocalizations.of(context)!.unknown_error;
    }
  }
}

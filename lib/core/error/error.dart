import 'package:flutter/widgets.dart';
import 'package:toc_machine_trading_fe/l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';

abstract class ErrorCode {
  static const int underDevelopment = -99;

  static String toMsg(BuildContext context, dynamic error) {
    if (error is int) {
      switch (error) {
        case underDevelopment:
          return AppLocalizations.of(context)!.under_development;
        case serverError:
          return AppLocalizations.of(context)!.server_error;
        case -1001:
          return AppLocalizations.of(context)!.user_not_found;
        case -1002:
          return AppLocalizations.of(context)!.password_not_match;
        case -1003:
          return AppLocalizations.of(context)!.email_not_verified;
        case -1004:
          return AppLocalizations.of(context)!.email_already_exists;
        case -1005:
          return AppLocalizations.of(context)!.username_already_exists;
        case -1006:
          return AppLocalizations.of(context)!.email_is_invalid;
        default:
          return AppLocalizations.of(context)!.unknown_error;
      }
    }
    return dynamic.toString();
  }
}

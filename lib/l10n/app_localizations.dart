import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ja'),
    Locale('ko'),
    Locale('zh', 'CN'),
    Locale('zh', 'TW'),
    Locale('zh')
  ];

  /// No description provided for @about_me.
  ///
  /// In en, this message translates to:
  /// **'About Me'**
  String get about_me;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @allow_notification.
  ///
  /// In en, this message translates to:
  /// **'Allow Notification'**
  String get allow_notification;

  /// No description provided for @already_purchased.
  ///
  /// In en, this message translates to:
  /// **'Already Purchased?'**
  String get already_purchased;

  /// No description provided for @app_title.
  ///
  /// In en, this message translates to:
  /// **'Trade Agent'**
  String get app_title;

  /// No description provided for @assist_is_done.
  ///
  /// In en, this message translates to:
  /// **'Assist is done'**
  String get assist_is_done;

  /// No description provided for @assisting.
  ///
  /// In en, this message translates to:
  /// **'Assist'**
  String get assisting;

  /// No description provided for @avg.
  ///
  /// In en, this message translates to:
  /// **'Avg'**
  String get avg;

  /// No description provided for @balance.
  ///
  /// In en, this message translates to:
  /// **'Balance'**
  String get balance;

  /// No description provided for @buy.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get buy;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @change_type.
  ///
  /// In en, this message translates to:
  /// **'Change Type'**
  String get change_type;

  /// No description provided for @click_plus_to_add_stock.
  ///
  /// In en, this message translates to:
  /// **'Click + to add stock'**
  String get click_plus_to_add_stock;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirm_password;

  /// No description provided for @confirm_password_cannot_be_empty.
  ///
  /// In en, this message translates to:
  /// **'Confirm password cannot be empty'**
  String get confirm_password_cannot_be_empty;

  /// No description provided for @confirm_password_is_not_same_as_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm password is not same as password'**
  String get confirm_password_is_not_same_as_password;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @delete_all_pick_stock.
  ///
  /// In en, this message translates to:
  /// **'Delete All Pick Stock'**
  String get delete_all_pick_stock;

  /// No description provided for @delete_all_pick_stock_confirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete all pick stock?'**
  String get delete_all_pick_stock_confirm;

  /// No description provided for @delete_pick_stock_confirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this stock'**
  String get delete_pick_stock_confirm;

  /// No description provided for @developing.
  ///
  /// In en, this message translates to:
  /// **'Developing'**
  String get developing;

  /// No description provided for @dismiss.
  ///
  /// In en, this message translates to:
  /// **'Dismiss'**
  String get dismiss;

  /// No description provided for @display.
  ///
  /// In en, this message translates to:
  /// **'Display'**
  String get display;

  /// No description provided for @earn.
  ///
  /// In en, this message translates to:
  /// **'Earn'**
  String get earn;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @email_address.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get email_address;

  /// No description provided for @email_already_exists.
  ///
  /// In en, this message translates to:
  /// **'Email already exists'**
  String get email_already_exists;

  /// No description provided for @email_cannot_be_empty.
  ///
  /// In en, this message translates to:
  /// **'Email cannot be empty'**
  String get email_cannot_be_empty;

  /// No description provided for @email_is_invalid.
  ///
  /// In en, this message translates to:
  /// **'Email is invalid'**
  String get email_is_invalid;

  /// No description provided for @email_not_verified.
  ///
  /// In en, this message translates to:
  /// **'Email not verified'**
  String get email_not_verified;

  /// No description provided for @enter_quantity.
  ///
  /// In en, this message translates to:
  /// **'Enter Quantity'**
  String get enter_quantity;

  /// No description provided for @err_assist_not_support.
  ///
  /// In en, this message translates to:
  /// **'Assist only support qty = 1'**
  String get err_assist_not_support;

  /// No description provided for @err_assisting_is_full.
  ///
  /// In en, this message translates to:
  /// **'Assisting is full'**
  String get err_assisting_is_full;

  /// No description provided for @err_cancel_order_failed.
  ///
  /// In en, this message translates to:
  /// **'Cancel order failed'**
  String get err_cancel_order_failed;

  /// No description provided for @err_get_position.
  ///
  /// In en, this message translates to:
  /// **'Get position error'**
  String get err_get_position;

  /// No description provided for @err_get_snapshot.
  ///
  /// In en, this message translates to:
  /// **'Get snapshot error'**
  String get err_get_snapshot;

  /// No description provided for @err_not_filled.
  ///
  /// In en, this message translates to:
  /// **'Please wait for previous order to be filled'**
  String get err_not_filled;

  /// No description provided for @err_not_trade_time.
  ///
  /// In en, this message translates to:
  /// **'Now is not trade time'**
  String get err_not_trade_time;

  /// No description provided for @err_place_order.
  ///
  /// In en, this message translates to:
  /// **'Place order error'**
  String get err_place_order;

  /// No description provided for @err_unmarshal.
  ///
  /// In en, this message translates to:
  /// **'Unmarshal error'**
  String get err_unmarshal;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @failed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get failed;

  /// No description provided for @filled.
  ///
  /// In en, this message translates to:
  /// **'Filled'**
  String get filled;

  /// No description provided for @future.
  ///
  /// In en, this message translates to:
  /// **'Future'**
  String get future;

  /// No description provided for @future_trade.
  ///
  /// In en, this message translates to:
  /// **'Future Trade'**
  String get future_trade;

  /// No description provided for @group.
  ///
  /// In en, this message translates to:
  /// **'Group'**
  String get group;

  /// No description provided for @high.
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get high;

  /// No description provided for @input_must_not_empty.
  ///
  /// In en, this message translates to:
  /// **'Input is empty'**
  String get input_must_not_empty;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @latest.
  ///
  /// In en, this message translates to:
  /// **'Latest'**
  String get latest;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading'**
  String get loading;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @login_failed.
  ///
  /// In en, this message translates to:
  /// **'Login failed'**
  String get login_failed;

  /// No description provided for @loss.
  ///
  /// In en, this message translates to:
  /// **'Loss'**
  String get loss;

  /// No description provided for @low.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get low;

  /// No description provided for @mxf.
  ///
  /// In en, this message translates to:
  /// **'MXF'**
  String get mxf;

  /// No description provided for @my_web_site.
  ///
  /// In en, this message translates to:
  /// **'My Web Site'**
  String get my_web_site;

  /// No description provided for @news.
  ///
  /// In en, this message translates to:
  /// **'News'**
  String get news;

  /// No description provided for @no_data.
  ///
  /// In en, this message translates to:
  /// **'No Data'**
  String get no_data;

  /// No description provided for @no_notifications.
  ///
  /// In en, this message translates to:
  /// **'You have no notifications.'**
  String get no_notifications;

  /// No description provided for @no_pick_stock.
  ///
  /// In en, this message translates to:
  /// **'No Pick Stock'**
  String get no_pick_stock;

  /// No description provided for @not_available.
  ///
  /// In en, this message translates to:
  /// **'Not Available'**
  String get not_available;

  /// No description provided for @not_found.
  ///
  /// In en, this message translates to:
  /// **'Not Found'**
  String get not_found;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification'**
  String get notification;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @open.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get open;

  /// No description provided for @commission.
  ///
  /// In en, this message translates to:
  /// **'Commission'**
  String get commission;

  /// No description provided for @part_filled.
  ///
  /// In en, this message translates to:
  /// **'Part Filled'**
  String get part_filled;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @password_cannot_be_empty.
  ///
  /// In en, this message translates to:
  /// **'Password cannot be empty'**
  String get password_cannot_be_empty;

  /// No description provided for @password_minimum_length_is_8.
  ///
  /// In en, this message translates to:
  /// **'Password minimum length is 8'**
  String get password_minimum_length_is_8;

  /// No description provided for @password_not_match.
  ///
  /// In en, this message translates to:
  /// **'Password not match'**
  String get password_not_match;

  /// No description provided for @pending_submit.
  ///
  /// In en, this message translates to:
  /// **'Pending Submit'**
  String get pending_submit;

  /// No description provided for @percent_change.
  ///
  /// In en, this message translates to:
  /// **'Percent Change'**
  String get percent_change;

  /// No description provided for @pick_stock.
  ///
  /// In en, this message translates to:
  /// **'Pick Stock'**
  String get pick_stock;

  /// No description provided for @please_go_to_settings_to_allow_notification.
  ///
  /// In en, this message translates to:
  /// **'Please go to setting to allow notification'**
  String get please_go_to_settings_to_allow_notification;

  /// No description provided for @please_login_again.
  ///
  /// In en, this message translates to:
  /// **'Please login again'**
  String get please_login_again;

  /// No description provided for @position.
  ///
  /// In en, this message translates to:
  /// **'Position'**
  String get position;

  /// No description provided for @pre_submitted.
  ///
  /// In en, this message translates to:
  /// **'Pre Submitted'**
  String get pre_submitted;

  /// No description provided for @price_change.
  ///
  /// In en, this message translates to:
  /// **'Price Change'**
  String get price_change;

  /// No description provided for @product_list_abnormal.
  ///
  /// In en, this message translates to:
  /// **'Product List Abnormal'**
  String get product_list_abnormal;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// No description provided for @read_only.
  ///
  /// In en, this message translates to:
  /// **'Read Only'**
  String get read_only;

  /// No description provided for @realtime.
  ///
  /// In en, this message translates to:
  /// **'Realtime'**
  String get realtime;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @register_success.
  ///
  /// In en, this message translates to:
  /// **'Register success'**
  String get register_success;

  /// No description provided for @remove_ads.
  ///
  /// In en, this message translates to:
  /// **'Remove Ad'**
  String get remove_ads;

  /// No description provided for @remove_all_ads_on_all_pages.
  ///
  /// In en, this message translates to:
  /// **'Remove all ads on all pages'**
  String get remove_all_ads_on_all_pages;

  /// No description provided for @restart_to_apply_changes.
  ///
  /// In en, this message translates to:
  /// **'Restart to apply changes'**
  String get restart_to_apply_changes;

  /// No description provided for @restore.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get restore;

  /// No description provided for @restore_purchase.
  ///
  /// In en, this message translates to:
  /// **'Restore Purchases'**
  String get restore_purchase;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @sell.
  ///
  /// In en, this message translates to:
  /// **'Sell'**
  String get sell;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @stock.
  ///
  /// In en, this message translates to:
  /// **'Stock'**
  String get stock;

  /// No description provided for @stock_already_exists.
  ///
  /// In en, this message translates to:
  /// **'Stock already exists'**
  String get stock_already_exists;

  /// No description provided for @stock_dose_not_exist.
  ///
  /// In en, this message translates to:
  /// **'Stock dose not exist'**
  String get stock_dose_not_exist;

  /// No description provided for @stock_number.
  ///
  /// In en, this message translates to:
  /// **'Stock Number'**
  String get stock_number;

  /// No description provided for @strategy.
  ///
  /// In en, this message translates to:
  /// **'Strategy'**
  String get strategy;

  /// No description provided for @submitted.
  ///
  /// In en, this message translates to:
  /// **'Submitted'**
  String get submitted;

  /// No description provided for @success.
  ///
  /// In en, this message translates to:
  /// **'Success'**
  String get success;

  /// No description provided for @package.
  ///
  /// In en, this message translates to:
  /// **'Package'**
  String get package;

  /// No description provided for @targets.
  ///
  /// In en, this message translates to:
  /// **'Targets'**
  String get targets;

  /// No description provided for @terms_and_conditions_of_use.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions of Use'**
  String get terms_and_conditions_of_use;

  /// No description provided for @time_period.
  ///
  /// In en, this message translates to:
  /// **'Time Period'**
  String get time_period;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @trade_configuration.
  ///
  /// In en, this message translates to:
  /// **'Trade Configuration'**
  String get trade_configuration;

  /// No description provided for @trade_count.
  ///
  /// In en, this message translates to:
  /// **'Trade Count'**
  String get trade_count;

  /// No description provided for @try_again.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get try_again;

  /// No description provided for @tse.
  ///
  /// In en, this message translates to:
  /// **'TSE'**
  String get tse;

  /// No description provided for @type_stock_number.
  ///
  /// In en, this message translates to:
  /// **'Type Stock Number'**
  String get type_stock_number;

  /// No description provided for @unknown_error.
  ///
  /// In en, this message translates to:
  /// **'Unknown error'**
  String get unknown_error;

  /// No description provided for @user.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get user;

  /// No description provided for @user_not_found.
  ///
  /// In en, this message translates to:
  /// **'User not found'**
  String get user_not_found;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @username_already_exists.
  ///
  /// In en, this message translates to:
  /// **'Username already exists'**
  String get username_already_exists;

  /// No description provided for @username_cannot_be_empty.
  ///
  /// In en, this message translates to:
  /// **'Username cannot be empty'**
  String get username_cannot_be_empty;

  /// No description provided for @username_minimum_length_is_8.
  ///
  /// In en, this message translates to:
  /// **'Username minimum length is 8'**
  String get username_minimum_length_is_8;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @please_try_again.
  ///
  /// In en, this message translates to:
  /// **'Please try again'**
  String get please_try_again;

  /// No description provided for @cannot_contain_space.
  ///
  /// In en, this message translates to:
  /// **'Cannot contain space'**
  String get cannot_contain_space;

  /// No description provided for @inventory.
  ///
  /// In en, this message translates to:
  /// **'Inventory'**
  String get inventory;

  /// No description provided for @wallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get wallet;

  /// No description provided for @lot.
  ///
  /// In en, this message translates to:
  /// **'Lot'**
  String get lot;

  /// No description provided for @odd.
  ///
  /// In en, this message translates to:
  /// **'Odd'**
  String get odd;

  /// No description provided for @recent_ticks.
  ///
  /// In en, this message translates to:
  /// **'Recent Ticks'**
  String get recent_ticks;

  /// No description provided for @server_error.
  ///
  /// In en, this message translates to:
  /// **'Server Error'**
  String get server_error;

  /// No description provided for @sell_first.
  ///
  /// In en, this message translates to:
  /// **'Sell First'**
  String get sell_first;

  /// No description provided for @buy_later.
  ///
  /// In en, this message translates to:
  /// **'Buy Later'**
  String get buy_later;

  /// No description provided for @tap_to_choose_stock.
  ///
  /// In en, this message translates to:
  /// **'Tap to choose stock'**
  String get tap_to_choose_stock;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @greater_than_0.
  ///
  /// In en, this message translates to:
  /// **'Greater than 0'**
  String get greater_than_0;

  /// No description provided for @less_than_1000.
  ///
  /// In en, this message translates to:
  /// **'Less than 1000'**
  String get less_than_1000;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @count.
  ///
  /// In en, this message translates to:
  /// **'Count'**
  String get count;

  /// No description provided for @auto_close.
  ///
  /// In en, this message translates to:
  /// **'Auto Close'**
  String get auto_close;

  /// No description provided for @valid_until.
  ///
  /// In en, this message translates to:
  /// **'Valid Until'**
  String get valid_until;

  /// No description provided for @under_development.
  ///
  /// In en, this message translates to:
  /// **'Under Development'**
  String get under_development;

  /// No description provided for @reverse.
  ///
  /// In en, this message translates to:
  /// **'Reverse'**
  String get reverse;

  /// No description provided for @place_order.
  ///
  /// In en, this message translates to:
  /// **'Place Order'**
  String get place_order;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @are_you_sure_you_want_to_logout.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout?'**
  String get are_you_sure_you_want_to_logout;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ja', 'ko', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.countryCode) {
          case 'CN':
            return AppLocalizationsZhCn();
          case 'TW':
            return AppLocalizationsZhTw();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}

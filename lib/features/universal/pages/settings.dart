import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/core/fcm/fcm.dart';
import 'package:toc_machine_trading_fe/core/locale/locale.dart';
import 'package:toc_machine_trading_fe/features/login/repo/repo.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  ExpansionTileController? controllerA = ExpansionTileController();
  ExpansionTileController? controllerB = ExpansionTileController();

  bool _pushNotification = false;
  bool _pushNotificationPermamentlyDenied = false;

  @override
  void initState() {
    super.initState();
    checkPushIsPermantlyDenied();
    AppLifecycleListener(
      onResume: () => checkPushIsPermantlyDenied(),
    );
  }

  void checkPushIsPermantlyDenied() async {
    if (!mounted) {
      return;
    }

    if (await Permission.notification.status.isPermanentlyDenied) {
      FCM.allowPush = false;
      await API.sendToken(false, FCM.getToken);
      setState(() {
        _pushNotificationPermamentlyDenied = true;
      });
    } else {
      setState(() {
        _pushNotificationPermamentlyDenied = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(
        context,
        AppLocalizations.of(context)!.settings,
        automaticallyImplyLeading: true,
        disableActions: true,
      ),
      body: ListView(
        children: [
          ExpansionTile(
            maintainState: true,
            controller: controllerA,
            childrenPadding: const EdgeInsets.only(left: 50),
            onExpansionChanged: (value) async {
              if (value) {
                controllerB!.collapse();
                if (_pushNotificationPermamentlyDenied) {
                  return;
                }
                setState(() {
                  _pushNotification = FCM.allowPush;
                });
              }
            },
            leading: const Icon(Icons.notifications),
            title: Text(AppLocalizations.of(context)!.notification),
            children: [
              SwitchListTile(
                value: _pushNotification,
                onChanged: _pushNotificationPermamentlyDenied
                    ? null
                    : (bool? value) async {
                        await API.sendToken(value!, FCM.getToken).then((_) {
                          API.checkTokenStatus(FCM.getToken).then((value) {
                            FCM.allowPush = value;
                            setState(() {
                              _pushNotification = value;
                            });
                          });
                        });
                      },
                title: Text(AppLocalizations.of(context)!.allow_notification),
                subtitle: _pushNotificationPermamentlyDenied
                    ? Text(
                        AppLocalizations.of(context)!.please_go_to_settings_to_allow_notification,
                      )
                    : null,
              )
            ],
          ),
          ExpansionTile(
            maintainState: true,
            controller: controllerB,
            onExpansionChanged: (value) {
              if (value) {
                controllerA!.collapse();
              }
            },
            iconColor: Colors.blueGrey,
            childrenPadding: const EdgeInsets.only(left: 50),
            leading: const Icon(Icons.language),
            title: Text(AppLocalizations.of(context)!.language),
            children: <Widget>[
              for (var item in LocaleBloc.supportedLocales)
                RadioListTile<String>(
                  activeColor: Colors.blueGrey,
                  value: item,
                  title: Text(LocaleBloc.localeName(item)),
                  groupValue: LocaleBloc.currentLocale.toString(),
                  onChanged: (value) {
                    LocaleBloc.changeLocale(value!);
                  },
                ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.info_rounded),
            title: Text(AppLocalizations.of(context)!.version),
            trailing: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                LoginRepo.version,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

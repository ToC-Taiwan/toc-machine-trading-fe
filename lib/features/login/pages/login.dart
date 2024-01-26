import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/core/error/error.dart';
import 'package:toc_machine_trading_fe/core/fcm/fcm.dart';
import 'package:toc_machine_trading_fe/features/login/pages/register.dart';
import 'package:toc_machine_trading_fe/features/login/repo/repo.dart';
import 'package:toc_machine_trading_fe/features/universal/pages/homepage.dart';

class LoginPage extends StatefulWidget {
  static const routeName = '/';

  const LoginPage({required this.screenHeight, super.key});

  final double screenHeight;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  late StreamSubscription<bool> _keyboardSubscription;
  late AnimationController _controller;
  late Animation<double> _animation;

  String version = LoginRepo.version;

  String username = '';
  String password = '';

  bool passwordIsObscure = true;
  bool logining = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(milliseconds: 200), vsync: this);
    _animation = Tween<double>(begin: widget.screenHeight * 0.5, end: widget.screenHeight * 0.25).animate(_controller);
    _keyboardSubscription = KeyboardVisibilityController().onChange.listen((bool visible) {
      setState(() {
        if (visible) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _keyboardSubscription.cancel();
    super.dispose();
  }

  Future<void> checkNotification() async {
    await FCM.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Stack(
        children: <Widget>[
          Image.asset(
            "assets/background.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: AutofillGroup(
              child: Form(
                key: _formkey,
                child: AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: const Offset(0, 0),
                      child: Padding(
                        padding: EdgeInsets.only(top: _animation.value),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                autofillHints: const [AutofillHints.username],
                                enableSuggestions: false,
                                autocorrect: false,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return AppLocalizations.of(context)!.username_cannot_be_empty;
                                  }
                                  username = value;
                                  return null;
                                },
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  hintText: AppLocalizations.of(context)!.username,
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.all(10),
                                  hintStyle: const TextStyle(color: Colors.blueGrey),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                autofillHints: const [AutofillHints.password],
                                enableSuggestions: false,
                                autocorrect: false,
                                obscureText: passwordIsObscure,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return AppLocalizations.of(context)!.password_cannot_be_empty;
                                  }
                                  password = value;
                                  return null;
                                },
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  hintText: AppLocalizations.of(context)!.password,
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.all(10),
                                  hintStyle: const TextStyle(color: Colors.blueGrey),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        passwordIsObscure = !passwordIsObscure;
                                      });
                                    },
                                    icon: const Icon(Icons.visibility),
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 115,
                                  margin: const EdgeInsets.only(left: 10, right: 5, bottom: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextButton(
                                    onPressed: logining
                                        ? null
                                        : () {
                                            if (!_formkey.currentState!.validate()) {
                                              return;
                                            }
                                            setState(() {
                                              logining = true;
                                            });
                                            FocusScopeNode currentFocus = FocusScope.of(context);
                                            currentFocus.unfocus();
                                            API.login(username, password).then(
                                              (_) {
                                                checkNotification().then((_) {
                                                  FCM.anyNotificationsUnread().then((value) {
                                                    Navigator.of(context).pushAndRemoveUntil(
                                                      MaterialPageRoute(
                                                        builder: (context) => HomePage(notificationIsUnread: value),
                                                      ),
                                                      (route) => false,
                                                    );
                                                  });
                                                });
                                              },
                                            ).catchError((e) {
                                              setState(() {
                                                logining = false;
                                              });
                                              ScaffoldMessenger.of(context).showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    ErrorCode.toMsg(context, e as int),
                                                    style: const TextStyle(
                                                      color: Colors.red,
                                                    ),
                                                  ),
                                                ),
                                              );
                                            });
                                          },
                                    child: logining
                                        ? const SpinKitWave(
                                            color: Colors.white60,
                                            size: 20,
                                          )
                                        : Text(
                                            AppLocalizations.of(context)!.login,
                                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                                          ),
                                  ),
                                ),
                                Container(
                                  width: 115,
                                  margin: const EdgeInsets.only(right: 10, left: 5, bottom: 10),
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: TextButton(
                                    onPressed: logining
                                        ? null
                                        : () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                fullscreenDialog: true,
                                                builder: (context) => const RegisterPage(),
                                              ),
                                            );
                                          },
                                    child: logining
                                        ? const SpinKitWave(
                                            color: Colors.white60,
                                            size: 20,
                                          )
                                        : Text(
                                            AppLocalizations.of(context)!.register,
                                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                                          ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SizedBox(
            child: Padding(
              padding: EdgeInsets.only(bottom: widget.screenHeight * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Center(
                    child: Text(
                      version.isEmpty ? '' : '${AppLocalizations.of(context)!.version}: $version',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

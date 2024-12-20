import 'dart:async';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/core/error/error.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({required this.screenHeight, super.key});
  final double screenHeight;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> with SingleTickerProviderStateMixin {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  late StreamSubscription<bool> _keyboardSubscription;
  late AnimationController _controller;
  late Animation<double> _animation;

  String username = '';
  String email = '';
  String password = '';
  String confirmPassword = '';

  bool passwordIsObscure = true;
  bool confirmPasswordIsObscure = true;

  bool registering = false;
  bool registerd = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(milliseconds: 200), vsync: this);
    _animation = Tween<double>(begin: widget.screenHeight * 0.15, end: widget.screenHeight * 0.05).animate(_controller);
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

  EdgeInsetsGeometry inputMargin = const EdgeInsets.only(left: 30, right: 30, bottom: 10);

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (_, __) {
        ScaffoldMessenger.of(context).clearMaterialBanners();
      },
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                "assets/background.png",
                fit: BoxFit.fill,
              ),
            ),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: topAppBar(
                context,
                AppLocalizations.of(context)!.register,
                automaticallyImplyLeading: true,
                disableActions: true,
                backgroundColor: Colors.transparent,
                titleColor: Colors.white,
              ),
              body: AutofillGroup(
                child: Form(
                  key: _formkey,
                  child: AnimatedBuilder(
                    animation: _animation,
                    builder: (context, child) {
                      return Padding(
                        padding: EdgeInsets.only(top: _animation.value),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: inputMargin,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                autofillHints: const [AutofillHints.email],
                                enableSuggestions: false,
                                autocorrect: false,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return AppLocalizations.of(context)!.email_cannot_be_empty;
                                  }
                                  if (value.contains(' ')) {
                                    return AppLocalizations.of(context)!.cannot_contain_space;
                                  }
                                  if (!EmailValidator.validate(value)) {
                                    return AppLocalizations.of(context)!.email_is_invalid;
                                  }
                                  email = value;
                                  return null;
                                },
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  hintText: AppLocalizations.of(context)!.email_address,
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.all(10),
                                ),
                              ),
                            ),
                            Container(
                              margin: inputMargin,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                autofillHints: const [AutofillHints.newUsername],
                                enableSuggestions: false,
                                autocorrect: false,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return AppLocalizations.of(context)!.username_cannot_be_empty;
                                  }
                                  if (value.contains(' ')) {
                                    return AppLocalizations.of(context)!.cannot_contain_space;
                                  }
                                  if (value.length < 8) {
                                    return AppLocalizations.of(context)!.username_minimum_length_is_8;
                                  }
                                  username = value;
                                  return null;
                                },
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  hintText: AppLocalizations.of(context)!.username,
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.all(10),
                                ),
                              ),
                            ),
                            Container(
                              margin: inputMargin,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                autofillHints: const [AutofillHints.newPassword],
                                enableSuggestions: false,
                                autocorrect: false,
                                obscureText: passwordIsObscure,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return AppLocalizations.of(context)!.password_cannot_be_empty;
                                  }
                                  if (value.contains(' ')) {
                                    return AppLocalizations.of(context)!.cannot_contain_space;
                                  }
                                  if (value.length < 8) {
                                    return AppLocalizations.of(context)!.password_minimum_length_is_8;
                                  }
                                  password = value;
                                  return null;
                                },
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  hintText: AppLocalizations.of(context)!.password,
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.all(10),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        passwordIsObscure = !passwordIsObscure;
                                      });
                                    },
                                    icon: passwordIsObscure
                                        ? const Icon(Icons.visibility)
                                        : const Icon(Icons.visibility_off),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              margin: inputMargin,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextFormField(
                                autofillHints: const [AutofillHints.newPassword],
                                enableSuggestions: false,
                                autocorrect: false,
                                obscureText: confirmPasswordIsObscure,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return AppLocalizations.of(context)!.confirm_password_cannot_be_empty;
                                  }
                                  if (value != password) {
                                    return AppLocalizations.of(context)!.confirm_password_is_not_same_as_password;
                                  }
                                  confirmPassword = value;
                                  return null;
                                },
                                autovalidateMode: AutovalidateMode.onUserInteraction,
                                decoration: InputDecoration(
                                  hintText: AppLocalizations.of(context)!.confirm_password,
                                  border: InputBorder.none,
                                  contentPadding: const EdgeInsets.all(10),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        confirmPasswordIsObscure = !confirmPasswordIsObscure;
                                      });
                                    },
                                    icon: confirmPasswordIsObscure
                                        ? const Icon(Icons.visibility)
                                        : const Icon(Icons.visibility_off),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 115,
                              margin: const EdgeInsets.only(right: 10, left: 5, bottom: 10),
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton(
                                onPressed: registerd
                                    ? null
                                    : () {
                                        if (!_formkey.currentState!.validate()) {
                                          return;
                                        }
                                        setState(() {
                                          registering = true;
                                        });
                                        API
                                            .register(username, password, email)
                                            .then(
                                              (_) => showRegisterResultBanner(),
                                            )
                                            .catchError(
                                              (e) => showRegisterResultBanner(errCode: e),
                                            );
                                        setState(() {
                                          registering = false;
                                        });
                                      },
                                child: registering
                                    ? const SpinKitWave(
                                        color: Colors.white60,
                                        size: 20,
                                      )
                                    : Text(
                                        registerd
                                            ? AppLocalizations.of(context)!.success
                                            : AppLocalizations.of(context)!.register,
                                        style: const TextStyle(
                                            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                                      ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void showRegisterResultBanner({int? errCode}) {
    bool success = errCode == null;
    setState(() {
      registerd = success;
    });
    ScaffoldMessenger.of(context).removeCurrentMaterialBanner();
    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: Text(
          success ? AppLocalizations.of(context)!.register_success : ErrorCode.toMsg(context, errCode),
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        leading: success
            ? const Icon(
                Icons.check,
                color: Colors.green,
              )
            : const Icon(
                Icons.error,
                color: Colors.red,
              ),
        actions: [
          TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).removeCurrentMaterialBanner();
            },
            child: Text(
              AppLocalizations.of(context)!.dismiss,
            ),
          )
        ],
      ),
    );
  }
}

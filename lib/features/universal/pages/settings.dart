import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_storekit/in_app_purchase_storekit.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/core/fcm/fcm.dart';
import 'package:toc_machine_trading_fe/core/locale/locale.dart';
import 'package:toc_machine_trading_fe/features/login/repo/repo.dart';
import 'package:toc_machine_trading_fe/features/universal/entity/store.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

const String _removeADProductId = 'com.tocandraw.removeAd';
const List<String> _productIds = <String>[_removeADProductId];

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final Uri _url = Uri.parse('https://tocandraw.com/amp');

  final InAppPurchase _inAppPurchase = InAppPurchase.instance;
  late StreamSubscription<List<PurchaseDetails>> _subscription;

  List<String> _notFoundIds = <String>[];
  List<ProductDetails> _products = <ProductDetails>[];
  List<PurchaseDetails> _purchases = <PurchaseDetails>[];

  bool _isAvailable = false;
  bool _purchasePending = false;
  bool _loading = true;

  String? _queryProductError;

  ExpansionTileController? controllerA = ExpansionTileController();
  ExpansionTileController? controllerB = ExpansionTileController();
  ExpansionTileController? controllerC = ExpansionTileController();
  ExpansionTileController? controllerD = ExpansionTileController();

  bool _pushNotification = false;
  bool _pushNotificationPermamentlyDenied = false;

  @override
  void initState() {
    final Stream<List<PurchaseDetails>> purchaseUpdated = _inAppPurchase.purchaseStream;
    _subscription = purchaseUpdated.listen((List<PurchaseDetails> purchaseDetailsList) {
      _listenToPurchaseUpdated(purchaseDetailsList);
    }, onDone: () {
      _subscription.cancel();
    }, onError: (Object error) {});
    initStoreInfo();
    super.initState();
    checkPushIsPermantlyDenied();
    AppLifecycleListener(
      onResume: checkPushIsPermantlyDenied,
    );
  }

  @override
  void dispose() {
    if (Platform.isIOS) {
      final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition = _inAppPurchase.getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
      iosPlatformAddition.setDelegate(null);
    }
    _subscription.cancel();
    super.dispose();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  Future<void> checkPushIsPermantlyDenied() async {
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

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
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
                onExpansionChanged: (value) {
                  if (value) {
                    controllerB!.collapse();
                    controllerC!.collapse();
                    controllerD!.collapse();
                  }
                },
                iconColor: Colors.blueGrey,
                childrenPadding: const EdgeInsets.only(left: 50),
                leading: const Icon(Icons.account_circle_outlined),
                title: Text(AppLocalizations.of(context)!.user),
              ),
              ExpansionTile(
                maintainState: true,
                controller: controllerB,
                iconColor: Colors.blueGrey,
                childrenPadding: const EdgeInsets.only(left: 50),
                onExpansionChanged: (value) async {
                  if (value) {
                    controllerA!.collapse();
                    controllerC!.collapse();
                    controllerD!.collapse();
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
                    activeColor: Colors.blueGrey,
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
                controller: controllerC,
                onExpansionChanged: (value) {
                  if (value) {
                    controllerA!.collapse();
                    controllerB!.collapse();
                    controllerD!.collapse();
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
              ExpansionTile(
                maintainState: true,
                controller: controllerD,
                onExpansionChanged: (value) {
                  if (value) {
                    controllerA!.collapse();
                    controllerB!.collapse();
                    controllerC!.collapse();
                  }
                },
                iconColor: Colors.blueGrey,
                childrenPadding: const EdgeInsets.only(left: 50),
                leading: const Icon(Icons.remove_circle),
                title: Text(AppLocalizations.of(context)!.remove_ads),
                children: _queryProductError != null
                    ? [ListTile(title: Text(_queryProductError!))]
                    : _loading
                        ? [ListTile(title: Text(AppLocalizations.of(context)!.loading))]
                        : !_isAvailable
                            ? [ListTile(title: Text(AppLocalizations.of(context)!.not_available))]
                            : _buildProductList(),
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
              ListTile(
                leading: const Icon(Icons.settings_accessibility_outlined),
                title: Text(AppLocalizations.of(context)!.about_me),
                onTap: _launchUrl,
              ),
            ],
          ),
        ),
        if (_purchasePending)
          const Opacity(
            opacity: 0.3,
            child: ModalBarrier(
              dismissible: false,
              color: Colors.grey,
            ),
          ),
        if (_purchasePending)
          const Center(
            child: SpinKitWave(color: Colors.blueGrey, size: 35.0),
          ),
      ],
    );
  }

  List<ListTile> _buildProductList() {
    final List<ListTile> productList = <ListTile>[];
    if (_notFoundIds.isNotEmpty) {
      productList.add(
        ListTile(
          title: Text(
            AppLocalizations.of(context)!.error,
            style: TextStyle(color: ThemeData.light().colorScheme.error),
          ),
          subtitle: Text('[${_notFoundIds.join(", ")}] ${AppLocalizations.of(context)!.not_found}'),
        ),
      );
      return productList;
    }

    productList.addAll(
      _products.map(
        (ProductDetails productDetails) {
          return ListTile(
            title: Text(
              productDetails.title,
            ),
            subtitle: Text(
              productDetails.description,
            ),
            trailing: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green[800],
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                late PurchaseParam purchaseParam;
                purchaseParam = PurchaseParam(
                  productDetails: productDetails,
                );
                _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
              },
              child: Text(productDetails.price),
            ),
          );
        },
      ),
    );

    productList.add(ListTile(
      title: Text(AppLocalizations.of(context)!.already_purchased),
      subtitle: Text(AppLocalizations.of(context)!.restore_purchase),
      trailing: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Colors.blueGrey,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          _inAppPurchase.restorePurchases();
        },
        child: Text(AppLocalizations.of(context)!.restore),
      ),
    ));
    return productList;
  }

  Future<void> initStoreInfo() async {
    final bool isAvailable = await _inAppPurchase.isAvailable();
    if (!isAvailable) {
      setState(() {
        _isAvailable = isAvailable;
        _products = <ProductDetails>[];
        _purchases = <PurchaseDetails>[];
        _notFoundIds = <String>[];
        _purchasePending = false;
        _loading = false;
      });
      return;
    }

    if (Platform.isIOS) {
      final InAppPurchaseStoreKitPlatformAddition iosPlatformAddition = _inAppPurchase.getPlatformAddition<InAppPurchaseStoreKitPlatformAddition>();
      await iosPlatformAddition.setDelegate(PaymentQueueDelegate());
    }

    final ProductDetailsResponse productDetailResponse = await _inAppPurchase.queryProductDetails(_productIds.toSet());
    if (productDetailResponse.error != null) {
      setState(() {
        _queryProductError = productDetailResponse.error!.message;
        _isAvailable = isAvailable;
        _products = productDetailResponse.productDetails;
        _purchases = <PurchaseDetails>[];
        _notFoundIds = productDetailResponse.notFoundIDs;
        _purchasePending = false;
        _loading = false;
      });
      return;
    }

    if (productDetailResponse.productDetails.isEmpty) {
      setState(() {
        _queryProductError = null;
        _isAvailable = isAvailable;
        _products = productDetailResponse.productDetails;
        _purchases = <PurchaseDetails>[];
        _notFoundIds = productDetailResponse.notFoundIDs;
        _purchasePending = false;
        _loading = false;
      });
      return;
    }

    setState(() {
      _isAvailable = isAvailable;
      _products = productDetailResponse.productDetails;
      _notFoundIds = productDetailResponse.notFoundIDs;
      _purchasePending = false;
      _loading = false;
    });
  }

  void showPendingUI() {
    setState(() {
      _purchasePending = true;
    });
  }

  void handleError(IAPError error) {
    setState(() {
      _purchasePending = false;
    });
  }

  Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) {
    return Future<bool>.value(true);
  }

  Future<void> deliverProduct(PurchaseDetails purchaseDetails) async {
    setState(() {
      _purchases.add(purchaseDetails);
      _purchasePending = false;
    });
  }

  Future<void> _listenToPurchaseUpdated(List<PurchaseDetails> purchaseDetailsList) async {
    for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
      if (purchaseDetails.status == PurchaseStatus.pending) {
        showPendingUI();
      } else {
        if (purchaseDetails.status == PurchaseStatus.error) {
          handleError(purchaseDetails.error!);
        } else if (purchaseDetails.status == PurchaseStatus.purchased || purchaseDetails.status == PurchaseStatus.restored) {
          final bool valid = await _verifyPurchase(purchaseDetails);
          if (valid) {
            unawaited(deliverProduct(purchaseDetails));
          } else {
            _handleInvalidPurchase(purchaseDetails);
            return;
          }
        }
        if (purchaseDetails.pendingCompletePurchase) {
          await _inAppPurchase.completePurchase(purchaseDetails);
        }
      }
    }
  }

  void _handleInvalidPurchase(PurchaseDetails purchaseDetails) {}
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:toc_machine_trading_fe/core/ad/ad.dart';
import 'package:toc_machine_trading_fe/core/api/api.dart';
import 'package:toc_machine_trading_fe/features/realtime/entity/future.dart';
import 'package:toc_machine_trading_fe/features/realtime/pages/future.dart';
import 'package:toc_machine_trading_fe/features/universal/repo/settings.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';
import 'package:web_socket_channel/io.dart';

abstract class SearchCache {
  static String code = '';
  static void setCode(String value) {
    code = value;
  }

  static String getCode() {
    return code;
  }

  static void clear() {
    code = '';
  }
}

class SearchFuturePage extends StatefulWidget {
  const SearchFuturePage({super.key});

  @override
  State<SearchFuturePage> createState() => _SearchFuturePageState();
}

class _SearchFuturePageState extends State<SearchFuturePage> {
  final TextEditingController _controller = TextEditingController();
  late Orientation _currentOrientation;
  late IOWebSocketChannel? _channel;

  bool _removeAds = false;
  bool _isLoaded = false;
  BannerAd? _inlineAdaptiveAd;
  AdSize? _adSize;

  @override
  void initState() {
    checkRemoveAds();
    super.initState();
    initialWS();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _currentOrientation = MediaQuery.of(context).orientation;
    _loadAd();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  List<FutureDetail> futureList = [];

  @override
  void dispose() {
    _channel!.sink.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (_) {
        SearchCache.clear();
      },
      child: Scaffold(
        appBar: topAppBar(
          context,
          AppLocalizations.of(context)!.future,
          automaticallyImplyLeading: true,
        ),
        body: SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _controller,
                    onChanged: (value) {
                      if (value.isNotEmpty) {
                        _channel!.sink.add(value);
                        SearchCache.setCode(value);
                      } else {
                        setState(() {
                          futureList = [];
                        });
                      }
                    },
                    decoration: InputDecoration(
                      labelText: AppLocalizations.of(context)!.search,
                      suffixIcon: IconButton(
                        onPressed: () {
                          _controller.clear();
                          SearchCache.clear();
                          setState(() {
                            futureList = [];
                          });
                        },
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: ListView.builder(
                    itemCount: futureList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(futureList[index].name!),
                        subtitle: Text(futureList[index].code!),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              maintainState: true,
                              fullscreenDialog: false,
                              builder: (context) => FutureRealTimePage(
                                code: futureList[index].code!,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                _removeAds
                    ? const SizedBox.shrink()
                    : Expanded(
                        child: SafeArea(child: _getAdUnit()),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> initialWS() async {
    _channel = IOWebSocketChannel.connect(
      Uri.parse(wsSearchFutureTargetURL),
      pingInterval: const Duration(seconds: 1),
      headers: {
        "Authorization": API.authKey,
      },
    );
    await _channel!.ready;
    if (SearchCache.getCode().isNotEmpty) {
      _controller.text = SearchCache.getCode();
      _channel!.sink.add(SearchCache.getCode());
    }
    _channel!.stream.listen(
      (message) {
        final msg = jsonDecode(message);
        if (msg['futures'] == null) {
          return;
        }

        List<FutureDetail> result = [];
        for (var item in msg['futures']) {
          result.add(FutureDetail.fromJson(item));
        }
        setState(() {
          futureList = result;
        });
      },
      onDone: () {},
      onError: (error) {},
    );
  }

  Future<void> checkRemoveAds() async {
    final bool value = await SettingsRepo.isAdsRemoved();
    setState(() {
      _removeAds = value;
    });
  }

  void _loadAd() async {
    await _inlineAdaptiveAd?.dispose();
    setState(() {
      _inlineAdaptiveAd = null;
      _isLoaded = false;
    });

    AdSize size = AdSize.getCurrentOrientationInlineAdaptiveBannerAdSize(
      _adWidth().truncate(),
    );

    _inlineAdaptiveAd = BannerAd(
      adUnitId: AD.bannerAdUnitId,
      size: size,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) async {
          BannerAd bannerAd = (ad as BannerAd);
          final AdSize? size = await bannerAd.getPlatformAdSize();
          if (size == null) {
            return;
          }

          setState(() {
            _inlineAdaptiveAd = bannerAd;
            _isLoaded = true;
            _adSize = size;
          });
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          ad.dispose();
        },
      ),
    );
    await _inlineAdaptiveAd!.load();
  }

  double _adWidth() {
    return MediaQuery.of(context).size.width - (20);
  }

  Widget _getAdUnit() {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (_currentOrientation == orientation && _inlineAdaptiveAd != null && _isLoaded && _adSize != null) {
          return Align(
            child: SizedBox(
              width: _adWidth(),
              height: _adSize!.height.toDouble(),
              child: AdWidget(
                ad: _inlineAdaptiveAd!,
              ),
            ),
          );
        }
        // Reload the ad if the orientation changes.
        if (_currentOrientation != orientation) {
          _currentOrientation = orientation;
          _loadAd();
        }
        return Container();
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:toc_machine_trading_fe/core/ad/ad.dart';
import 'package:toc_machine_trading_fe/features/universal/repo/settings.dart';

class AdBanner extends StatefulWidget {
  const AdBanner({super.key});

  @override
  State<AdBanner> createState() => _AdBannerState();
}

class _AdBannerState extends State<AdBanner> {
  bool _removeAds = false;
  bool _isLoaded = false;
  BannerAd? _inlineAdaptiveAd;
  AdSize? _adSize;

  @override
  void initState() {
    checkRemoveAds();
    super.initState();
    _loadAd();
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return _removeAds
        ? const SizedBox.shrink()
        : (_inlineAdaptiveAd != null && _isLoaded && _adSize != null)
            ? Align(
                child: SizedBox(
                  width: _adWidth(),
                  height: _adSize!.height.toDouble(),
                  child: AdWidget(
                    ad: _inlineAdaptiveAd!,
                  ),
                ),
              )
            : Container();
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
}

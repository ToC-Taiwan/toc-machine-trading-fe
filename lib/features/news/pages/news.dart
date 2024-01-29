import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:toc_machine_trading_fe/core/ad/ad.dart';
import 'package:toc_machine_trading_fe/core/api/twse.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  late Orientation _currentOrientation;

  Future<List<TWSENews>> newsList = TWSE.getTWSENews();

  bool _isLoaded = false;
  BannerAd? _inlineAdaptiveAd;
  AdSize? _adSize;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _currentOrientation = MediaQuery.of(context).orientation;
    _loadAd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topAppBar(
          context,
          AppLocalizations.of(context)!.news,
        ),
        body: FutureBuilder<List<TWSENews>>(
          future: newsList,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.separated(
                separatorBuilder: (context, index) {
                  if (index == 5) {
                    return _getAdUnit();
                  }
                  return Divider(
                    color: Colors.blueGrey[200],
                    thickness: 3,
                    height: 0,
                    indent: 40,
                  );
                },
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data![index].title!),
                    subtitle: Align(
                      alignment: Alignment.centerRight,
                      child: Text(snapshot.data![index].date!),
                    ),
                    onTap: snapshot.data![index].url == ''
                        ? null
                        : () {
                            launchUrl(Uri.parse(snapshot.data![index].url!)).then((value) {
                              if (!value) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      AppLocalizations.of(context)!.unknown_error,
                                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.red),
                                    ),
                                    duration: const Duration(seconds: 2),
                                  ),
                                );
                              }
                            }).catchError((e) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    e.toString(),
                                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.red),
                                  ),
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                            });
                          },
                  );
                },
              );
            }
            return const Center(
              child: SpinKitWave(color: Colors.blueGrey, size: 35.0),
            );
          },
        ));
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

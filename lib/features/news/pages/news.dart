import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:toc_machine_trading_fe/core/api/twse.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  Future<List<TWSENews>> newsList = TWSE.getTWSENews();

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
}

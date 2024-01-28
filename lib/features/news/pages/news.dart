import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:toc_machine_trading_fe/core/api/twse.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

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
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data![index].title!),
                    subtitle: Text(snapshot.data![index].date!),
                    onTap: () {},
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

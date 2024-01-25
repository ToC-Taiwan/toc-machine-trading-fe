import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

class TargestPage extends StatefulWidget {
  const TargestPage({super.key});

  @override
  State<TargestPage> createState() => _TargestPageState();
}

class _TargestPageState extends State<TargestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(
        context,
        AppLocalizations.of(context)!.targets,
      ),
    );
  }
}

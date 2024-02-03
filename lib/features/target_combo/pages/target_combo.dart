import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:toc_machine_trading_fe/features/universal/widgets/app_bar.dart';

class TargetComboPage extends StatefulWidget {
  const TargetComboPage({super.key});

  @override
  State<TargetComboPage> createState() => _TargetComboPageState();
}

class _TargetComboPageState extends State<TargetComboPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topAppBar(
        context,
        AppLocalizations.of(context)!.target_combo,
        automaticallyImplyLeading: true,
        disableActions: false,
      ),
    );
  }
}
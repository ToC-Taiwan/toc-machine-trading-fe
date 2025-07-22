#!/bin/bash
set -e

dart pub global activate flutterfire_cli

# should login first see docs/FLUTTER_FIRE.md
rm -rf firebase.json lib/firebase_options.dart
flutterfire configure \
    --project=trade-agent-87e47 \
    --android-package-name=com.tocandraw.trade_agent_v2 \
    --platforms="android,ios"

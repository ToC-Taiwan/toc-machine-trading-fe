#!/bin/bash
set -e

flutter clean
flutter pub get
flutter gen-l10n

dart ./scripts/gen_version.dart

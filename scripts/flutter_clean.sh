#!/bin/bash
set -e

flutter clean
flutter pub get
flutter gen-l10n

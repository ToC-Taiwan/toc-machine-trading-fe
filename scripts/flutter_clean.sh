#!/bin/bash
set -e

flutter clean
flutter pub get
flutter gen-l10n

if [ -z "$ANDROID_STORE_PASSWORD" ] || [ -z "$ANDROID_KEY_PASSWORD" ]; then
    echo "Please set ANDROID_STORE_PASSWORD and ANDROID_KEY_PASSWORD"
    echo "And make sure key stroe in ~/android_key/upload-keystore.jks"
    exit 1
fi

echo 'storePassword='$ANDROID_STORE_PASSWORD'' >./android/key.properties
echo 'keyPassword='$ANDROID_KEY_PASSWORD'' >>./android/key.properties
echo 'keyAlias=play_console_upload' >>./android/key.properties
echo "storeFile=$HOME/android_key/upload-keystore.jks" >>./android/key.properties

dart ./scripts/gen_version.dart

#!/bin/bash
set -e

if [ -z "$APPLE_CONNECT_API_KEY" ] || [ -z "$APPLE_CONNECT_ISSUER_ID" ]; then
    echo "Please set APPLE_CONNECT_API_KEY and APPLE_CONNECT_ISSUER_ID"
    echo "And make sure key stroe in ~/.appstoreconnect/private_keys/AuthKey_XXXXXXXXXX.p8"
    exit 1
fi

dart ./scripts/gen_version.dart
flutter build ipa

xcrun altool --upload-app --type ios -f build/ios/ipa/*.ipa --apiKey $APPLE_CONNECT_API_KEY --apiIssuer $APPLE_CONNECT_ISSUER_ID

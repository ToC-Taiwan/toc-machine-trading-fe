#!/bin/sh

#  ci_post_clone.sh
#  Runner
#
#  Created by Tim Hsu on 2024/10/31.
#
# Fail this script if any subcommand fails.
set -e

# The default execution directory of this script is the ci_scripts directory.
cd $CI_PRIMARY_REPOSITORY_PATH # change working directory to the root of your cloned repo.

# Install Flutter using curl.
# The version of Flutter to install.
version=3.32.7
if [[ $(uname -m) == "arm64" ]]; then
    curl -fSL https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_arm64_$version-stable.zip --output flutter_macos-stable.zip
else
    curl -fSL https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos_$version-stable.zip --output flutter_macos-stable.zip
fi
unzip -q flutter_macos-stable.zip -d $HOME
export PATH="$PATH:$HOME/flutter/bin"

# Install Flutter artifacts for iOS (--ios), or macOS (--macos) platforms.
flutter precache --ios

# Install Flutter dependencies.
flutter pub get

# Generate the l10n file.
flutter gen-l10n

# install flutterfire_cli
dart pub global activate flutterfire_cli

# Generate the version file.
dart version.dart

# Install CocoaPods using Homebrew.
HOMEBREW_NO_AUTO_UPDATE=1 # disable homebrew's automatic updates.
brew install cocoapods

# Install CocoaPods dependencies.
cd ios && pod install # run `pod install` in the `ios` directory.

exit 0

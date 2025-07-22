#!/bin/bash
set -e

rm -rf ios/Podfile.lock

flutter build ipa
flutter build appbundle

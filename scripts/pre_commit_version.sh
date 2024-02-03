#!/bin/bash
set -e

dart ./scripts/update_pubspec.dart
echo "" >>pubspec.yaml
git add pubspec.yaml

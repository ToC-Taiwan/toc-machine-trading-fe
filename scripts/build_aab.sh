#!/bin/bash
set -e

dart ./scripts/gen_version.dart
flutter build appbundle

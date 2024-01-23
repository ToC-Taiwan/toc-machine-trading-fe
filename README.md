# TOC MACHINE TRADING FE

## Create projcet

- flutter create

```sh
flutter create --platforms ios,android,web --template app -e toc_machine_trading_fe
```

- But in Github, change the underscore to dash `toc-machine-trading-fe`

```sh
git init
git add .
git cz
git branch -M main
git remote add origin git@github.com:ToC-Taiwan/toc-machine-trading-fe.git
git push -u origin main
```

## Compile Protobuf

- in this script, it will install dart protoc_plugin by `dart pub global activate --overwrite protoc_plugin`
- add `protobuf: ^3.1.0` in `pubspec.yaml` dependencies

```sh
./scripts/compile_proto.sh
```

## Add app icon

- put icon.png in `assets/app_icon.png`
- add `flutter_launcher_icons: ^0.13.1` in `pubspec.yaml` dev_dependencies
- add `flutter_launcher_icons` part like below

```yaml
flutter_launcher_icons:
  android: true
  image_path: assets/app_icon.png
  ios: true
  remove_alpha_ios: true
```

```sh
./scripts/generate_app_icon.sh
```

## Add localization

- add `intl: ^0.18.1` in `pubspec.yaml` dependencies
- edit `pubspec.yaml` like below

```yaml
flutter:
  generate: true
```

- add `l10n.yaml` in root directory

```sh
touch l10n.yaml
```

```yaml
arb-dir: lib/l10n
template-arb-file: app_en.arb
output-localization-file: app_localizations.dart
preferred-supported-locales: ["en", "ja", "ko", "zh_Hans_CN", "zh_Hant_TW"]
untranslated-messages-file: need_translate.txt
```

- add `l10n` directory in `lib` like below

```sh
.
├── app_en.arb
├── app_ja.arb
├── app_ko.arb
├── app_zh.arb
├── app_zh_Hans_CN.arb
└── app_zh_Hant_TW.arb
```

- run script

```sh
./scripts/intl.sh
```

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

## FlutterFire

- **Before run this, make sure android and ios bundle ID are wright**

```sh
npm install -g firebase-tools
```

```sh
dart pub global activate --overwrite flutterfire_cli
```

```sh
flutterfire configure
```

## Bundle ID

### Android

- modify in `android/app/build.gradle`

```diff
android {
-    namespace "com.example.toc_machine_trading_fe"
+    namespace "com.tocandraw.trade_agent_v2"
     compileSdkVersion flutter.compileSdkVersion
     ndkVersion flutter.ndkVersion

defaultConfig {
-    applicationId "com.example.toc_machine_trading_fe"
+    applicationId "com.tocandraw.trade_agent_v2"
     // You can update the following values to match your application needs.
     // For more information, see: https://docs.flutter.dev/deployment/android#reviewing-the-gradle-build-configuration.
     minSdkVersion flutter.minSdkVersion
```

- modify in `android/app/src/main/kotlin/com/example/toc_machine_trading_fe/MainActivity.kt`

```diff
- package com.example.toc_machine_trading_fe
+ package com.tocandraw.trade_agent_v2
```

### iOS

- Review Xcode project settings

```sh
open ios/Runner.xcworkspace
```

- To view your app settings, select the Runner target in the Xcode navigator.

**Bundle Identifier:The App ID you registered on App Store Connect.**

#### Updating the app deployment version

- If you changed Deployment Target in your Xcode project, open ios/Flutter/AppframeworkInfo.plist in your Flutter app and update the MinimumOSVersion value to match.

## Build

### Android with Multidex

- modifiy in `android/app/build.gradle`

```diff
+ def keystoreProperties = new Properties()
+ def keystorePropertiesFile = rootProject.file('key.properties')
+ if (keystorePropertiesFile.exists()) {
+     keystoreProperties.load(new FileInputStream(keystorePropertiesFile))
+ }
+
android {
    namespace "com.tocandraw.trade_agent_v2"
-     compileSdkVersion flutter.compileSdkVersion
+     compileSdkVersion 34
    ndkVersion flutter.ndkVersion

    compileOptions {
        sourceCompatibility JavaVersion.VERSION_1_8
        targetCompatibility JavaVersion.VERSION_1_8
    }
    kotlinOptions {
        jvmTarget = '1.8'
    }
    sourceSets {
        main.java.srcDirs += 'src/main/kotlin'
    }

    defaultConfig {
        applicationId "com.tocandraw.trade_agent_v2"
-         minSdkVersion flutter.minSdkVersion
-         targetSdkVersion flutter.targetSdkVersion
+         minSdkVersion 28
+         targetSdkVersion 34
        versionCode flutterVersionCode.toInteger()
        versionName flutterVersionName
+         multiDexEnabled true
    }

+     signingConfigs {
+         release {
+             keyAlias keystoreProperties['keyAlias']
+             keyPassword keystoreProperties['keyPassword']
+             storeFile keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
+             storePassword keystoreProperties['storePassword']
+         }
+     }

    buildTypes {
        release {
-             signingConfig signingConfigs.debug
+             signingConfig signingConfigs.release
        }
    }
}

- dependencies {}
+ dependencies {
+     implementation 'com.google.android.material:material:1.11.0'
+     implementation 'androidx.multidex:multidex:2.0.1'
+ }
```

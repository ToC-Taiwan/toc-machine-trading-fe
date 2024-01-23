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
dart run flutter_launcher_icons
```

## Add Splash Screen

- add `flutter_native_splash: ^2.3.9` in `pubspec.yaml` dev_dependencies
- add `flutter_native_splash` part like below

```yaml
flutter_native_splash:
  background_image: "assets/background.png"
```

```sh
dart run flutter_native_splash:create
```

```sh
dart run flutter_native_splash:create
Building package executable... (1.3s)
Built flutter_native_splash:create.
[Android] Updating launch background(s) with splash image path...
[Android]  - android/app/src/main/res/drawable/launch_background.xml
[Android]  - android/app/src/main/res/drawable-v21/launch_background.xml
[Android] Updating styles...
[Android]  - android/app/src/main/res/values-v31/styles.xml
[Android] No android/app/src/main/res/values-v31/styles.xml found in your Android project
[Android] Creating android/app/src/main/res/values-v31/styles.xml and adding it to your Android project
[Android]  - android/app/src/main/res/values-night-v31/styles.xml
[Android] No android/app/src/main/res/values-night-v31/styles.xml found in your Android project
[Android] Creating android/app/src/main/res/values-night-v31/styles.xml and adding it to your Android project
[Android]  - android/app/src/main/res/values/styles.xml
[Android]  - android/app/src/main/res/values-night/styles.xml
[iOS] Updating ios/Runner/Info.plist for status bar hidden/visible
[Web] Creating background images
[Web] Creating CSS
[Web] Updating index.html

✅ Native splash complete.
Now go finish building something awesome! 💪 You rock! 🤘🤩
Like the package? Please give it a 👍 here: https://pub.dev/packages/flutter_native_splash
```

## Add localization

- add `intl: ^0.18.1` in `pubspec.yaml` dependencies
- edit `pubspec.yaml` like below

```yaml
flutter:
  generate: true
```

- add `l10n.yaml` and make dir `l10n` in root directory

```sh
.
├── l10n
│   ├── app_en.arb
│   ├── app_ja.arb
│   ├── app_ko.arb
│   ├── app_zh.arb
│   ├── app_zh_Hans_CN.arb
│   └── app_zh_Hant_TW.arb
├── l10n.yaml
```

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

## AdMob

- Android

```diff
dependencies {
    implementation 'com.google.android.material:material:1.11.0'
    implementation 'androidx.multidex:multidex:2.0.1'
+     implementation 'com.google.android.gms:play-services-ads:22.6.0'
}
```

```xml
<meta-data
    android:name="com.google.android.gms.ads.APPLICATION_ID"
    android:value="ca-app-pub-1617900048851450~2690685861" />
```

- iOS

```xml
<key>GADApplicationIdentifier</key>
  <string>ca-app-pub-1617900048851450~5212154454</string>
  <key>SKAdNetworkItems</key>
  <array>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>cstr6suwn9.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>4fzdc2evr5.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>4pfyvq9l8r.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>2fnua5tdw4.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>ydx93a7ass.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>5a6flpkh64.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>p78axxw29g.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>v72qych5uu.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>ludvb6z3bs.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>cp8zw746q7.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>3sh42y64q3.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>c6k4g5qg8m.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>s39g8k73mm.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>3qy4746246.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>f38h382jlk.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>hs6bdukanm.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>v4nxqhlyqp.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>wzmmz9fp6w.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>yclnxrl5pm.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>t38b2kh725.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>7ug5zh24hu.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>gta9lk7p23.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>vutu7akeur.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>y5ghdn5j9k.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>n6fk4nfna4.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>v9wttpbfk9.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>n38lu8286q.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>47vhws6wlr.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>kbd757ywx3.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>9t245vhmpl.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>eh6m2bh4zr.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>a2p9lx4jpn.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>22mmun2rn5.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>4468km3ulz.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>2u9pt9hc89.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>8s468mfl3y.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>klf5c3l5u5.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>ppxm28t8ap.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>ecpz2srf59.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>uw77j35x4d.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>pwa73g5rt2.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>mlmmfzh3r3.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>578prtvx9j.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>4dzt52r2t5.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>e5fvkxwrpn.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>8c4e2ghe7u.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>zq492l623r.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>3rd42ekr43.skadnetwork</string>
   </dict>
   <dict>
    <key>SKAdNetworkIdentifier</key>
    <string>3qcr597p9d.skadnetwork</string>
   </dict>
  </array>
```

#!/bin/bash
set -e

flutter pub add \
    another_flushbar \
    carousel_slider \
    cronet_http \
    cupertino_http \
    date_format \
    email_validator \
    firebase_core \
    firebase_messaging \
    fixnum \
    flutter_keyboard_visibility \
    flutter_secure_storage \
    flutter_slidable \
    flutter_spinkit \
    google_mobile_ads \
    http \
    in_app_purchase \
    in_app_purchase_storekit \
    intl \
    k_chart \
    path \
    path_provider \
    percent_indicator \
    permission_handler \
    protobuf \
    pull_to_refresh \
    scrollable_positioned_list \
    sqflite \
    syncfusion_flutter_charts \
    syncfusion_flutter_treemap \
    table_calendar \
    toc_trade_protobuf \
    url_launcher \
    wakelock_plus \
    web_socket_channel

flutter pub add \
    dev:flutter_launcher_icons \
    dev:flutter_lints \
    dev:flutter_native_splash

flutter pub upgrade
flutter pub upgrade --major-versions

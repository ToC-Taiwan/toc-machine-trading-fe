import 'dart:convert';
import 'dart:io';

import 'package:cronet_http/cronet_http.dart';
import 'package:cupertino_http/cupertino_http.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:toc_machine_trading_fe/features/balance/entity/entity.dart';
import 'package:toc_machine_trading_fe/features/balance/entity/position.dart';
import 'package:toc_machine_trading_fe/features/realtime/entity/snapshot.dart';
import 'package:toc_machine_trading_fe/features/realtime/entity/stock.dart';
import 'package:toc_machine_trading_fe/features/universal/entity/user.dart';

const int serverError = -999;

const String protocol = 'https';
const String wsProtocol = 'wss';
const String backendHost = 'tocraw.com';

// const String protocol = 'http';
// const String wsProtocol = 'ws';
// const String backendHost = 'localhost:26670';

const String backendURLPrefix = '$protocol://$backendHost/tmt/v1';

const String wsSearchStockTargetURL = '$wsProtocol://$backendHost/tmt/v1/basic/search/stock';
const String wsSearchFutureTargetURL = '$wsProtocol://$backendHost/tmt/v1/basic/search/future';
const String backendFutureWSURLPrefix = '$wsProtocol://$backendHost/tmt/v1/stream/ws/pick-future';
const String backendPickLotWSURLPrefix = '$wsProtocol://$backendHost/tmt/v1/stream/ws/pick-stock';
const String backendPickOddsWSURLPrefix = '$wsProtocol://$backendHost/tmt/v1/stream/ws/pick-stock/odds';
const String backendTargetWSURLPrefix = '$wsProtocol://$backendHost/tmt/v1/targets/ws';
const String backendHistoryWSURLPrefix = '$wsProtocol://$backendHost/tmt/v1/history/ws';

abstract class API {
  static final _client = httpClient();

  static final _storage = Platform.isIOS
      ? const FlutterSecureStorage()
      : const FlutterSecureStorage(
          aOptions: AndroidOptions(
            encryptedSharedPreferences: true,
          ),
        );

  static String _apiToken = '';

  static Client httpClient() {
    if (Platform.isIOS) {
      final config = URLSessionConfiguration.ephemeralSessionConfiguration()..cache = URLCache.withCapacity(memoryCapacity: 32 * 1024 * 1024);
      return CupertinoClient.fromSessionConfiguration(config);
    }
    if (Platform.isAndroid) {
      final engine = CronetEngine.build(
        cacheMode: CacheMode.memory,
        cacheMaxSize: 32 * 1024 * 1024,
      );
      return CronetClient.fromCronetEngine(engine);
    }
    return IOClient();
  }

  static set setAuthKey(String token) {
    _storage.write(key: 'authKey', value: token);
    _apiToken = token;
  }

  static String get authKey {
    return _apiToken;
  }

  static Future<void> login(String userName, String password) async {
    var loginBody = {
      'username': userName,
      'password': password,
    };
    try {
      final response = await _client.post(
        Uri.parse('$backendURLPrefix/login'),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(loginBody),
      );
      final result = jsonDecode(response.body) as Map<String, dynamic>;
      if (response.statusCode == 200) {
        setAuthKey = result['token'];
      } else {
        throw result['code'] as int;
      }
    } on ClientException {
      throw serverError;
    }
  }

  static Future<void> refreshToken() async {
    if (_apiToken.isEmpty) {
      await _storage.read(key: 'authKey').then((value) {
        if (value != null) {
          setAuthKey = value;
        } else {
          throw serverError;
        }
      });
    }

    try {
      final response = await _client.get(
        Uri.parse('$backendURLPrefix/refresh'),
        headers: {
          "Authorization": _apiToken,
        },
      );
      final result = jsonDecode(response.body) as Map<String, dynamic>;
      if (response.statusCode != 200) {
        throw result['code'] as int;
      }
      setAuthKey = result['token'];
    } on ClientException {
      throw serverError;
    }
  }

  static Future<void> register(String userName, String password, String email) async {
    var registerBody = {
      'username': userName,
      'password': password,
      'email': email,
    };
    try {
      final response = await _client.post(
        Uri.parse('$backendURLPrefix/user'),
        headers: {
          "Content-Type": "application/json",
        },
        body: jsonEncode(registerBody),
      );
      if (response.statusCode != 200) {
        final result = jsonDecode(response.body) as Map<String, dynamic>;
        throw result['code'] as int;
      }
    } on ClientException {
      throw serverError;
    }
  }

  static Future<void> sendToken(bool enabled, String pushToken) async {
    try {
      final response = await _client.put(
        Uri.parse('$backendURLPrefix/user/push-token'),
        headers: {
          "Content-Type": "application/json",
          "Authorization": _apiToken,
        },
        body: jsonEncode({
          "push_token": pushToken,
          "enabled": enabled,
        }),
      );

      if (response.statusCode != 200) {
        final result = jsonDecode(response.body) as Map<String, dynamic>;
        throw result['code'] as int;
      }
    } on ClientException {
      throw serverError;
    }
  }

  static Future<bool> checkTokenStatus(String pushToken) async {
    try {
      final response = await _client.get(
        Uri.parse('$backendURLPrefix/user/push-token'),
        headers: {
          "Content-Type": "application/json",
          "Authorization": _apiToken,
          "token": pushToken,
        },
      );

      final result = jsonDecode(response.body) as Map<String, dynamic>;
      if (response.statusCode != 200) {
        throw result['code'] as int;
      }
      return result['enabled'];
    } on ClientException {
      throw serverError;
    }
  }

  static Future<void> recalculateBalance(String date) async {
    try {
      final response = await _client.put(
        Uri.parse('$backendURLPrefix/order/date/$date'),
        headers: {
          "Authorization": _apiToken,
        },
      );
      if (response.statusCode != 200) {
        final result = jsonDecode(response.body) as Map<String, dynamic>;
        throw result['code'] as int;
      }
    } on ClientException {
      throw serverError;
    }
  }

  static Future<void> moveOrderToLatestTradeday(String orderID) async {
    try {
      final response = await _client.patch(
        Uri.parse('$backendURLPrefix/order/future/$orderID'),
        headers: {
          "Authorization": _apiToken,
        },
      );
      if (response.statusCode != 200) {
        final result = jsonDecode(response.body) as Map<String, dynamic>;
        throw result['code'] as int;
      }
    } on ClientException {
      throw serverError;
    }
  }

  static Future<List<StockDetail>> fetchStockDetail(List<String> codeList) async {
    if (codeList.isEmpty) {
      throw 'code is empty';
    }

    var putBody = {
      'stock_list': codeList,
    };
    try {
      final response = await _client.put(
        Uri.parse('$backendURLPrefix/basic/stock'),
        headers: {
          "Authorization": _apiToken,
        },
        body: jsonEncode(putBody),
      );
      final result = jsonDecode(response.body) as Map<String, dynamic>;
      if (response.statusCode == 200) {
        final data = <StockDetail>[];
        for (final i in result["stock_detail"]) {
          data.add(StockDetail.fromJson(i as Map<String, dynamic>));
        }
        if (data.isEmpty) {
          throw 'no data';
        }
        return data;
      } else {
        throw result['code'] as int;
      }
    } on ClientException {
      throw serverError;
    }
  }

  static Future<Map<String, SnapShot>> fetchSnapshots(List<String> codeList) async {
    var putBody = {
      'stock_list': codeList,
    };

    try {
      final response = await _client.put(
        Uri.parse('$backendURLPrefix/stream/snapshot'),
        headers: {
          "Authorization": _apiToken,
        },
        body: jsonEncode(putBody),
      );
      final result = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Map<String, SnapShot> data = {};
        for (final i in result as List<dynamic>) {
          data[i['stock_num'] as String] = SnapShot.fromJson(i as Map<String, dynamic>);
        }
        return data;
      } else {
        throw (result as Map<String, dynamic>)['code'] as int;
      }
    } on ClientException {
      throw serverError;
    }
  }

  static Future<Balance> fetchBalance() async {
    try {
      final response = await _client.get(
        Uri.parse('$backendURLPrefix/order/balance'),
        headers: {
          "Authorization": _apiToken,
        },
      );
      final Map<String, dynamic> result = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Balance data;
        List<StockBalance> stock = [];
        List<FutureBalance> future = [];
        if (result['stock'] != null) {
          for (final i in result['stock'] as List<dynamic>) {
            stock.add(StockBalance.fromJson(i as Map<String, dynamic>));
          }
        }
        if (result['future'] != null) {
          for (final i in result['future'] as List<dynamic>) {
            future.add(FutureBalance.fromJson(i as Map<String, dynamic>));
          }
        }
        data = Balance(stock: stock, future: future);
        return data;
      } else {
        throw result['code'] as int;
      }
    } on ClientException {
      throw serverError;
    }
  }

  static Future<List<PositionStock>?> fetchPositionStock({String? code}) async {
    String specificCode = '';
    if (code != null) {
      specificCode = code;
    }

    try {
      final response = await _client.get(
        Uri.parse('$backendURLPrefix/trade/inventory/stock'),
        headers: {
          "Authorization": _apiToken,
        },
      );
      final List<dynamic> result = jsonDecode(response.body);
      if (response.statusCode == 200) {
        List<PositionStock> data = [];
        for (final i in result) {
          PositionStock position = PositionStock.fromJson(i as Map<String, dynamic>);
          if (specificCode.isNotEmpty && position.stockNum == specificCode) {
            return [position];
          }
          data.add(position);
        }
        return data;
      } else {
        return null;
      }
    } on ClientException {
      throw serverError;
    }
  }

  static Future<UserInfo> fetchUserInfo() async {
    try {
      final response = await _client.get(
        Uri.parse('$backendURLPrefix/user/info'),
        headers: {
          "Authorization": _apiToken,
        },
      );
      final Map<String, dynamic> result = jsonDecode(response.body);
      if (response.statusCode == 200) {
        return UserInfo.fromJson(result);
      } else {
        throw result['code'] as int;
      }
    } on ClientException {
      throw serverError;
    }
  }

  static Future<void> buyOddStock({String? code, num? price, int? share}) async {
    var putBody = {
      'num': code,
      'price': price,
      'share': share,
    };
    if (code == null) {
      throw 'code is empty';
    }

    if (price == null) {
      throw 'price is empty';
    }

    if (share == null) {
      throw 'share is empty';
    }
    try {
      final response = await _client.put(
        Uri.parse('$backendURLPrefix/trade/stock/buy/odd'),
        headers: {
          "Authorization": _apiToken,
        },
        body: jsonEncode(putBody),
      );
      final Map<String, dynamic> result = jsonDecode(response.body);
      if (response.statusCode == 200) {
        return;
      } else {
        throw result['code'] as int;
      }
    } on ClientException {
      throw serverError;
    }
  }

  static Future<void> sellOddStock({String? code, num? price, int? share}) async {
    var putBody = {
      'num': code,
      'price': price,
      'share': share,
    };
    if (code == null) {
      throw 'code is empty';
    }

    if (price == null) {
      throw 'price is empty';
    }

    if (share == null) {
      throw 'share is empty';
    }
    try {
      final response = await _client.put(
        Uri.parse('$backendURLPrefix/trade/stock/sell/odd'),
        headers: {
          "Authorization": _apiToken,
        },
        body: jsonEncode(putBody),
      );
      final Map<String, dynamic> result = jsonDecode(response.body);
      if (response.statusCode == 200) {
        return;
      } else {
        throw result['code'] as int;
      }
    } on ClientException {
      throw serverError;
    }
  }
}

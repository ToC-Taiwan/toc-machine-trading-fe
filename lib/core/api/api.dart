import 'dart:convert';
import 'dart:io';

import 'package:cronet_http/cronet_http.dart';
import 'package:cupertino_http/cupertino_http.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:toc_machine_trading_fe/features/balance/entity/entity.dart';
import 'package:toc_machine_trading_fe/features/balance/entity/position.dart';
import 'package:toc_machine_trading_fe/features/realtime/entity/snapshot.dart';
import 'package:toc_machine_trading_fe/features/realtime/entity/stock.dart';
import 'package:toc_machine_trading_fe/features/universal/entity/user.dart';

const String protocol = 'https';
const String wsProtocol = 'wss';
const String backendHost = 'tocraw.com';

// const String protocol = 'http';
// const String wsProtocol = 'ws';
// const String backendHost = 'localhost:26670';

const String backendURLPrefix = '$protocol://$backendHost/tmt/v1';

const String backendPickWSURLPrefix = '$wsProtocol://$backendHost/tmt/v1/stream/ws/pick-stock';
const String backendPickWSURLPrefixV2 = '$wsProtocol://$backendHost/tmt/v1/stream/ws/v2/pick-stock';

const String backendFutureWSURLPrefix = '$wsProtocol://$backendHost/tmt/v1/stream/ws/future';
const String backendTargetWSURLPrefix = '$wsProtocol://$backendHost/tmt/v1/targets/ws';
const String backendHistoryWSURLPrefix = '$wsProtocol://$backendHost/tmt/v1/history/ws';

abstract class API {
  static final client = httpClient();

  static String _apiToken = '';

  static Client httpClient() {
    if (Platform.isAndroid) {
      final engine = CronetEngine.build(
        cacheMode: CacheMode.memory,
        cacheMaxSize: 32 * 1024 * 1024,
      );
      return CronetClient.fromCronetEngine(engine);
    }
    if (Platform.isIOS) {
      final config = URLSessionConfiguration.ephemeralSessionConfiguration()..cache = URLCache.withCapacity(memoryCapacity: 32 * 1024 * 1024);
      return CupertinoClient.fromSessionConfiguration(config);
    }
    return IOClient();
  }

  static set setAuthKey(String token) {
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
    final response = await client.post(
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
  }

  static Future<void> refreshToken() async {
    final response = await client.get(
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
  }

  static Future<void> register(String userName, String password, String email) async {
    var registerBody = {
      'username': userName,
      'password': password,
      'email': email,
    };
    final response = await client.post(
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
  }

  static Future<void> sendToken(bool enabled, String pushToken) async {
    final response = await client.put(
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
  }

  static Future<bool> checkTokenStatus(String pushToken) async {
    final response = await client.get(
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
  }

  static Future<void> recalculateBalance(String date) async {
    final response = await client.put(
      Uri.parse('$backendURLPrefix/order/date/$date'),
      headers: {
        "Authorization": _apiToken,
      },
    );
    if (response.statusCode != 200) {
      final result = jsonDecode(response.body) as Map<String, dynamic>;
      throw result['code'] as int;
    }
  }

  static Future<void> moveOrderToLatestTradeday(String orderID) async {
    final response = await client.patch(
      Uri.parse('$backendURLPrefix/order/future/$orderID'),
      headers: {
        "Authorization": _apiToken,
      },
    );
    if (response.statusCode != 200) {
      final result = jsonDecode(response.body) as Map<String, dynamic>;
      throw result['code'] as int;
    }
  }

  static Future<List<Stock>> fetchStockDetail(List<String> codeList) async {
    if (codeList.isEmpty) {
      throw 'code is empty';
    }

    var putBody = {
      'stock_list': codeList,
    };
    final response = await client.put(
      Uri.parse('$backendURLPrefix/basic/stock'),
      headers: {
        "Authorization": _apiToken,
      },
      body: jsonEncode(putBody),
    );
    final result = jsonDecode(response.body) as Map<String, dynamic>;
    if (response.statusCode == 200) {
      final data = <Stock>[];
      for (final i in result["stock_detail"]) {
        data.add(Stock.fromJson(i as Map<String, dynamic>));
      }
      if (data.isEmpty) {
        throw 'no data';
      }
      return data;
    } else {
      throw result['code'] as int;
    }
  }

  static Future<Map<String, SnapShot>> fetchSnapshots(List<String> codeList) async {
    var putBody = {
      'stock_list': codeList,
    };

    final response = await client.put(
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
  }

  static Future<Balance> fetchBalance() async {
    final response = await client.get(
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
  }

  static Future<List<PositionStock>?> fetchPositionStock() async {
    final response = await client.get(
      Uri.parse('$backendURLPrefix/trade/inventory/stock'),
      headers: {
        "Authorization": _apiToken,
      },
    );
    final List<dynamic> result = jsonDecode(response.body);
    if (response.statusCode == 200) {
      List<PositionStock> data = [];
      for (final i in result) {
        data.add(PositionStock.fromJson(i as Map<String, dynamic>));
      }
      return data;
    } else {
      return null;
    }
  }

  static Future<UserInfo> fetchUserInfo() async {
    final response = await client.get(
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
  }
}

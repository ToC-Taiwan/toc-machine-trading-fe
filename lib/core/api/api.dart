import 'dart:convert';
import 'dart:io';

import 'package:cronet_http/cronet_http.dart';
import 'package:cupertino_http/cupertino_http.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';

const String protocol = 'https';
const String wsProtocol = 'wss';
const String backendHost = 'tocraw.com';

// const String protocol = 'http';
// const String wsProtocol = 'ws';
// const String backendHost = 'localhost:26670';

const String backendURLPrefix = '$protocol://$backendHost/tmt/v1';
const String backendPickWSURLPrefix = '$wsProtocol://$backendHost/tmt/v1/stream/ws/pick-stock';
const String backendPickWSURLPrefixV2 = '$wsProtocol://$backendHost/tmt/v1/stream/ws/pick-stock/v2';
const String backendFutureWSURLPrefix = '$wsProtocol://$backendHost/tmt/v1/stream/ws/future';

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
}

import 'dart:convert';
import 'dart:io';

import 'package:cronet_http/cronet_http.dart';
import 'package:cupertino_http/cupertino_http.dart';
import 'package:http/http.dart';
import 'package:http/io_client.dart';

const String twseBackendURLPrefix = 'https://openapi.twse.com.tw/v1';

abstract class TWSE {
  static final client = httpClient();

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

  static Future<List<TWSENews>> getTWSENews() async {
    final response = await client.get(
      Uri.parse('$twseBackendURLPrefix/news/newsList'),
    );
    if (response.statusCode != 200) {
      throw response.statusCode;
    }
    final data = jsonDecode(utf8.decode(response.bodyBytes)) as List<dynamic>;
    List<TWSENews> result = [];
    for (int i = 0; i < data.length; i++) {
      result.add(TWSENews.fromJson(data[i] as Map<String, dynamic>));
    }
    return result;
  }
}

class TWSENews {
  String? title;
  String? url;
  String? date;
  TWSENews({this.title, this.url, this.date});
  TWSENews.fromJson(Map<String, dynamic> json) {
    title = json['Title'];
    url = json['Url'];
    date = json['Date'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Title'] = title;
    data['Url'] = url;
    data['Date'] = date;
    return data;
  }
}

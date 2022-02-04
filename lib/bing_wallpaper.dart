library bing_wallpaper;

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BingWallpepar {
  Future<String> getWallpepar() async {
    final response = await http.get(Uri.parse(
        'https://bing.biturl.top/?resolution=3840&format=json&index=0&mkt=random'));
    final body = utf8.decode(response.bodyBytes);
    if (response.statusCode != 200) {
      debugPrint('response.body$body');
    }
    final json = jsonDecode(body) as Map<String, dynamic>;
    debugPrint('json$json');
    debugPrint(json['url']);
    final url = json['url'];
    return url;
  }
}

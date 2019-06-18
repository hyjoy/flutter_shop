import 'dart:io';

import 'package:dio/dio.dart';
import 'dart:async';

import 'package:flutter_shop/config/service_url.dart';

Future getHomePageContent() async {
  print('开始获取首页数据......');
  Dio dio = new Dio();
  dio.options.contentType = ContentType.parse('application/x-www-form-urlencoded');
  var query = {'lon': '115.075234375', 'lat':'35.776455078125'};
  var url = servicePath['getHomePageContent'];
  print(url);
  Response response = await dio.get(servicePath['getHomePageContent'], queryParameters: query);
  if (response.statusCode == 200) {
    return response.data;
  } else {
    throw Exception('后端接口出现异常，请检测代码和服务器情况');
  }
}
import 'dart:io';

import 'package:dio/dio.dart';
import 'dart:async';

import 'package:flutter_shop/config/service_url.dart';

Future getHomePageContent() async {
  Dio dio = new Dio();
  dio.options.contentType = ContentType.parse('application/x-www-form-urlencoded');
  var query = {'lon': '115.075234375', 'lat':'35.776455078125'};
  Response response = await dio.get(servicePath['getHomePageContent'], queryParameters: query);
  if (response.statusCode == 200) {
    return response.data;
  } else {
    throw Exception('后端接口出现异常，请检测代码和服务器情况');
  }
}

Future getHomePageBelowConten() async {
  Dio dio = new Dio();
  dio.options.contentType = ContentType.parse('application/x-www-form-urlencoded');
  var query = {'page': 1};
  Response response = await dio.get(servicePath['getHomePageBelowConten'], queryParameters: query);
  if (response.statusCode == 200) {
    return response.data;
  } else {
    throw Exception('后端接口出现异常，请检测代码和服务器情况...');
  }
}

Future request(url, {query}) async {
  Dio dio = new Dio();
  dio.options.contentType = ContentType.parse('applicaiton/x-www-form-urlencoded');
  
  Response response = await dio.get(servicePath[url], queryParameters: query);
  if (response.statusCode == 200) {
    return response.data;
  } else {
    throw Exception('后端接口出现异常，请检测代码和服务器情况...');
  }
}
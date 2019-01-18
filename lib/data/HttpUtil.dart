import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'dart:developer';

import '../bean/NewBean.dart';
import '../bean/Article.dart';

class HttpUtil {
  final String NETEAST_HOST = "c.m.163.com";

  // 头条
  final String HEADLINE_TYPE = "headline";
  final String HEADLINE_ID = "T1348647909107";
  final Dio dio = new Dio();

  var httpClient = new HttpClient();

  Future getNews(int startPage) {
    return getResponse(
            NETEAST_HOST,
            80,
            'nc/article/headline/T1348647909107/' +
                startPage.toString() +
                '-20.html')
        .then((data) {
      List articles = data['T1348647909107'];
//        for (var x in articles) {
//          print(x);
//        }
      return articles;
    });
  }

  Future getNewsDioDetail(String id) async {
    return getDioResponse(
        'http://' + NETEAST_HOST, '/nc/article/' + id + '/full.html');
  }

  Future getDioResponse(String host, String path) async {
    String url = host + path;
    debugPrint('requestUrl:$url');
    Response response = await dio.get(url);
    try {
      if (response.statusCode == HttpStatus.ok) {
        debugPrint('response:$response');
        return response.data;
      } else {
        return 'Error :\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      print(exception);
      return 'Error :\nHttp status ${exception.toString()}';
    }
  }

  Future getNewsDetail(String id) {
    return getResponse(NETEAST_HOST, 80, 'nc/article/' + id + '/full.html')
        .then((data) {
      var detail = data;
      return detail;
    });
  }

  Future getResponse(String host, int port, String path) async {
    var request = await httpClient.get(host, port, path);
    print(request.headers.toString());
    print(request.uri.toString());
    var response = await request.close();
    try {
      if (response.statusCode == HttpStatus.ok) {
        var json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json);
        return data;
      } else {
        return 'Error :\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      print(exception);
      return 'Error :\nHttp status ${exception.toString()}';
    }
  }
}

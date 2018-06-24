import 'dart:async';
import 'dart:convert';
import 'dart:io';
import '../bean/NewBean.dart';
import '../bean/Article.dart';

class HttpUtil {
  final String NETEAST_HOST = "c.m.163.com";

  // 头条
  final String HEADLINE_TYPE = "headline";
  final String HEADLINE_ID = "T1348647909107";

  Future getNews(int startPage) {
    return getResponse(
        NETEAST_HOST,
        80,
        'nc/article/headline/T1348647909107/' +
            startPage.toString() +
            '-20.html').then((data) {
      List articles = data['T1348647909107'];
//        for (var x in articles) {
//          print(x);
//        }
      return articles;
    });
  }

  Future getNewsDetail(String id) {
    return getResponse(
            NETEAST_HOST, 80, 'nc/article/' + id + '/full.html')
        .then((data) {
      var detail = data;
      return detail;
    });
  }

  Future getResponse(String host, int port, String path) async {
    var httpClient = new HttpClient();
    var request = await httpClient.get(host, port, path);
    print(request.headers.toString());
    print(request.uri.toString());
    var response = await request.close();
    try {
      if (response.statusCode == HttpStatus.OK) {
        var json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json);
        return data;
      } else {
        'Error :\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      print(exception);
      print(exception);
    }
  }
}

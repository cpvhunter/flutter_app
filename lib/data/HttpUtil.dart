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
    return getData(
        NETEAST_HOST,
        80,
        'nc/article/headline/T1348647909107/' +
            startPage.toString() +
            '-20.html');
  }

  Future<List> getData(String host, int port, String path) async {
    var httpClient = new HttpClient();
    var request = await httpClient.get(host, port, path);
    print(request.headers.toString());
    print(request.uri.toString());
    var response = await request.close();
    print(response.headers.toString());
    List result;
    try {
      if (response.statusCode == HttpStatus.OK) {
        var json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json);
        List articles = data['T1348647909107'];
//        for (var x in articles) {
//          print(x);
//        }
        result = articles;
      } else {
        'Error getting IP address:\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      print(exception);
      'Failed getting IP address';
    }
    return result;
  }
}

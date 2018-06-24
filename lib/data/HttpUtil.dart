import 'dart:async';
import 'dart:convert';
import 'dart:io';

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

  Future getData(String host, int port, String path) async {
    var httpClient = new HttpClient();
    var request = await httpClient.get(host, port, path);
    print(request.headers.toString());
    print(request.uri.toString());
    var response = await request.close();
    print(response.headers.toString());
    String result;
    try {
      if (response.statusCode == HttpStatus.OK) {
        var json = await response.transform(utf8.decoder).join();
        var data = jsonDecode(json);
        print(data);
        result = data['origin'];
      } else {
        result =
            'Error getting IP address:\nHttp status ${response.statusCode}';
      }
    } catch (exception) {
      result = 'Failed getting IP address';
    }
    return result;
  }
}

import 'package:flutter/material.dart';
import '../data/HttpUtil.dart' as Http;

class SampleAppPage extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    Http.HttpUtil news = new Http.HttpUtil();
    var data = news.getNews(0);
    print(data);
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sample App"),
      ),
      body: new ListView(children: _getListData()),
    );
  }

  _getListData() {
    List<Widget> widgets = [];
    for (int i = 0; i < 100; i++) {
      widgets.add(new Padding(
          padding: new EdgeInsets.all(10.0), child: new Text("Row $i")));
    }
    return widgets;
  }
}

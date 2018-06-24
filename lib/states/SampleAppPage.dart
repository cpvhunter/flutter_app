import 'package:flutter/material.dart';
import 'dart:isolate';
import '../data/HttpUtil.dart' as Http;

class SampleAppPage extends State<StatefulWidget> {
  List articles;

  @override
  void initState() {
    super.initState();
    var futurn = new Http.HttpUtil().getNews(0);
    futurn.then((value) {
      print(value);
      setState(() {
        articles = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("News App"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), onPressed: _loadData),
        ],
      ),
      body: getBody(),
    );
  }

  showLoadingDialog() {
    if (articles == null || articles.length == 0) {
      return true;
    }

    return false;
  }

  getBody() {
    if (showLoadingDialog()) {
      return getProgressDialog();
    } else {
      return getListView();
    }
  }

  getProgressDialog() {
    return new Center(child: new CircularProgressIndicator());
  }

  ListView getListView() => new ListView.builder(
      itemCount: articles.length,
      itemBuilder: (BuildContext context, int position) {
        return getContainer(position);
      });

  Widget getContainer(int i) {
    return new Container(
      child: getRow(i),
      margin: const EdgeInsets.all(8.0),
    );
  }

  Widget getRow(int i) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        new Expanded(
          flex: 2,
          child: getCloumn(i),
        ),
        new Expanded(
          child: new Image.network(
            "${articles[i]["imgsrc"]}",
            scale: 1.0,
            width: 200.0,
            height: 100.0,
          ),
        )
      ],
    );
  }

  Widget getCloumn(int i) {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
//      mainAxisAlignment: MainAxisAlignment.start,
//      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
          new Text(
            "${articles[i]["title"]}",
            maxLines: 2,
            textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 18.0, color: Colors.black),
          ),
          new Text(
            "${articles[i]["source"]}",
            maxLines: 2,
            textAlign: TextAlign.left,
            style: new TextStyle(fontSize: 12.0, color: Colors.black87),
          ),
      ],
    );
  }

//

  void _loadData() {}
}

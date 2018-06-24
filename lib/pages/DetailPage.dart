import 'package:flutter/material.dart';
import '../states/SampleAppPage.dart' as SampleAppPage;
import '../data/HttpUtil.dart' as Http;

class DetailPage extends StatefulWidget {
  final String appBarTitle;
  final String id;

  DetailPage(this.appBarTitle, this.id);

  @override
  DetailState createState() {
    return new DetailState(appBarTitle,id);
  }
}

class DetailState extends State<StatefulWidget> {

  final String appBarTitle;
  final String id;
  var detail;
  String body;
  List imgs;
  DetailState(this.appBarTitle, this.id);

  @override
  void initState() {
    super.initState();
    var futurn = new Http.HttpUtil().getNewsDetail(this.id);
    futurn.then((value) {
      setState(() {
        detail = value[this.id];
        body = detail['body'];
        imgs = detail['img'];

        print(detail);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title:new Text(appBarTitle,style: new TextStyle(fontSize: 16.0),maxLines: 2,),
      ),
      body: getListView(),
    );
  }


  ListView getListView() => new ListView.builder(
      itemCount: imgs.length+1,
      itemBuilder: (BuildContext context, int position) {
        return getContainer(position);
      });


  Widget getContainer(int i) {

    return new Container(
      child: new GestureDetector(
        child: getCloumn(i),
        onTap: (){

        },
      ),
      margin: const EdgeInsets.all(8.0),

    );
  }


  Widget getCloumn(int i) {
    if (i == imgs.length-1) {
      return new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Text.rich(new TextSpan(text: body)),
        ],
      );
    } else {
      return new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Image.network(imgs[i]['src']),
        ],
      );
    }
  }


}

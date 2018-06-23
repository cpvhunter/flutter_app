import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print("detail");
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("detail"),
      ),
      body: new Center(
        child: new RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: new Text("back"),
        ),
      ),
    );
  }

  Detail(){
    print("detail");
  }


}

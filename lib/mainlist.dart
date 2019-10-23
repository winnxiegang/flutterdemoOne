import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.amber),
      home: Scaffold(
        appBar: AppBar(
          title: Text("listview动态列表"),
          centerTitle: true,
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _getData(),
    );
  }
}

List<Widget> _getData() {
//  return [
//    ListTile(
//      title: Text("我是一个1列表"),
//    ),
//    ListTile(
//      title: Text("我是一个2列表"),
//    ),
//    ListTile(
//      title: Text("我是一个3列表"),
//    ),
//    ListTile(
//      title: Text("我是一个4列表"),
//    )
//  ];
  List<Widget> list = new List();
  for (var i = 0; i < 20; i++) {
    list.add(ListTile(
      title: Text("我是第$i列表"),
    ));
  }
  return list;
}

class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(16, 8, 16, 8),
          width: 675,
          height: 48,
          color: Colors.black12,
          child: ListTile(
            title: Text(
              "我是一个列表",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
        ),
        ListTile(
          title: Text("我是一个列表"),
        ),
        ListTile(
          title: Text("我是一个列表"),
        ),
        ListTile(
          title: Text("我是一个列表"),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import 'res/listData.dart';

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
      children: _getNetData(),
    );
  }
}

List<Widget> _getData() {
  List<Widget> list = new List();
  for (var i = 0; i < 20; i++) {
    list.add(ListTile(
      title: Text("我是第$i列表"),
    ));
  }
  return list;
}

List<Widget> _getNetData() {
  var temp = listData.map((value) {
    return ListTile(
      leading: Image.network(value['imageUrl']),
      title: Text(value['title']),
      subtitle: Text(value['author']),
    );
  });
  var tempList = listData.map((value) {
    return ListTile(
      leading: Image.network(value['imageUrl']),
      title: Text(value['title']),
      subtitle: Text(value['author']),
    );
  });
  return tempList.toList();
}

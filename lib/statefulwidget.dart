import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('StatefulWidget有状态组件2442'),
        ),
        body: HomeContact(),
      ),
    );
  }
}

class HomeContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'StatefulWidget有状态组件 、页面上绑定数据、改变页面数据 、实现计数器功能',
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

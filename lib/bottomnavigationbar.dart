import 'package:flutter/material.dart';
import 'pages/maintabs/tabs.dart';
void main() {
  runApp(MyApp());
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
          title: Text('BottomNavigationBar自定义底部导航条以及实现页面切换'),
        ),
        body: HomeContact(),
      ),
    );
  }
}

class HomeContact extends StatelessWidget {
  int currentInde = 0;

  @override
  Widget build(BuildContext context) {
    return Tabs();
  }
}


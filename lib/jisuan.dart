import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("数据的动态更新"),
          centerTitle: true,
        ),
        body: _HomePage(),
      ),
    ),
  );
}

/**
 * 无状态组件StatelessWidget
 */
class HomeContant extends StatelessWidget {
  int countNUm = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Text("${countNUm}"),
        SizedBox(
          height: 20,
        ),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            countNUm++;
          },
        )
      ],
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  int countNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Chip(
          label: Text("你好${countNumber}"),
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            setState(() {
              //只有状态StatefulWidget组的才可以使用
              countNumber++;
            });
          },
        )
      ],
    );
  }
}

class _HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  List list = new List();
  int onPressedCount = 1;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Column(
          children: this.list.map((valus) {
            return ListTile(
              title: Text(valus),
            );
          }).toList(),
        ),
        SizedBox(
          height: 10,
        ),
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            setState(() {
              onPressedCount++;
              this.list.add("新增数据${onPressedCount}");
            });
          },
        )
      ],
    );
  }
}

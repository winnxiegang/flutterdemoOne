import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('页面布局 Wrap组件'),
          centerTitle: true,
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 600,
      child: ListView(
        children: <Widget>[
          Text(
            "Wrap组件类似于流布局",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  MyButton("第1个item"),
                  MyButton("第2个item"),
                  MyButton("第3个item"),
                  MyButton("第4个item"),
                  MyButton("第5个item"),
                  MyButton("第6个item"),
                  MyButton("第7个item"),
                ],
              ),
              Wrap(
                alignment: WrapAlignment.start,
                spacing: 10, // 水平排列的间隙
                runSpacing: 40, // 垂直排列的间隙
                children: <Widget>[
                  MyButton("Wrap第1个item"),
                  MyButton("Wrap第2个item"),
                  MyButton("Wrap第3个item"),
                  MyButton("Wrap第4个item"),
                  MyButton("Wrap第5个item"),
                  MyButton("Wrap第6个item"),
                  MyButton("Wrap第7个item"),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  String ButtonText;

  MyButton(this.ButtonText);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        ButtonText,
        style: TextStyle(
          fontSize: 16,
          color: Colors.red,
        ),
      ),
      onPressed: () {},
    );
  }
}

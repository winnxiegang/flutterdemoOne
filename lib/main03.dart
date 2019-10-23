import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      home: Scaffold(
          appBar: AppBar(title: Text("测试代码3"), centerTitle: true),
          body: HomeContent()),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        //包含子类
        width: 300,
        height: 300,
        padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        alignment: Alignment.bottomRight,
        decoration: BoxDecoration(
          //容器背景和边框颜色
          color: Colors.yellow,
          border: Border.all(
            color: Colors.blue,
            width: 2,
          ),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Text(
          "主界面HomeContent,学习者得永生，助教老师大地",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontStyle: FontStyle.italic,
              //是否倾斜
              decoration: TextDecoration.lineThrough,
              decorationColor: Colors.red),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          //最大几行
          textScaleFactor: 1, //放大倍数
        ),

      ),
    );
  }
}

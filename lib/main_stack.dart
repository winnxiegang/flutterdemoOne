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
          title: Text("Stack的使用问题"),
          centerTitle: true,
        ),
        body: HomeContent(),
      ),
    );
  }
}

/**
 * Column 垂直布局的可控子view
 */
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
      color: Colors.red,
      /**
       * Stack 表示把里面的元素堆在一起
       * alignment 控制里面所有元素的位置
       * Stack 配合 Positioned 可实现  this.left,
          this.top,
          this.right,
          this.bottom,
          this.width,
          this.height, 的控件显示位置
          Stack 配合 Align  alignment = Alignment.center可实现子空间显示 在主控件方位位置
       */
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            left: 10,
            top: 10,
            child: Align(
              alignment: Alignment.topCenter,
              child: Icon(Icons.home, color: Colors.yellow, size: 30),
            ),
          ),
          Positioned(
            left: 10,
            top: 50,
            child: Icon(Icons.home, color: Colors.yellow, size: 30),
          ),
          Align(
            alignment: Alignment.center,
            child: Icon(Icons.apps, color: Colors.black, size: 30),
          ),
          Positioned(
            left: 16,
            bottom: 16,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Icon(Icons.add, color: Colors.blue, size: 30),
            ),
          )
        ],
      ),
    );
  }
}

class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      /**
       * Stack 表示把里面的元素堆在一起
       * alignment 里面所有元素的位置
       */
      child: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              height: 400,
              width: 300,
              color: Colors.red,
            ),
            Text(
              "我是一个文本",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}

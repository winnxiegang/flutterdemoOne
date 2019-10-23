import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red),
      home: Scaffold(
        body: HomeContent(),
        appBar: AppBar(
          title: Text("打印界面列表"),
          centerTitle: true,
        ),
      ),
    );
  }
}

/**
 * recycleview的item项
 */
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 675,
      height: 48,
      margin: EdgeInsets.all(16),
      // color: Colors.yellow,
      decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.all(Radius.circular(5)),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 2,
            )
          ]),

      child: Center(
        child: Text(
          "recycleviewitem项",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    );
  }
}

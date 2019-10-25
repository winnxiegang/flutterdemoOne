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
        body: HomeContent3(),
        appBar: AppBar(
          title: Text("图片实现圆形"),
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
    return Center(
      child: Container(
        width: 300,
        height: 300,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.all(Radius.circular(150)),
          image: DecorationImage(
              image: NetworkImage(
                  "https://b-ssl.duitang.com/uploads/blog/201312/04/20131204184148_hhXUT.jpeg"),
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}

class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ClipOval(
          child: Image.network(
            ""
                "",
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

class HomeContent3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.asset('images/iv.png'),
        width: 100,
        height: 100,
      ),
    );
  }
}

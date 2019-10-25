import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

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
          title: Text("标题"),
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
    return Container();
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(16),
      children: <Widget>[
        Container(
          width: 200,
          height: 100,
          color: Colors.red,
          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: ListView(
            scrollDirection: Axis.vertical, //容器里垂直排列 ，可修改
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            children: <Widget>[
              Text(
                '我是一个文本',
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              Image.network(
                  "https://b-ssl.duitang.com/uploads/blog/201312/04/20131204184148_hhXUT.jpeg"),
            ],
          ),
        ),
        Container(
          width: 200,
          height: 100,
          color: Colors.black,
          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
        ),
        Container(
          width: 200,
          height: 100,
          color: Colors.blue,
          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
        )
      ],
    );
  }
}

class HomeContent3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: <Widget>[
        //组件 可放 content image 等等
        Container(
          width: 300,
          height: 300,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            // 装饰器，可以用来修饰其他的组件，和Android里面的shape很相似
            color: Colors.yellow,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            image: DecorationImage(
                image: NetworkImage(
                    "https://b-ssl.duitang.com/uploads/blog/201312/04/20131204184148_hhXUT.jpeg"),
                fit: BoxFit.cover),
          ),
          child: Text(
            "我是Container容器的第二个孩子",
            textDirection: TextDirection.rtl,
            style: TextStyle(color: Colors.red, fontSize: 18),
          ),
        ),
        Container(
          child: Text(
            "我是文本TextAlign控制显示位置",
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.red,
              fontSize: 16,
            ),
          ),
          height: 40,
        ),
        Image.network(
            "https://b-ssl.duitang.com/uploads/blog/201312/04/20131204184148_hhXUT.jpeg"),
        Container(
          child: Text(
            "我是文本TextAlign控制显示位置",
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.red,
              fontSize: 16,
            ),
          ),
          height: 40,
        ),
        Image.network(
            "https://b-ssl.duitang.com/uploads/blog/201312/04/20131204184148_hhXUT.jpeg"),
        Container(
          child: Text(
            "我是文本TextAlign控制显示位置",
            textAlign: TextAlign.center,
            textDirection: TextDirection.ltr,
            style: TextStyle(
              color: Colors.red,
              fontSize: 16,
            ),
          ),
          height: 40,
        ),
        Image.network(
            "https://b-ssl.duitang.com/uploads/blog/201312/04/20131204184148_hhXUT.jpeg"),
      ],
    );
  }
}

class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(12),
      children: <Widget>[
        ListTile(
          leading: Image.network(
              "https://b-ssl.duitang.com/uploads/blog/201312/04/20131204184148_hhXUT.jpeg"),
          //图标
          title: Text(
            "普通列表标题",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            "《我和我的祖国》是由陈凯歌担任总导演，张一白、管虎、薛晓路、徐峥、宁浩、文牧野联合执导，领衔主演",
            style: TextStyle(
              color: Colors.black38,
              fontSize: 15,
            ),
          ),
          trailing: Icon(Icons.work),
        ),
        ListTile(
          title: Text(
            "普通列表标题",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            "《我和我的祖国》是由陈凯歌担任总导演，张一白、管虎、薛晓路、徐峥、宁浩、文牧野联合执导，领衔主演",
            style: TextStyle(
              color: Colors.black38,
              fontSize: 15,
            ),
          ),
        ),
        ListTile(
          title: Text(
            "普通列表标题",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            "《我和我的祖国》是由陈凯歌担任总导演，张一白、管虎、薛晓路、徐峥、宁浩、文牧野联合执导，领衔主演",
            style: TextStyle(
              color: Colors.black38,
              fontSize: 15,
            ),
          ),
        ),
        ListTile(
          title: Text(
            "普通列表标题",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
            ),
          ),
          subtitle: Text(
            "《我和我的祖国》是由陈凯歌担任总导演，张一白、管虎、薛晓路、徐峥、宁浩、文牧野联合执导，领衔主演",
            style: TextStyle(
              color: Colors.black38,
              fontSize: 15,
            ),
          ),
        )
      ],
    );
  }
}

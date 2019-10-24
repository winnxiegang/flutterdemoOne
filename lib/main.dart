import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
          title: Text("动态加载网络数据"),
          centerTitle: true,
        ),
        body: HomeContent(),
      ),
    );
  }
}

/**
 * 动态加载网络数据
 */
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listData.map((valus) {
        return Card(
          margin: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              AspectRatio(
                /**aspectRatio 控制图片宽高比例
                 * ClipRRect  控制实现图片圆角
                 *
                 */
                aspectRatio: 19 / 9,
                child: Container(
                  child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0)),
                      child: Image.network(
                        valus["imageUrl"],
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              ListTile(
                // onTap: ,
                onTap: toggleSelection,
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(valus["imageUrl"]),
                ),
                title: Text(
                  valus["author"],
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  valus["title"],
                  style: TextStyle(color: Colors.black, fontSize: 12),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}

void toggleSelection() {
  Fluttertoast.showToast(
      msg: "ListView中的ListTile每一项点击事件",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      backgroundColor: Colors.black12,
      textColor: Colors.redAccent);
}

class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(16),
            child: Column(
              children: <Widget>[
                AspectRatio(
                  /**aspectRatio 控制图片宽高比例
                   * ClipRRect  控制实现图片圆角
                   *
                   */
                  aspectRatio: 19 / 9,
                  child: Container(
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0)),
                        child: Image.network(
                          "https://b-ssl.duitang.com/uploads/blog/201312/04/20131204184148_hhXUT.jpeg",
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://b-ssl.duitang.com/uploads/blog/201312/04/20131204184148_hhXUT.jpeg"),
                  ),
                  title: Text(
                    "一级标题",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  subtitle: Text(
                    "二级标题",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

/**
 * Column 垂直布局的可控子view
 */
class HomeContent3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(5),
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text(
                    "111",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  subtitle: Text(
                    "22",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

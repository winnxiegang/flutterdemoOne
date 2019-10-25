import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  SettingPageState createState() => new SettingPageState();
}

class SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: Text("我是一个设置文本"),
            subtitle: Text("文本内容"),
          ),
          ListTile(
            title: Text("我是一个设置文本"),
            subtitle: Text("文本内容"),
          )
        ],
      ),
    ));
  }
}

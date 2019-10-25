import 'package:flutter/material.dart';
import 'setting.dart';
import 'home.dart';
import 'category.dart';

class Tabs extends StatefulWidget {
  @override
  TabsState createState() => new TabsState();
}

class TabsState extends State<Tabs> {
  int countIndex = 0;
  List _pageList = [
    HomePage(),
    Category(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Scaffold(
          body: _pageList[countIndex],
          bottomNavigationBar: BottomNavigationBar(
            /**BottomNavigationBarType 底部标签
             * type 多个自动适配宽度
             * iconSize 图片大小
             * currentIndex 当前位置
             *  setState 数据刷新控件
             */

            iconSize: 26,
            type: BottomNavigationBarType.fixed,
            currentIndex: countIndex,
            //默认位置
            onTap: (int index) {
              setState(() {
                countIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("首页"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                title: Text("分类"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("设置"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

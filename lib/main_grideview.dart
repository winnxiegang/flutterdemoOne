import 'package:flutter/material.dart';

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
          title: Text("Grideview动态列表"),
          centerTitle: true,
        ),
        body: HomeContent(),
      ),
    );
  }
}
/**
 * grideview  GridView.builder模式 初始化数据
 */
class HomeContent extends StatelessWidget {
  Widget getListData(context, index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(
          color: Colors.black12,
          width: 1,
        ),
      ),
      //垂直布局
      child: Column(
        children: <Widget>[
          Image.network(
            listData[index]['imageUrl'],
            fit: BoxFit.cover,
          ),
          /**
           * SizedBox 可实现控件间距
           */
          SizedBox(height: 10),
          Text(
            listData[index]['title'],
            style: TextStyle(
              color: Colors.red,
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: listData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //列数 必须填
        crossAxisCount: 2,
        //左右item间距
        crossAxisSpacing: 10,
        //上下item间距
        mainAxisSpacing: 10,
      ),
      itemBuilder: getListData,
    );
  }
}
/**
 * grideview 模式 初始化数据
 */
class HomeContent2 extends StatelessWidget {
  List<Widget> getListData() {
    var tempList = listData.map((value) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          border: Border.all(
            color: Colors.black12,
            width: 1,
          ),
        ),
        //垂直布局
        child: Column(
          children: <Widget>[
            Image.network(
              value['imageUrl'],
              fit: BoxFit.cover,
            ),
            /**
             * SizedBox 可实现控件间距
             */
            SizedBox(height: 10),
            Text(
              value['title'],
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            )
          ],
        ),
      );
    });
    return tempList.toList();
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //列数 必须填
      crossAxisCount: 2,
      //左右item间距
      crossAxisSpacing: 10,
      //上下item间距
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      children: getListData(),
    );
  }
}

class HomeContent3 extends StatelessWidget {
  List<Widget> getListData() {
    List<Widget> list = new List();

    for (var i = 0; i < 6; i++) {
      list.add(Container(
        /**
         * 子控件排列位置 类似于linerlayout relayout 布局
         * 子控件padding
         */
        alignment: Alignment.center,
        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
        /**
         * /修改子控件圆角 如果使用BoxDecoration控件则
         *  Container 里的color: Colors.black12, 不能使用 必须在BoxDecoration里使用
         */
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.black12,
        ),
        child: Text("一个grideviewItem",
            style: TextStyle(color: Colors.black, fontSize: 16)),
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      //列数 必须填
      crossAxisCount: 2,
      //左右item间距
      crossAxisSpacing: 10,
      //上下item间距
      mainAxisSpacing: 10,
      padding: EdgeInsets.all(10),
      children: getListData(),
    );
  }
}

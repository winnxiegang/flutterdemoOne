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
          title: Text("Grideview动态列表"),
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
    /**
     * Row 水平布局的可控子view
     * mainAxisAlignment 水平布局排列顺序
     * crossAxisAlignment  属于主布局展示位置
     * Expanded 配合row 进行类似权重的设置
     */
    return Container(
      margin: EdgeInsets.all(16),
      /**
       * 先垂直布局
       */
      child: Column(
        children: <Widget>[
          Container(
            /**
             * 子控件摆放位置
             */
            alignment: Alignment.center,
            height: 60,
            width: 675,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(5))),
            child: Text(
              "我是布局的第一个",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ),
          /**
           * 横向布局
           */
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  /**
                   * 子控件摆放位置
                   */
                  alignment: Alignment.center,
                  height: 60,
                  margin: EdgeInsets.fromLTRB(0, 16, 8, 0),
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text(
                    "我是布局的第二个",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  /**
                   * 子控件摆放位置
                   */
                  alignment: Alignment.center,
                  height: 60,
                  margin: EdgeInsets.fromLTRB(8, 16, 0, 0),
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text(
                    "我是布局的第三个",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

/**
 * Column 垂直布局的可控子view
 */
class HomeContent5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * Row 水平布局的可控子view
     * mainAxisAlignment 水平布局排列顺序
     * crossAxisAlignment  属于主布局展示位置
     * Expanded 配合row 进行类似权重的设置
     */
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              color: Colors.black12,
            ),
            child: Text(
              "我是第一行数据",
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  height: 180,
                  child: IconContainer(Icons.home),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                flex: 1,
                child: Container(
                  height: 180,
                  child: ListView(
                    children: <Widget>[
                      Container(
                        height: 90,
                        child: IconContainer(Icons.apps),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 90,
                        child: IconContainer(Icons.apps),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

/**
 * Column 垂直布局的可控子view
 */
class HomeContent4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * Row 水平布局的可控子view
     * mainAxisAlignment 水平布局排列顺序
     * crossAxisAlignment  属于主布局展示位置
     * Expanded 配合row 进行类似权重的设置
     */
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: IconContainer(Icons.home),
        ),
        Expanded(
          flex: 1,
          child: IconContainer(Icons.add),
        ),
        Expanded(
          flex: 1,
          child: IconContainer(Icons.search, color: Colors.red),
        )
      ],
    );
  }
}

/**
 * Column 垂直布局的可控子view
 */
class HomeContent2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /**
     * Row 水平布局的可控子view
     * mainAxisAlignment 水平布局排列顺序
     */
    return Container(
      width: 400,
      height: 675,
      margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          IconContainer(
            Icons.map,
            size: 15,
            color: Colors.blue,
          ),
          IconContainer(Icons.home),
          IconContainer(Icons.search)
        ],
      ),
    );
  }
}

class IconContainer extends StatelessWidget {
  double size = 22;
  Color color = Colors.white;
  IconData icon;

  /**
   * 自定义按钮组件
   *  {this.size, this.color} 表示可不传的
   */
  IconContainer(this.icon, {this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.black12,
      child: Center(
        child: Icon(this.icon, size: this.size, color: this.color),
      ),
    );
  }
}

/**
 * grideview
 */
class HomeContent3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, //列数
      childAspectRatio: 1.7, //宽// 高比例
      padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
      children: <Widget>[
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: FadeInImage.assetNetwork(
              placeholder: "images/iv.png",
              image:
                  "https://b-ssl.duitang.com/uploads/blog/201312/04/20131204184148_hhXUT.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        ),
        Padding(
          child: Image.network(
            "https://b-ssl.duitang.com/uploads/blog/201312/04/20131204184148_hhXUT.jpeg",
            fit: BoxFit.cover,
          ),
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        ),
        Padding(
          child: Image.network(
            "https://b-ssl.duitang.com/uploads/blog/201312/04/20131204184148_hhXUT.jpeg",
            fit: BoxFit.cover,
          ),
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
        ),
      ],
    );
  }
}

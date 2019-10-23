import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/**
 * 自定义组件 类似于继承类 实现类
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      /**可放数据
       * home（主页）
          title（标题）
          color（颜色）
          theme（主题）
          routes（路由
       *  this.navigatorKey,
          this.home,
          this.routes = const <String, WidgetBuilder>{},
          this.initialRoute,
          this.onGenerateRoute,
          this.onUnknownRoute,
          this.navigatorObservers = const <NavigatorObserver>[],
          this.builder,
          this.title = '',
          this.onGenerateTitle,
          this.color,
          this.theme,
          this.darkTheme,
          this.locale,
       */
      home: Scaffold(
        /**可放数据
         *  this.appBar,
            this.body,
            this.floatingActionButton,
            this.floatingActionButtonLocation,
            this.floatingActionButtonAnimator,
            this.persistentFooterButtons,
            this.drawer,
            this.endDrawer,
            this.bottomNavigationBar,
            this.bottomSheet,
            this.backgroundColor,
            this.resizeToAvoidBottomPadding,
            this.resizeToAvoidBottomInset,
            this.primary = true,
            this.drawerDragStartBehavior = DragStartBehavior.start,
            this.extendBody = false,
         */
        appBar:
            AppBar(title: Text("appBar标题"), centerTitle: true, elevation: 0),
        body: HomeContent(),
        primary: true, //是否标题留上下空白
      ),
      theme: ThemeData(primaryColor: Colors.red),
    );
  }
}

//自定义主界面组件
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      //创建新控件可省略 new单词 Center
      child: Text('你好flutter自行测试HomeContent',
          textDirection: TextDirection.ltr, //字体类型 从左边到右边
          style: TextStyle(color: Colors.black, fontSize: 15) //字体类型 黄色 字体大小15
          ),
    );
  }
}

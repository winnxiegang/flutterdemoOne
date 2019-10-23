import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/**
 * 自定义组件 类似于继承类 实现类
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      //创建新控件可省略 new单词 Center
      child: Text(
        '你好flutter自行测试',
        textDirection: TextDirection.ltr,//字体类型 从左边到右边
        style: TextStyle(color: Colors.yellow, fontSize: 15)//字体类型 黄色 字体大小15
      ),
    );
  }
}

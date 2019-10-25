import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  CategoryState createState() => new CategoryState();
}

class CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("我是分类界面"),
      ),
    );
  }
}

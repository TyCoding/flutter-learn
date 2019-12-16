import 'package:chapter03/page/button_page.dart';
import 'package:chapter03/page/checkbox_page.dart';
import 'package:chapter03/page/form_page.dart';
import 'package:chapter03/page/image_page.dart';
import 'package:chapter03/page/progress_page.dart';
import 'package:chapter03/page/text_page.dart';
import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold 是Material库提供的基础页面脚手架
    return new Scaffold(
      // 页面顶栏显示的名称
      appBar: new AppBar(
        title: new Text('Flutter Chapter02 Learning'),
      ),

      // 页面body，Center组件用于将其子组件居中显示
      body: new Center(
          child: new Padding(
        padding: EdgeInsets.all(18),
        // Column组件是将其所有子组件沿屏幕垂直方向依次排列
        child: new ListView(
          children: <Widget>[
            RaisedButton(
              child: new Text('文本及样式'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new TextPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('按钮'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new ButtonPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('图片及ICON'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new ImagePage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('单选框和复选框'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new CheckboxPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('输入框和表单'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new FormPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('进度指示器'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new ProgressPage();
                }));
              },
            ),
          ],
        ),
      )),
    );
  }
}

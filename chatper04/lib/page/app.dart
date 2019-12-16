import 'package:chatper04/page/align_page.dart';
import 'package:chatper04/page/row_page.dart';
import 'package:chatper04/page/flex_page.dart';
import 'package:chatper04/page/stack_page.dart';
import 'package:chatper04/page/wrap_page.dart';
import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold 是Material库提供的基础页面脚手架
    return new Scaffold(
      // 页面顶栏显示的名称
      appBar: new AppBar(
        title: new Text('Flutter Chapter04 Learning'),
      ),

      // 页面body，Center组件用于将其子组件居中显示
      body: new Center(
          child: new Padding(
        padding: EdgeInsets.all(18),
        // Column组件是将其所有子组件沿屏幕垂直方向依次排列
        child: new ListView(
          children: <Widget>[
            RaisedButton(
              child: new Text('线性布局：Column、Row'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new RowPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('弹性布局：Flex'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new FlexPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('流式布局：Wrap、Flow'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new WrapPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('层叠布局：Stack、Positioned'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new StackPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('对齐和相对定位：Align'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new AlignPage();
                }));
              },
            ),
          ],
        ),
      )),
    );
  }
}

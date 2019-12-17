import 'package:chapter05/page/bar/bar_page.dart';
import 'package:chapter05/page/clip_page.dart';
import 'package:chapter05/page/constrainedbox_page.dart';
import 'package:chapter05/page/container_page.dart';
import 'package:chapter05/page/decoratedbox_page.dart';
import 'package:chapter05/page/padding_page.dart';
import 'package:chapter05/page/transform_page.dart';
import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold 是Material库提供的基础页面脚手架
    return new Scaffold(
      // 页面顶栏显示的名称
      appBar: new AppBar(
        title: new Text('Flutter Chapter05 Learning'),
      ),

      // 页面body，Center组件用于将其子组件居中显示
      body: new Center(
          child: new Padding(
        padding: EdgeInsets.all(18),
        // Column组件是将其所有子组件沿屏幕垂直方向依次排列
        child: new ListView(
          children: <Widget>[
            RaisedButton(
              child: new Text('填充 Padding'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new PaddingPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('尺寸限制类容器'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new ConstrainedBoxPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('装饰容器 DecoratedBox'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new DecoratedBoxPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('变换 Transform'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new TransformPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('Contriner容器'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new ContainerPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('Scaffold、导航'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new BarPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('裁剪 Clip'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new ClipPage();
                }));
              },
            ),
          ],
        ),
      )),
    );
  }
}

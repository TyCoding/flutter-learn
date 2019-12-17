import 'package:chapter06/page/custom_scroll_view_page.dart';
import 'package:chapter06/page/graidview/grid_view_page.dart';
import 'package:chapter06/page/listview/list_view_page.dart';
import 'package:chapter06/page/scroll_controller_page.dart';
import 'package:chapter06/page/single_child_scroll_view_page.dart';
import 'package:flutter/material.dart';

class AppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold 是Material库提供的基础页面脚手架
    return new Scaffold(
      // 页面顶栏显示的名称
      appBar: new AppBar(
        title: new Text('Flutter Chapter06 Learning'),
      ),

      // 页面body，Center组件用于将其子组件居中显示
      body: new Center(
          child: new Padding(
        padding: EdgeInsets.all(18),
        // Column组件是将其所有子组件沿屏幕垂直方向依次排列
        child: new ListView(
          children: <Widget>[
            RaisedButton(
              child: new Text('SingleChildScrollView'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new SingleChildScrollViewPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('ListView'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new ListViewPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('GridView'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new GridViewPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('CustomScrollView'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new CustomScrollViewPage();
                }));
              },
            ),
            RaisedButton(
              child: new Text('滚动监听及控制'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new ScrollControllerPage();
                }));
              },
            ),
          ],
        ),
      )),
    );
  }
}

import 'package:chapter02/page/assets-page.dart';
import 'package:chapter02/page/counter-page.dart';
import 'package:chapter02/page/route-base-page.dart';
import 'package:chapter02/page/route-value-page.dart';
import 'package:flutter/material.dart';

// 应用首页
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
        child: new Column(
          children: <Widget>[
            RaisedButton(
              child: new Text('计数器实例'),
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new CounterPage();
                }))
              },
            ),
            RaisedButton(
              child: new Text('基础路由实例'),
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new RouteBasePage();
                }))
              },
            ),
            RaisedButton(
              child: new Text('路由传值实例'),
              onPressed: () async {
                // async ... await 异步，等待push()执行完毕（页面携带返回值跳转完毕），才print
                var result = await Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return new RouteValuePage();
                }));
                print('路由传值实例返回值: $result');
              },
            ),
            RaisedButton(
              child: new Text('路由表实例'),
              onPressed: () => {
                // 打开路由时传递参数
                Navigator.of(context).pushNamed('route_table_page', arguments: '111'),
              },
            ),
            RaisedButton(
              child: new Text('静态资源管理实例'),
              onPressed: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new AssetsPage();
                }))
              },
            ),
          ],
        ),
      )),
    );
  }
}

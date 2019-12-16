import 'package:chapter02/page/route-base-page.dart';
import 'package:flutter/material.dart';
import 'package:chapter02/page/app-page.dart';
import 'package:chapter02/page/route-table-page.dart';

// 应用入口
// `void runApp(Widget app){}` 启启动Flutter应用
void main() => runApp(MyApp());

// 主应用程序结构
// StatelessWidget 表示他是一个无状态的组件（在生命周期中不可变）
class MyApp extends StatelessWidget {
  // Flutter中大多东西都以widget(组件、部件)形式提供
  // 而每个widget都有一个build()方法，用于描述如何构建UI界面
  @override
  Widget build(BuildContext context) {
    // MaterialApp是Material组件库提供的一个Flutter APP框架
    return MaterialApp(
      // Flutter应用名称
      title: 'Flutter Chapter02 Learning',

      // Flutter应用主题
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // 定义首页路由
      initialRoute: '/',

      // 注册路由表（命名路由）：按照指定的路由名称打开路由
      routes: {
        // 使用命名路由的方式路由首页
        '/': (context) => AppPage(),
        'route_table_page': (context) => RouteTablePage(),
      },

      // 路由生成钩子的实例
      // 实现对`命名路由`的全局拦截处理（页面权限控制）
      // 注意：`onGenerateRoute`仅在打开命名路由时`可能`会被调用，
      //      若路由在命名表中没有注册，会调用；反之会直接调用builder渲染
//      onGenerateRoute: (RouteSettings setting) {
//        return MaterialPageRoute(builder: (context) {
//          String routeName = setting.name;
//          print('路由名称： $routeName');
//          if (routeName == "route_table_page") {
//            return new RouteTablePage();
//          }
//          return new RouteTablePage();
//        });
//      },

      // Flutter应用首页
//        home: AppPage()
    );
  }
}

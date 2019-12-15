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
//      initialRoute: '/',

        // 注册路由表（命名路由）：按照指定的路由名称打开路由
//        routes: {
//          // 使用命名路由的方式路由首页
////        '/': (context) => MyHomePage(title: 'Flutter Demo Home Page'),
//          'route_table_page': (context) => RouteTableTest(),
//        },

        // Flutter应用首页
        home: AppPage());
  }
}

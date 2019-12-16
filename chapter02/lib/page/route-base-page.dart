import 'package:flutter/material.dart';

// 基础路由
class RouteBasePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Router Base Page'),
      ),
      body: Center(
        child: Text('This is router base page'),
      ),
    );
  }

}
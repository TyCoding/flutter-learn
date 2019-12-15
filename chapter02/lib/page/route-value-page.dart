import 'package:flutter/material.dart';

// 路由传值页面
class RouteValuePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route Value Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () => Navigator.pop(context, '我是返回值'),
              child: Text('返回'),
            )
          ],
        ),
      ),
    );
  }
}
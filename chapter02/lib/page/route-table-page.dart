import 'package:flutter/material.dart';

// 路由表路由页面（携带参数）
class RouteTablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Route Table Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('args: ' + args),
            Text('This is the page created by RouteTable'),
          ],
        )
      ),
    );
  }
}

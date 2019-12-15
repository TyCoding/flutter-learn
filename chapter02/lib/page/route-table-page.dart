import 'package:flutter/material.dart';

class RouteTableTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context).settings.arguments;
    print('命名路由传递的参数是： $args');

    return RaisedButton(
      child: Text('命名路由测试'),
      onPressed: () => {
        Navigator.of(context).pushNamed('route_table_page', arguments: '111')
      },
    );
  }
}

class RouteTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route Table'),
      ),
      body: Center(
        child: Text('This is the page created by RouteTable'),
      ),
    );
  }
}
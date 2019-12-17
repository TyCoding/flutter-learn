import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.red,
              child: Padding(
                // 左侧偏移8像素
                padding: EdgeInsets.only(left: 8),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Padding(
                // 上下各偏移8像素
                padding: EdgeInsets.symmetric(vertical: 8),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: Padding(
                // 四个方向都偏移20像素
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

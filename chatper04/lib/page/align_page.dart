import 'package:flutter/material.dart';

class AlignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 120,
              width: 120,
              color: Colors.grey,
              child: Align(
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            Container(
              height: 120,
              width: 120,
              color: Colors.blue[50],
              child: Align(
                // 表示子组件在父组件中的起始位置
                alignment: Alignment.topRight,
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            ),
            Container(
              height: 120,
              width: 120,
              color: Colors.green,
              child: Align(
                alignment: Alignment(2, 0),
                child: FlutterLogo(
                  size: 60,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

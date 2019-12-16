import 'package:flutter/material.dart';

class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap Flow Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            // Wrap流式布局可以实现子widget宽度溢出屏幕时自动换行
            Wrap(
              // 主轴方向子widget的间距
              spacing: 8,
              // 纵轴方向子widget的间距
              runSpacing: 1,
              // 纵轴方向的对齐方式
              runAlignment: WrapAlignment.center,
              children: <Widget>[
                Text('Hello World', style: TextStyle(
                  color: Colors.white,
                  backgroundColor: Colors.blue,
                  fontSize: 30
                ),),
                Text('Hello World', style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.red,
                    fontSize: 30
                ),),
                Text('Hello World', style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.grey,
                    fontSize: 30
                ),),
                Text('Hello World', style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.green,
                    fontSize: 30
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}

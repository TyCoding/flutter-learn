import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransformPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform Page'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(80),
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.blue),
              child: Transform.translate(
                offset: Offset(-20, -5),
                child: Text('Transform 平移'),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 80),
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: Transform.rotate(
                angle: math.pi / 2,
                child: Text('Transform 旋转'),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Transform在应用绘制阶段就变换了，子组件的改变并不能影响父组件大小和位置
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
                child: Transform.scale(
                  scale: 1.5,
                  child: Text('Transform 缩放'),
                ),
              ),
              Text(
                'Transform 缩放',
                style: TextStyle(fontSize: 10, color: Colors.blue),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DecoratedBox(
                decoration: BoxDecoration(color: Colors.red),
                //将Transform.rotate换成RotatedBox
                child: RotatedBox(
                  //旋转90度(1/4圈)
                  quarterTurns: 1,
                  child: Text("Hello world"),
                ),
              ),
              // RotatedBox也可以对子组件旋转变化，但RotatedBox变化发生在layout阶段
              // 会受子组件的位置和大小影响
              Text("你好", style: TextStyle(color: Colors.green, fontSize: 18.0),)
            ],
          ),
        ],
      ),
    );
  }
}

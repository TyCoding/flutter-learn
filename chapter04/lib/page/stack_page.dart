import 'package:flutter/material.dart';

// 层叠布局：子组件可以根据父容器四个角的位置来确定自身的位置
// Stack: 允许子组件堆叠
// Positioned: 根据Stack的四个角来确定子组件的位置
class StackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stack Positioned Page'),
        ),
        // ConstrainedBox确保Stack占满屏幕
        body: ConstrainedBox(
          constraints: BoxConstraints.expand(),
          child: Stack(
            // 指定没有定位的组件对齐方式
            alignment: Alignment.center,
            // 未定位widget占满Stack整个空间
            fit: StackFit.expand,
            children: <Widget>[
              Positioned(
                left: 18,
                child: Text('Positioned Left 18'),
              ),
              Container(
                child: Text(
                  'Hello World',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
              Positioned(
                top: 18,
                child: Text('Positioned Top 18'),
              )
            ],
          ),
        ));
  }
}

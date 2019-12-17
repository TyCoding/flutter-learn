import 'package:flutter/material.dart';

class ConstrainedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ConstrainedBox Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            // ConstrainedBox对子组件大小约束
            ConstrainedBox(
                constraints: BoxConstraints(minWidth: 80, minHeight: 50),
                child: Container(
                  height: 5,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.red),
                  ),
                )),

            SizedBox(
              width: 80,
              height: 50,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.blue),
              ),
            ),

            // 多重ConstrainedBox限制，会取组件中minWidth和minHeight最大的，保证不冲突
            // 子组件无法实现在不改变父组件ConstrainedBox限制大小的情况下改变自身大小
            ConstrainedBox(
                constraints: BoxConstraints(minWidth: 90.0, minHeight: 20.0),
                child: ConstrainedBox(
                  constraints: BoxConstraints(minWidth: 60.0, minHeight: 60.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.blue),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

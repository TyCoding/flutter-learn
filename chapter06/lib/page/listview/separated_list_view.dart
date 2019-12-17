import 'package:flutter/material.dart';

class SeparatedListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 下划线widget预定义
    Widget divider1 = Divider(
      color: Colors.blue,
    );
    Widget divider2 = Divider(
      color: Colors.green,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('separated ListView'),
      ),
      body: Scrollbar(
          child: ListView.separated(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('$index'),
          );
        },
        // 分割组件生成器
        separatorBuilder: (BuildContext context, int index) {
          return index % 2 == 0 ? divider1 : divider2;
        },
      )),
    );
  }
}

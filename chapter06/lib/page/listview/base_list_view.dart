import 'package:flutter/material.dart';

class BaseListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Base ListView'),
      ),
      body: Scrollbar(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(20),

          // children适合子组件少的情况
          // 组件很多，最好的方式是通过懒加载模型创建
          children: list(),
        ),
      ),
    );
  }

  List<Widget> list () {
    List<Widget> list = [];
    for (int i =0; i< 100; i++) {
      list.add(Text('A'));
    }
    return list;
  }
}

import 'package:flutter/material.dart';

class BuilderListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Builder ListView'),
      ),
      body: Scrollbar(
        // ListView.builder 适合列表项较多的情况
        // 支持基于Sliver的懒加载模型
        child: ListView.builder(
            itemCount: 100,
            itemExtent: 50,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('$index'),
              );
            }),
      ),
    );
  }
}

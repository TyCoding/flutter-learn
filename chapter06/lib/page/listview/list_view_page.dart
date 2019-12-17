import 'package:chapter06/page/listview/base_list_view.dart';
import 'package:chapter06/page/listview/builder_list_view.dart';
import 'package:chapter06/page/listview/infinite_list_view.dart';
import 'package:chapter06/page/listview/separated_list_view.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('children'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new BaseListView();
                }));
              },
            ),
            RaisedButton(
              child: Text('List.builder'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new BuilderListView();
                }));
              },
            ),
            RaisedButton(
              child: Text('List.separated'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new SeparatedListView();
                }));
              },
            ),
            RaisedButton(
              child: Text('异步无限加载列表'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new InfiniteListView();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}

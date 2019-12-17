import 'package:chapter06/page/graidview/SliverGridDelegateWithFixedCrossAxisCount.dart';
import 'package:chapter06/page/graidview/count.dart';
import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: new Text('SliverGridDelegateWithFixedCrossAxisCount'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new SliverGridDelegateWithFixedCrossAxisCountView();
                }));
              },
            ),
            RaisedButton(
              child: new Text('GridView.count'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return new CountView();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}

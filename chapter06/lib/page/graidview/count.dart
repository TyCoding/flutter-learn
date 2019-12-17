import 'package:chapter06/page/graidview/SliverGridDelegateWithFixedCrossAxisCount.dart';
import 'package:flutter/material.dart';

class CountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView.count'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        children: <Widget>[
          Icon(Icons.ac_unit),
          Icon(Icons.airport_shuttle),
          Icon(Icons.all_inclusive),
          Icon(Icons.beach_access),
          Icon(Icons.cake),
          Icon(Icons.free_breakfast),
        ],
      ),
    );
  }
}

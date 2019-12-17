import 'package:flutter/material.dart';

class SliverGridDelegateWithFixedCrossAxisCountView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverGridDelegateWithFixedCrossAxisCount'),
      ),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //横轴三个子widget
              crossAxisCount: 3,
              //宽高比为1时，子widget
              childAspectRatio: 1.0),
          children: <Widget>[
            Icon(Icons.ac_unit),
            Icon(Icons.airport_shuttle),
            Icon(Icons.all_inclusive),
            Icon(Icons.beach_access),
            Icon(Icons.cake),
            Icon(Icons.free_breakfast)
          ]),
    );
  }
}

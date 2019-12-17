import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatelessWidget {
  String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView Page'),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              children: str
                  .split('')
                  .map((e) => Text(
                        e,
                        textScaleFactor: 2,
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

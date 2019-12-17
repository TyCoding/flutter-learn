import 'package:chapter05/page/app.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Chapter03 Learning',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
        home: AppPage()
    );
  }
}
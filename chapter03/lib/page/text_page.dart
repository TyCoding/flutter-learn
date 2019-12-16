import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Page'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Hello World", textAlign: TextAlign.center),
            Text("Hello World! I'm TyCoding" * 4, textAlign: TextAlign.left),
            Text("Hello World" * 6, overflow: TextOverflow.ellipsis),
            Text("Hello World", textScaleFactor: 1.5),
            Text(
              "Hello World",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
              ),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(text: "Github: "),
              TextSpan(
                  text: "https://github.com/TyCoding",
                  style: TextStyle(color: Colors.blue))
            ])),

            // 默认全局文本样式
            DefaultTextStyle(
              style: TextStyle(
                color: Colors.red,
                fontSize: 20.0,
              ),
              textAlign: TextAlign.start,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Default"),
                  Text("Default"),
                  Text(
                    "Default",
                    style: TextStyle(
                        // 不继承默认样式
                        inherit: false,
                        color: Colors.blue),
                  ),
                ],
              ),
            ),

            Text('Merienda', style: TextStyle(fontFamily: 'Merienda'),)
          ],
        ),
      ),
    );
  }
}

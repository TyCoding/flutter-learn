import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Page'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/avatar.png'),
              width: 100.0,
              height: 80,
            ),
            Image.asset(
              'assets/images/avatar.png',
              width: 100.0,
              height: 80,
            ),
            Image(
              image: NetworkImage('https://tycoding.cn/images/favicon.ico'),
              width: 100.0,
              height: 80,
            ),
            Image.network(
              'https://tycoding.cn/images/favicon.ico',
              width: 100.0,
              height: 80,
            ),
            Image(
              image: AssetImage("assets/images/avatar.png"),
              width: 100.0,
              height: 80,
              color: Colors.blue,
              colorBlendMode: BlendMode.difference,
            ),
            Image(
              image: AssetImage("assets/images/avatar.png"),
              width: 100.0,
              height: 80.0,
              repeat: ImageRepeat.repeatY,
            ),
            Image(
              image: AssetImage("assets/images/avatar.png"),
              height: 50.0,
              width: 60.0,
              fit: BoxFit.fill,
            ),
            Text(
              '\uE914' + '\uE000',
              style: TextStyle(
                  fontFamily: "MaterialIcons",
                  fontSize: 40,
                  color: Colors.green),
            ),

            Icon(MyIcons.book,color: Colors.purple,),
            Icon(MyIcons.wechat,color: Colors.green,),
          ],
        ),
      ),
    );
  }
}

class MyIcons{
  // book 图标
  static const IconData book = const IconData(
      0xe8ac,
      matchTextDirection: true
  );
  // 微信图标
  static const IconData wechat = const IconData(
      0xe658,
      matchTextDirection: true
  );
}

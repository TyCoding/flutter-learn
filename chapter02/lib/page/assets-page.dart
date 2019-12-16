import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

// 静态资源管理页
class AssetsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assets Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          children: <Widget>[
            _JsonView(),
            _ImgView(),
          ],
        ),
      ),
    );
  }

  // 加载JSON文件资源
  Widget _JsonView() {
    return new FutureBuilder(
      future: rootBundle.loadString('assets/json/user.json'),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return new Text(snapshot.data.toString());
        }
        return new Text('null');
      },
    );
  }

  // 加载图片资源
  Widget _ImgView() {
    return Image.asset('assets/images/favicon.ico');
  }
}

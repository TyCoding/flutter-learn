import 'package:flutter/material.dart';

class ClipPage extends StatelessWidget {
  Widget avatar = Image.asset(
    'assets/images/avatar.png',
    width: 60,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip Page'),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(), // 底部导航栏打一个圆形的洞
        child: Row(
          children: [
            IconButton(icon: Icon(Icons.home)),
            SizedBox(), //中间位置空出
            IconButton(icon: Icon(Icons.business)),
          ],
          mainAxisAlignment: MainAxisAlignment.spaceAround, //均分底部导航栏横向空间
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            // 原始
            avatar,
            // 裁剪为圆形
            ClipOval(
              child: avatar,
            ),
            // 裁剪为圆角矩形
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: avatar,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  //宽度设为原来宽度一半，另一半会溢出
                  widthFactor: .5,
                  child: avatar,
                ),
                Text(
                  "你好世界",
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //将溢出部分剪裁
                ClipRect(
                  child: Align(
                    alignment: Alignment.topLeft,
                    //宽度设为原来宽度一半
                    widthFactor: .5,
                    child: avatar,
                  ),
                ),
                Text("你好世界", style: TextStyle(color: Colors.green))
              ],
            ),
            DecoratedBox(
              decoration: BoxDecoration(color: Colors.red),
              child: ClipRect(
                clipper: MyClipper(),
                child: avatar,
              ),
            )
          ],
        ),
      ),
    );
  }
}

// 裁剪子组件的特定区域
class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) => Rect.fromLTWH(10, 15, 40, 30);

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}

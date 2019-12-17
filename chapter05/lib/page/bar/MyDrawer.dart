import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: MediaQuery.removePadding(
          context: context,
          // 移除抽屉菜单顶部默认留白
          removeTop: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 38),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/avatar.png',
                          width: 80,
                        ),
                      ),
                    ),
                    Text(
                      'TyCoding',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.add),
                      title: Text('Add account'),
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Setting'),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}

import 'package:chapter05/page/bar/MyDrawer.dart';
import 'package:flutter/material.dart';

class BarPage extends StatefulWidget {
  @override
  _BarPageState createState() => _BarPageState();
}

class _BarPageState extends State<BarPage> with SingleTickerProviderStateMixin {
  // 当前激活菜单
  int _selectedIndex = 1;

  // Tab菜单
  List tabs = ['新闻', '历史', '图片'];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    // 创建Controller
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bar Page'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          )
        ],
        // 自定义左侧抽屉菜单图标样式
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              onPressed: () {
                // 代开抽屉菜单
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        // 顶部Tab
        bottom: TabBar(
            controller: _tabController,
            tabs: tabs.map((v) => Tab(text: v)).toList()),
      ),
      // 左侧抽屉
      drawer: new MyDrawer(),
      // 底部导航
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), title: Text('Business')),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text('School')),
        ],
        // 当前激活的索引
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      // 悬浮按钮
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.keyboard_return),
        onPressed: () {
          // 回到首页
          Navigator.pop(context);
        },
      ),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((v) {
          return Container(
            alignment: Alignment.center,
            child: Text(v, textScaleFactor: 5),
          );
        }).toList(),
      ),
    );
  }

  // 更新状态：修改当前激活的菜单索引
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

import 'package:flutter/material.dart';

// 计数器页面
// StatefulWidget 有状态的组件（在生命周期中可变），但是StatefulWidget不慎是不变的
// Stateful Widget 至少由StatefulWidget类和State类组成，State类状态会变化
class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

// CounterPage是StatefulWidget有状态类，_AppPage是对应的State类
class _CounterPageState extends State<CounterPage> {
  int _counter = 0;

  // 为什么build()方法放在State类中而不是StatefulWidget类中？
  // 1. 状态访问不便：
  //        StatefulWidget核心在于状态可变，而状态的修改必须在State类中完成
  // 2. 继承StatefulWidget类不便：
  //        如果每个继承StatefulWidget的类都需要实现build方法，那么也必须都维护自己的State类
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            RaisedButton(
              onPressed: () {
                // 调用setState()方法通知Flutter有状态发生改变，Flutter接收到通知后执行build方法重新构建页面
                setState(() {
                  _counter++;
                });
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

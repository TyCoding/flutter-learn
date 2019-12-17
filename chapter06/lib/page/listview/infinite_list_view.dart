import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class InfiniteListView extends StatefulWidget {
  @override
  _InfiniteListViewState createState() => _InfiniteListViewState();
}

class _InfiniteListViewState extends State<InfiniteListView> {
  // 顶部加载标记
  static const loadingTag = 'loading...';
  var _words = <String>[loadingTag];

  @override
  void initState() {
    super.initState();
    _retrieveData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Infinite ListView'),
      ),
      body: Scrollbar(
          child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              '固定表头',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: _words.length,
              itemBuilder: (BuildContext context, int index) {
                // 如果到了屏幕表尾
                // _words数组中，loadingTag值每次都在数组的最后
                if (_words[index] == loadingTag) {
                  // 不足100条，继续获取数据
                  if (_words.length - 1 < 100) {
                    // 获取数据
                    _retrieveData();
                    // 加载时显示loading
                    return Container(
                      padding: EdgeInsets.all(16),
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      ),
                    );
                  } else {
                    return Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(16),
                      child: Text(
                        '没有更多了',
                        style: TextStyle(color: Colors.grey),
                      ),
                    );
                  }
                }
                return ListTile(
                  title: Text(_words[index]),
                );
              },
              separatorBuilder: (context, index) => Divider(
                height: 0,
              ),
            ),
          )
        ],
      )),
    );
  }

  // 模拟异步加载数据
  void _retrieveData() {
    Future.delayed(Duration(seconds: 2)).then((e) {
      _words.insertAll(
          _words.length - 1,
          // 每次生成20个单词
          generateWordPairs().take(20).map((e) => e.asPascalCase).toList());
      // 重置状态，重新构建列表
      setState(() {});
    });
  }
}

import 'package:flutter/material.dart';

/**
 * Column:
 *    MainAxisAlignment: 主轴对齐
 *    CrossAsisAlignment: 纵轴对齐
 *
 * Row:
 *    `textDirection`: 水平方向子组件的布局顺序，默认从左往右
 *    `mainAxisSize`: Row在主轴方向占用空间，默认等于Row的实际宽度，`MainAxisSize.min`则等于Row所有子组件的宽度
 *    `mainAxisAlignment`: 表示子组件在Row所占用的水平空间内的对齐方式（若Row宽度=其下所有子组件宽度则无效）
 *        `MainAxisAlignment.start`表示沿`textDirection`初始方向对齐
 *            `textDirection: TextDirection.ltr`: `MainAxisAlignment.start`表示从左对齐
 *            `textDirection: TextDirection.rtl`: `MainAxisAlignment.start`表示从右对齐
 *    `verticalDirection`: 标识Row纵轴对齐方向（默认从上到下）
 *    `crossAxisAlignment`: 组件在纵轴的对象方式，Row的高度等于最高子元素的高度
 */
class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Column Row Page'),
      ),
      body: Column(
        // 排除Column默认的居中对齐干扰
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('aaa'),
              Text('bbb'),
            ],
          ),
          Row(
            // 开启Row宽度=子组件宽度
            mainAxisSize: MainAxisSize.min,
            // 无效
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('aaa'),
              Text('bbb'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            // 从右向左对齐
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text('aaa'),
              Text('bbb'),
            ],
          ),
          Row(
            // 默认对齐方式为从左向右
            crossAxisAlignment: CrossAxisAlignment.start,
            // 顶部对齐，并且Row的高度为最高子组件的高度
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Text('aaa', style: TextStyle(fontSize: 30),),
              Text('bbb'),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  // 定义Controller，用于和输入框值交互
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  // 创建FocusNode用于控制焦点
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;

  // 用于绑定表单状态
  GlobalKey _formKey= new GlobalKey<FormState>();

  @override
  void initState() {
    // 设置默认值
    _nameController.text = 'default';
    _nameController.addListener(() {
      print('controller监听的值：' + _nameController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Page'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[
            TextField(
              autofocus: true,
              controller: _nameController,
              decoration: InputDecoration(
                  labelText: '用户名',
                  hintText: '请输入用户名',
                  prefixIcon: Icon(Icons.person)),
            ),
            TextField(
              // 隐藏正在编辑的文本
              obscureText: true,
              controller: _passController,
              decoration: InputDecoration(
                  labelText: '密码',
                  hintText: '请输入密码',
                  prefixIcon: Icon(Icons.lock)),
            ),

            // 控制焦点
            // 焦点由FocusScope管理，他代表了焦点控制范围，在此范围内可以用过FocusScopeNode在输入框之间移动焦点
            TextField(
              autofocus: true,
              focusNode: focusNode1, //关联focusNode1
              decoration: InputDecoration(labelText: "input1"),
            ),
            TextField(
              focusNode: focusNode2, //关联focusNode2
              decoration: InputDecoration(labelText: "input2"),
            ),
            RaisedButton(
              child: Text("移动焦点"),
              onPressed: () {
                //将焦点从第一个TextField移到第二个TextField
                // 这是一种写法 FocusScope.of(context).requestFocus(focusNode2);
                // 这是第二种写法
                if (null == focusScopeNode) {
                  focusScopeNode = FocusScope.of(context);
                }
                focusScopeNode.requestFocus(focusNode2);
              },
            ),
            RaisedButton(
              child: Text("隐藏键盘"),
              onPressed: () {
                // 当所有编辑框都失去焦点时键盘就会收起
                focusNode1.unfocus();
                focusNode2.unfocus();
              },
            ),
            RaisedButton(
              child: Text('打印数据'),
              onPressed: () {
                print('用户名: ' + _nameController.text);
                print('密码: ' + _passController.text);
              },
            ),

            Form(
              key: _formKey,
              // 开启自动校验
              autovalidate: true,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    autofocus: true,
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      hintText: 'Username',
                      icon: Icon(Icons.person)
                    ),
                    // 校验用户名
                    validator: (v) {
                      return v.trim().length > 0 ? null : 'username is not empty';
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    controller: _passController,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Password',
                        icon: Icon(Icons.lock)
                    ),
                    // 校验密码
                    validator: (v) {
                      return v.trim().length > 5 ? null : 'password length at least 5';
                    },
                  )
                ],
              ),
            ),

            RaisedButton(
              child: Text('提交'),
              color: Colors.blue,
              onPressed: () {
                if ((_formKey.currentState as FormState).validate()) {
                  // 表单校验通过
                  print('username: ' + _nameController.text);
                  print('password: ' + _passController.text);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

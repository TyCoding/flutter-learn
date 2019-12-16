## Flutter 路由管理

### 基础用法

1. `MaterialPageRoute`
    - `WidgetBuilder builder`: 回调函数，返回Widget用于构建页面具体内容
    - `RouteSettings settings`: 路由的配置信息
  
2. `Navigator`:
    - `Future push(BuildContext context, Route route)`: 路由入栈（返回页面关闭时携带的数据）
    - `bool pop(BuildContext context, [ result ])`: 将栈顶路由出栈，`result`为携带的值

```dart
// A -> B
Navigator.push(context, MaterialPageRoute(builder: (context) {
  return new NewPage();
}))

// B -> A
Navigator.pop(context, '我是返回值');
```

### 命名路由

```dart
// 注册路由表
MaterialApp(
  initialRoute:"/", //名为"/"的路由作为应用的home(首页)
  routes:{
    "new_page":(context) => NewRoute(),
    "/":(context) => MyHomePage(title: 'Flutter Demo Home Page'), //注册首页路由
  } ,
);

// 通过路由名打开路由页 | A A->B
Navigator.pushNamed(context, "new_page");

// 通过路由名打开路由页 - 携参 | A A->B
Navigator.of(context).pushNamed("new_page", arguments: "hi");

// 获取携带的参数 | A
var args=ModalRoute.of(context).settings.arguments;
```

### 路由生成钩子

`MaterialApp`有一个`onGenerateRoute`属性，可以实现对 **命名路由** 的权限控制。

- `onGenerateRoute`仅仅对**命名路由**有效
- `onGenerateRoute`仅仅对**命名路由**中**为在路由表中注册**的路由有效
- 对于已经在路由表中注册的路由，将直接调用`builder`函数生成路由组件

```dart
MaterialApp(
  onGenerateRoute:(RouteSettings settings){
      return MaterialPageRoute(builder: (context){
           String routeName = settings.name;
       // 如果访问的路由页需要登录，但当前未登录，则直接返回登录页路由，
       // 引导用户登录；其它情况则正常打开路由。
     }
   );
  }
);
```



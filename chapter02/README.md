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

### 包管理

> 和Maven、Gradle类似，Flutter也可以简单的通过配置文件管理Flutter项目所需的包。

在Flutter中通过`pubspec.yaml`文件管理项目所需的各种包：

```yaml
# 应用名称
name: flutter_in_action
# 应用描述
description: First Flutter application.

# 应用或包的版本号
version: 1.0.0+1

# 依赖
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^0.1.2

# 开发环境依赖的工具包（而不是flutter应用本身依赖的包）
dev_dependencies:
  flutter_test:
    sdk: flutter

# flutter相关的配置选项
flutter:
  uses-material-design: true
```

### Pub仓库

[https://pub.dev/](https://pub.dev/)

### 其他依赖方式

1. 依赖本地包（例如本地一个包名为`pkg1`）

```yaml
dependencies:
    pkg1:
        path: ../../code/pkg1
```

2. 依赖Git中存储的包

```yaml
dependencies:
  package1:
    git:
      url: git://github.com/flutter/packages.git
      path: packages/package1
```

### 资源管理

1. 指定`assets`（`assets`为Flutter App中资源部分，对应了应用的中某个路径下的文件）

```yaml
flutter:
  assets:
    - assets/images/
    - assets/json/
```

2. 加载assets
   - 使用`package:flutter/services.dart`包中静态`rootBundle`对象加载asset
   - 使用`DefaultAssetBundle`对象加载
 
```dart
rootBundle.loadString('assets/json/user.json');

DefaultAssetBundle.of(context).loadString(key)
```

3. 加载文本

```dart
rootBundle.loadString('assets/json/user.json');
```
 
4. 加载图片

```dart
Image.asset('assets/images/favicon.ico')

new AssetImage('graphics/background.png')
```

5. 设置APP图标

替换`/android/app/src/main/res`中不同dpi的图片即可

6. 更新启动页

修改`/android/app/src/main/res/drawable/launch_background.xml`，自定义启动页样式
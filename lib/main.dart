import 'package:flutter/material.dart';
import 'package:fluttercn_app/screens/indexWidget.dart';
import 'package:fluttercn_app/screens/messageWidget.dart';
import 'package:fluttercn_app/screens/homeWidget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterCN',
      home: HomePage(title: 'FlutterCN')
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _tabIndex = 0;
  final _widgetsItems = [IndexWidget(), MessageWidget(), HomeWidget()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FlutterCN'),
        ),
        body: _widgetsItems[_tabIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('话题')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text('消息')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('我的')
            ),
          ],
          currentIndex: _tabIndex,
          fixedColor: Colors.black, //选中时颜色变为黑色
          type: BottomNavigationBarType.fixed, //类型为 fixed
          onTap: _onItemTapped,
        ),
      );
  }

  // 点击Tab栏
  void _onItemTapped(int index) {
    setState(() {
      _tabIndex = index; //刷新界面
    });
  }
}
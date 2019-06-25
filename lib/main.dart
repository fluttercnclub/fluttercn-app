import 'package:flutter/material.dart';
import 'package:fluttercn_app/screens/indexWidget.dart';
import 'package:fluttercn_app/screens/topicWidget.dart';
import 'package:fluttercn_app/screens/messageWidget.dart';
import 'package:fluttercn_app/screens/homeWidget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterCN',
      home: HomePage(title: 'FlutterCN'),
      theme: ThemeData(
        primaryColor: Color(0xff1389fd)
      ),
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
  final _widgetsItems = [IndexWidget(), TopicWidget(), MessageWidget(), HomeWidget()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _widgetsItems[_tabIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('发现')
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
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
          fixedColor: Color(0xff1389fd), //选中时颜色变为黑色
          type: BottomNavigationBarType.fixed, //类型为 fixed
          onTap: _onItemTapped,
        ),
        backgroundColor: Color.fromRGBO(249, 249, 249, 1.0),
      );
  }

  // 点击Tab栏
  void _onItemTapped(int index) {
    setState(() {
      _tabIndex = index; //刷新界面
    });
  }
}
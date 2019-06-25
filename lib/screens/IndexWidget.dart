import 'package:flutter/material.dart';
import 'package:fluttercn_app/components/index/TopBarWidget.dart';

class IndexWidget extends StatefulWidget {
  @override
  _IndexWidgetState createState() => _IndexWidgetState();
}

class _IndexWidgetState extends State<IndexWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 15.0),
      child: Column(
        children: <Widget>[
          TopBarWidget(),
        ],
      )
    );
  }
}
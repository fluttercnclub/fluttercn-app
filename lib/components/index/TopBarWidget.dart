import 'package:flutter/material.dart';

class TopBarWidget extends StatefulWidget {
  @override
  _TopBarWidgetState createState() => _TopBarWidgetState();
}

class _TopBarWidgetState extends State<TopBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      alignment: Alignment.bottomCenter,
      child: Row(children: <Widget>[
        Padding(padding: EdgeInsets.only(right: 15.0),
        child: Text('发现', style: TextStyle(
          fontSize: 24.0,
          color: Colors.black,
          fontWeight: FontWeight.w400
        ),)
        ),
        Expanded(
          child: TextField(
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
            decoration: InputDecoration(
              hintText: '搜索',
              hintStyle: TextStyle(fontFamily: 'MaterialIcons', fontSize: 16),
              contentPadding: EdgeInsets.only(top: 6, bottom: 6),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              filled: true,
              fillColor: Colors.white
            ),
          ),
        )
      ],),
    );
  }
}
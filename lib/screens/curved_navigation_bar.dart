import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterui/screens/hiretalent.dart';
import 'package:flutterui/screens/home.dart';
import 'package:flutterui/screens/love.dart';
import 'package:flutterui/screens/settings.dart';

class CurveNavigationBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return StateCurve();
  }
}

class StateCurve extends State<CurveNavigationBar>{
  int _page = 1;
  GlobalKey _bottomNavigationKey = GlobalKey();
  final List<Widget> _children = [
    Settings(),
    Home(),
    Love()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_page],
      bottomNavigationBar:  CurvedNavigationBar(
        key: _bottomNavigationKey,
        color: Colors.white,
        backgroundColor: Colors.deepPurple,
        buttonBackgroundColor: Colors.white,
        height: 50,
        animationCurve: Curves.bounceInOut,
        animationDuration: Duration(
          microseconds: 200
        ),
        index: 1,
        items: <Widget>[
          Icon(Icons.settings, size: 20),
          Icon(Icons.home, size: 20),
          Icon(Icons.favorite, size: 20),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }

}
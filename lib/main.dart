import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterui/screens/curved_navigation_bar.dart';
import 'package:flutterui/screens/hiretalent.dart';
import 'package:flutterui/screens/intro_page.dart';
import 'package:flutterui/screens/intro_page1.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  /*SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
    runApp(MyApp());
  });*/ //for portrait

  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HireTalent()//CurveNavigationBar()//IntroPage1(),//HireTalent(),IntroPage()
    );
  }
}
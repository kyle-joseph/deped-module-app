import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_app/screens/courses/courses.dart';
import 'package:module_app/screens/home/home.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      title: 'Grade 3 Modules',
      theme: ThemeData(
        primaryColor: Color(0xffE15C72),
        textTheme: TextTheme(
          headline1: TextStyle(
              fontFamily: 'PTSans',
              fontWeight: FontWeight.w700,
              fontSize: 45,
              color: Colors.white),
          headline2: TextStyle(
              fontFamily: 'PTSans',
              fontWeight: FontWeight.w700,
              fontSize: 45,
              color: Colors.white70),
          subtitle1: TextStyle(
            fontFamily: 'PTSans',
            color: Colors.white,
            fontSize: 20,
          ),
          subtitle2: TextStyle(
            fontFamily: 'PTSans',
            fontWeight: FontWeight.w700,
            color: Color(0xff6E7274),
            fontSize: 20,
          ),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

import 'package:date_time/page/HomeScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(DateApp());

class DateApp extends StatelessWidget {
  const DateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
          fontFamily: 'sunflower',
          textTheme: TextTheme(
              headline1: TextStyle(
                  color: Colors.white, fontSize: 60, fontFamily: 'parisienne'),
              bodyText1: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
              bodyText2: TextStyle(color: Colors.white, fontSize: 40),
              headline2: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w700))),
    );
  }
}

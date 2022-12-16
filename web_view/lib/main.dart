import 'package:flutter/material.dart';
import 'package:web_view/page/FirstPage.dart';

void main()=>runApp(WebApp());
class WebApp extends StatelessWidget {
  const WebApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

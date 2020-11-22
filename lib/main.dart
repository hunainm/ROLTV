import 'package:flutter/material.dart';
import 'pages/home_page.dart';

Color primaryColor = Color(0xffff7c09);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = 'ROLTV';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        backgroundColor: Colors.black,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.black,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

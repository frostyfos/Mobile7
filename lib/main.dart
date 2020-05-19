import 'package:flutter/material.dart';
import 'package:mobile7/screens/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile 7',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryTextTheme: TextTheme(
              title: TextStyle(
            color: Color(0xFF545863),
          )),
          backgroundColor: Color(0xFFF0F0F3),
          appBarTheme: AppBarTheme(
            color: Color(0xFFF0F0F3),
          )),
      home: MainPage(),
    );
  }
}

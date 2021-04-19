import 'package:flutter/material.dart';
import 'package:lesson_7/pages/first_page.dart';
import 'package:lesson_7/pages/home_page.dart';
import 'package:lesson_7/pages/second_page.dart';
import 'package:lesson_7/pages/third_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        HomePage.id: (context) => HomePage(),
        SecondPage.id: (context) => SecondPage(),
        FirstPage.id: (context) => FirstPage(),
        ThirdPage.id: (context) => ThirdPage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lesson_7/pages/first_page.dart';
import 'package:lesson_7/pages/second_page.dart';
import 'package:lesson_7/pages/third_page.dart';

class HomePage extends StatefulWidget {
  static final String id = "HomePage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.blue,
              child: Text('Task1'),
              onPressed: () {
                Navigator.pushNamed(context, FirstPage.id);
              },
            ),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              backgroundColor: Colors.blue,
              child: Text('Task2'),
              onPressed: () {
                Navigator.pushNamed(context, SecondPage.id);
              },
            ),
            SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              backgroundColor: Colors.blue,
              child: Text('Task3'),
              onPressed: () {
                Navigator.pushNamed(context, ThirdPage.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}

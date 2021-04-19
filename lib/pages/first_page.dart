import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  static final String id = "FirstPage";

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task1'),
      ),
      body: ListView(
        children: [
          _gradientContainerBuilder(),
          _gradientContainerBuilder(),
          _gradientContainerBuilder(),
        ],
      ),
    );
  }

  Widget _gradientContainerBuilder() {
    final Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(20),
      child: Container(
        width: size.width * 0.8,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/ic_image1.jpg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.4),
              Colors.black.withOpacity(0.92),
            ],
          ),
        ),
      ),
    );
  }
}

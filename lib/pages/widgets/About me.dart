import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me '),
      ),
      body: Center(
        child: Text('This is the AboutMe Screen'),
      ),
    );
  }
}
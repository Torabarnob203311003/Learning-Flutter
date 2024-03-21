import 'package:flutter/material.dart';
import 'Home_page.dart';

class HomePage extends StatelessWidget {
  final int days = 60;
  final String name = "with torab";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cv App"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome flutter  $days challenge with $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}

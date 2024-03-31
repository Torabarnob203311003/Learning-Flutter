import 'package:flutter/material.dart';
import 'package:my_app/pages/widgets/drawer.dart';
import 'Home_page.dart';

class HomePage extends StatelessWidget {
  final int days = 60;
  final String name = " with torab";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mustafizur Rahman"),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/images/Man.png",
            height: 150,
            width: 150,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Mustafizur Rahman",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Assistant Software Engineer",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w200,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Business Automation Ltd",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w200,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Completed BSc in CSE ",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w200,
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            "from Varendra University",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w200,
            ),
          ),
        ]),
      ),
      drawer: MyDrawer(),
    );
  }
}

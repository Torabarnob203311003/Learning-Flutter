import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Column(
      children: [
        Image.asset("assets/images/login_images.png",fit:BoxFit.cover,
        ),
      ],
    ));
  }
}

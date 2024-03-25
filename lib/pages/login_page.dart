import 'package:flutter/material.dart';
import 'package:my_app/utils/routes.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var labelText = "username or email";
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/login_images.png",
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("welcome",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Username or Email",
                          labelText: "Username or Email"),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Password", labelText: "Password"),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        print(
                          Navigator.pushNamed(context, MyRoutes.homeRoute),
                        );
                      },
                      child: Text("LogIn"),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.purple[200],
                        minimumSize: Size(120, 40),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

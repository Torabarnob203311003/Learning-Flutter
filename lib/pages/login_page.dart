import 'package:flutter/material.dart';
import 'package:my_app/utils/routes.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String name = "";
  bool changeButton = false;
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
                height: 15.0,
              ),
              Text("welcome $name",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 17.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 32.20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Username ", labelText: "Username "),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
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
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changeButton = true;
                        });
                        await Future.delayed(
                          Duration(seconds: 1),
                        );
                        setState(() {
                          changeButton = false;
                        });
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 110,
                        height: 50,
                        alignment: Alignment.center,
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text("LogIn",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            // shape: changeButton
                            //     ? BoxShape.circle
                            //     : BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 12 : 8)),
                      ),
                    )
                    // ElevatedButton(
                    //   onPressed: () {
                    //     print(
                    //       Navigator.pushNamed(context, MyRoutes.homeRoute),
                    //     );
                    //   },
                    //   child: Text("LogIn"),
                    //   style: TextButton.styleFrom(
                    //     backgroundColor: Colors.purple[200],
                    //     minimumSize: Size(120, 40),
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

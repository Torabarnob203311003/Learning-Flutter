import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:my_app/utils/routes.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/widgets/drawer.dart';
import 'pages/widgets/Education.dart';
import 'pages/widgets/About me.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => MyWidget(),
        "/education": (context) => EducationScreen(),
        "/aboutme": (context) => AboutMe(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }

  LoginPage() {}
}

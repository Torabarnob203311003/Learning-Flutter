import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color.fromARGB(255, 174, 165, 176),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 170, 165, 165),
                  ),
                  accountName: Text("Torab Arnob"),
                  accountEmail: Text("Maxarnobtorab@gmail,com"),
                  currentAccountPicture: Image.asset("assets/images/Man.png"),
                )),
            ListTile(
                leading: Icon(CupertinoIcons.home, color: Colors.purple),
                title: Text(
                  "About Me",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                ),
                  onTap: () {
                Navigator.pushNamed(context, '/aboutme');
              },
                
                ),
            ListTile(
              leading: Icon(CupertinoIcons.book_circle, color: Colors.purple),
              title: Text(
                "Education",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/education');
              },
            ),
            ListTile(
                leading: Icon(CupertinoIcons.ant_circle, color: Colors.purple),
                title: Text(
                  "Achivement",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
                leading: Icon(CupertinoIcons.bag, color: Colors.purple),
                title: Text(
                  "Skills",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
                leading: Icon(CupertinoIcons.tray, color: Colors.purple),
                title: Text(
                  "Projects",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.white),
                )),
            ListTile(
                leading:
                    Icon(CupertinoIcons.arrow_right_circle, color: Colors.red),
                title: Text(
                  "Logout",
                  textScaleFactor: 1.2,
                  style: TextStyle(color: Colors.red),
                )),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.purple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text("Torab Arnob"),
                  accountEmail: Text("Maxarnobtorab@gmail,com"),
                  currentAccountPicture: Image.asset("assets/images/Man.png"),
                ))
          ],
        ),
      ),
    );
  }
}

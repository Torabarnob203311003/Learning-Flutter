import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Torab Arnob"),
                accountEmail: Text("Maxarnobtorab@gmail,com"),
              ))
        ],
      ),
    );
  }
}

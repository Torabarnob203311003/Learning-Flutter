import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              accountName: Text("Torab arnob"),
              accountEmail: Text("maxarnobtorab@gmail.com"),
            ),
          )
        ],
      ),
    );
  }
}

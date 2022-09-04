import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Color.fromRGBO(29, 191, 193, 1),
            ),
          ),
          ListTile(
            title: Text("User info1"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("User info2"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("User info2"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

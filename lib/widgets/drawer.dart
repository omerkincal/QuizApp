import 'package:flutter/material.dart';
import 'package:ypyprojeodevi/screens/main_page.dart';
import 'package:ypyprojeodevi/screens/settings_screen.dart';

@override
Widget drawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.deepPurple,
          ),
          child: Text('Drawer Header'),
        ),
        ListTile(
          title: const Text('Home Page'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MainPage()));
          },
        ),
        ListTile(
          title: const Text('Settings'),
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const SettingsScreen()));
          },
        ),
      ],
    ),
  );
  ;
}

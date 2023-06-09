import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ypyprojeodevi/screens/favorites_page.dart';
import 'package:ypyprojeodevi/screens/settings_screen.dart';
import '../home_page.dart';

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
          child: Text(
            'Hoş Geldin',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
        ListTile(
          title: const Text('Home Page'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
          },
        ),
        ListTile(
          title: const Text('Favorites'),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FavoritesPage()));
          },
        ),
        ListTile(
          title: const Text('Settings'),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SettingsScreen()));
          },
        ),
        ListTile(
            title: const Text('Logout'), onTap: FirebaseAuth.instance.signOut),
      ],
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:ypyprojeodevi/home_page.dart';
import 'package:ypyprojeodevi/screens/favorites_page.dart';
import 'package:ypyprojeodevi/screens/settings_screen.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Home Page',
          baseStyle: TextStyle(),
          selectedStyle: TextStyle(),
        ),
        HomePage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Favorite Questions',
          baseStyle: TextStyle(),
          selectedStyle: TextStyle(),
        ),
        FavoritesPage(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      screens: _pages,
      backgroundColorMenu: Colors.deepPurple.shade200,
      initPositionSelected: 0,
      slidePercent: 60,
    );
  }
}

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

import '/screens/main_page.dart';
import 'screens/categories_page.dart';
import '/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const MainPage(),
    CategoryPage(),
  ];
  void _navigationBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      drawer: drawer(context),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
        ),
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(13)),
        child: BottomNavigationBar(
          selectedItemColor: Theme.of(context).hintColor,
          unselectedItemColor: Theme.of(context).colorScheme.surface,
          currentIndex: _selectedIndex,
          onTap: _navigationBottomBar,
          backgroundColor: Theme.of(context).colorScheme.background,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: 'Home Page',
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Categories',
            ),
          ],
        ),
      ),
    );
  }
}

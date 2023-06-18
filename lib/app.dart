import 'package:flutter/material.dart';

import 'screens/splash_screen.dart';
import 'utils/theme_utils.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    ///
    return MaterialApp(
      ///
      debugShowCheckedModeBanner: false,

      ///
      home: const SplashScreen(),

      ///
      theme: themeApp,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
    );
  }
}

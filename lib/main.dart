import 'package:flutter/material.dart';
import 'package:ypyprojeodevi/screens/splash_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

const Color appBarColor = Color.fromARGB(217, 12, 121, 237);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.light,
        primaryColor: Colors.deepPurple[800],
        fontFamily: 'Georgia',
      ),
    );
  }
}

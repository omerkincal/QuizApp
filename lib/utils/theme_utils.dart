import 'package:flutter/material.dart';

final themeApp = ThemeData(
  primarySwatch: Colors.deepPurple,
  brightness: Brightness.light,
  primaryColor: Colors.deepPurple[800],
  fontFamily: 'Georgia',
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodySmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: Colors.black,
    ),
  ),
);

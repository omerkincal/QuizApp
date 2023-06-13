import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'app.dart';
import 'firebase_options.dart';

void main() async {
  ///
  WidgetsFlutterBinding.ensureInitialized();

  /// [Firebase Initialize]
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  ///
  runApp(
    ///
    const App(),
  );
}

/// Constants
const Color appBarColor = Color.fromARGB(217, 12, 121, 237);

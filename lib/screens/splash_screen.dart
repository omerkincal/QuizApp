import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'auth_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Widget currentPage = const Text('');
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    /// Bekletme Metodu
    Future.delayed(
      const Duration(seconds: 2),
      () {
        ///
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const AuthPage()),
        );
      },
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.quiz_outlined,
              size: 80,
              color: Colors.white,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Quiz App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold,
                fontFamily: AutofillHints.middleName,
              ),
            )
          ],
        ),
      ),
    );
  }
}

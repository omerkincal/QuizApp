import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/home_page.dart';
import '/screens/login_page.dart';

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
          MaterialPageRoute(
            builder: (_) => StreamBuilder(
              stream: FirebaseAuth.instance.authStateChanges(),
              builder: (ctx, snapshot) {
                /// Kullanıcı Giriş Yapmışsa
                if (snapshot.hasData) {
                  currentPage = const HomePage();
                  return const HomePage();
                } else if (!snapshot.hasData) {
                  currentPage = const LoginPage();
                }
                return currentPage;

                /// Giriş Yapılmamışsa
              },
            ),
          ),
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

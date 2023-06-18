import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'QuizApp\' e Hoş Geldin',
          style: TextStyle(fontSize: 36, color: Colors.white),
        ),
        const SizedBox(height: 40),
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(15.0)),
            color: Theme.of(context).hintColor,
          ),
          child: Image.asset(
            'assets/quiz_app_logo.png',
            width: 300,
            height: 300,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 17, horizontal: 15),
          child: const Text(
            'Burada bilgilerini istediğin kategorideki quizler ile test edebilir ve derslerindeki gelişimini hızlandırabilirsin :)',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

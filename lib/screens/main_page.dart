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
            color: Colors.deepPurple[800],
          ),
          child: Image.asset(
            'assets/quizApp.png',
            width: 300,
            height: 300,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: const Text(
            'Burada bilgilerini istediğin kategorideki quizler ile test edebilir \n ve derslerindeki gelişimini hızlandırabilirsin :)',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

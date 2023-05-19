import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          'QuizApp\' e Hoş Geldin',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
        Text(
          'Burada bilgilerini istediğin kategorideki quizler ile test edebilir \n ve derslerindeki gelişimini hızlandırabilirsin :)',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}

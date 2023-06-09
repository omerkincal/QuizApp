import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsetsDirectional.symmetric(vertical: 60, horizontal: 50),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
      ),
    );
  }
}

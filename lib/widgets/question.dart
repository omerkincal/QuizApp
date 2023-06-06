import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  const QuestionText({super.key, required this.questionText});
  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 13),
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 24,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../models/questions.dart';

class Answers extends StatefulWidget {
  Answers(
      {required this.trueAnswer,
      required this.answerText,
      required this.answers});
  final int trueAnswer;
  final String answerText;
  List answers = [];

  @override
  State<Answers> createState() => _AnswersState();
}

class _AnswersState extends State<Answers> {
  bool isButtonDisabled = false;

  void _onButtonPressed() {
    setState(() {
      isButtonDisabled = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    int puan = 0;
    return Container(
      width: double.infinity,
      child: TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.black),
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        onPressed: () {
          if (widget.answers[widget.trueAnswer] == widget.answerText) {
            puan += 10;
          } else {
            puan = 0;
          }
          print(puan);
        },
        child: Text(widget.answerText),
      ),
    );
  }
}

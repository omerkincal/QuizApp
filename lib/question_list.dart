import 'package:flutter/material.dart';
import 'models/questions.dart';

class QuestionList extends StatelessWidget {
  late List<Question> questionList = [];

  QuestionList({super.key, required this.questionList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Quiz')),
      body: ListView.builder(
          itemCount: questionList.length,
          itemBuilder: (context, index) =>
              Text(questionList[index].questionText)),
    );
  }
}

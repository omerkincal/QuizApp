import 'package:flutter/material.dart';
import 'package:ypyprojeodevi/widgets/question_choices.dart';
import 'models/questions.dart';

class QuestionList extends StatefulWidget {
  const QuestionList({super.key, required this.questionList});
  final List<Question> questionList;

  @override
  State<QuestionList> createState() => _QuestionListState();
}

class _QuestionListState extends State<QuestionList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: QuestionShowing(
        questionsList: widget.questionList,
      ),
    );
  }
}

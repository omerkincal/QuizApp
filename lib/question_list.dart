import 'package:flutter/material.dart';
import 'package:ypyprojeodevi/widgets/answers.dart';
import 'package:ypyprojeodevi/widgets/question.dart';
import 'models/questions.dart';

class QuestionList extends StatefulWidget {
  late List<Question> questionList = [];

  QuestionList({super.key, required this.questionList});

  @override
  State<QuestionList> createState() => _QuestionListState();
}

class _QuestionListState extends State<QuestionList> {
  late int puan = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Quiz')),
        body: ListView.builder(
          itemCount: widget.questionList.length,
          itemBuilder: (context, index) => Card(
            child: Column(children: [
              QuestionText(
                questionText: widget.questionList[index].questionText,
              ),
              for (var i = 0;
                  i < widget.questionList[index].options.length;
                  i++)
                Answers(
                  answerText: widget.questionList[index].options[i],
                  trueAnswer: widget.questionList[index].correctAnswerIndex,
                  answers: widget.questionList[index].options,
                ),
              // RadioListTile<int>(
              //   title: Text(widget.questionList[index].options[i]),
              //   value: i,
              //   groupValue: null,
              //   onChanged: (value) {
              //     setState(() {});
              //   },
              // ),
            ]),
          ),
        ));
  }
}

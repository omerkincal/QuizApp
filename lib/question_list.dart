import 'package:flutter/material.dart';
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
            child: Column(
              children: [
                Text(
                  widget.questionList[index].questionText,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
                for (var i = 0;
                    i < widget.questionList[index].options.length;
                    i++)
                  RadioListTile<int>(
                    title: Text(widget.questionList[index].options[i]),
                    value: i,
                    groupValue: null,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
              ],
            ),
          ),
        ));
  }
}

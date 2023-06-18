import 'package:flutter/material.dart';
import '../models/questions.dart';
import 'question_choices.dart';

class QuizesList extends StatelessWidget {
  const QuizesList({super.key, required this.quizesList});

  final List<List<Question>> quizesList;

  void questionShow(BuildContext context, List<Question> questionList) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => QuestionShowing(
          questionsList: questionList,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizlerin Listesi'),
      ),
      body: ListView.builder(
        itemCount: quizesList.length,
        itemBuilder: (context, index) {
          return Center(
            child: GestureDetector(
              onTap: () {
                return questionShow(context, quizesList[index]);
              },
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).dialogBackgroundColor,
                  border: Border.all(width: 5, color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsets.only(top: 25, right: 30, left: 30),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Text(
                  'Quiz ${index + 1}',
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

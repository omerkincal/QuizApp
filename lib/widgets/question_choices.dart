// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../models/questions.dart';
import 'question.dart';

class QuestionShowing extends StatefulWidget {
  const QuestionShowing({
    Key? key,
    required this.questionsList,
  }) : super(key: key);
  final List<Question> questionsList;

  @override
  State<QuestionShowing> createState() => _QuestionShowingState();
}

class _QuestionShowingState extends State<QuestionShowing> {
  int currentQuestionIndex = 0;
  int score = 0;
  Option? selectedOption;
  final textStyle = const TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '${currentQuestionIndex + 1}/${widget.questionsList.length}',
                    textAlign: TextAlign.end,
                    style: textStyle,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(24),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: QuestionText(
                        question: widget.questionsList[currentQuestionIndex],
                        questionText: widget
                            .questionsList[currentQuestionIndex].questionText,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: widget.questionsList[currentQuestionIndex].options
                    .map((e) => _answerButton(e))
                    .toList(),
              ),
              _nextButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _answerButton(Option answer) {
    bool isSelected = answer == selectedOption;

    return Container(
      width: double.infinity,
      height: 40,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: isSelected
              ? Colors.blue
              : Theme.of(context).colorScheme.background,
          foregroundColor: isSelected ? Colors.white : Colors.white,
        ),
        onPressed: () {
          if (selectedOption == null) {
            if (answer.isCorrect) {
              score += 1;
            }
          }

          setState(() {
            selectedOption = answer;
          });
        },
        child: Text(answer.text),
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == widget.questionsList.length - 1) {
      isLastQuestion = true;
    }

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 40,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: Theme.of(context).primaryColorDark,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          if (isLastQuestion) {
            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            setState(() {
              selectedOption = null;
              currentQuestionIndex++;
            });
          }
        },
        child:
            isLastQuestion ? const Text('See the result') : const Text('Next'),
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;
    if (score >= widget.questionsList.length * 0.6) {
      isPassed = true;
    }
    String title = isPassed ? "Passed" : "Failed";
    return AlertDialog(
      title: Text(
        '$title and your score is $score',
        style: TextStyle(
          color: isPassed ? Colors.green : Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            setState(() {
              currentQuestionIndex = 0;
              score = 0;
              selectedOption = null;
            });
          },
          child: const Text('Restart'),
        )
      ],
    );
  }
}

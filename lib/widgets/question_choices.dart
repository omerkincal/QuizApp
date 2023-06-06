import 'package:flutter/material.dart';
import 'package:ypyprojeodevi/widgets/categories_page.dart';
import 'package:ypyprojeodevi/widgets/question.dart';

import '../models/questions.dart';

class QuestionShowing extends StatefulWidget {
  const QuestionShowing({super.key, required this.questionsList});
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
      child: Card(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                          '${currentQuestionIndex + 1}/${widget.questionsList.length}',
                          textAlign: TextAlign.end,
                          style: textStyle),
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
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: QuestionText(
                              questionText: widget
                                  .questionsList[currentQuestionIndex]
                                  .questionText,
                            ),
                          )),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.favorite))
                    ],
                  ),
                  Column(
                    children: widget.questionsList[currentQuestionIndex].options
                        .map((e) => _answerButton(e))
                        .toList(),
                  ),

                  _nextButton(),

                  // for (var i = 0;
                  //     i < widget.questionsList[_questionIndex].options.length;
                  //     i++)
                  // RadioListTile(
                  //   title: Text(widget.questionsList[_questionIndex].options[i]),
                  //   value: i,
                  //   groupValue: selectedOption,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       selectedOption = i;
                  //       print(selectedOption);
                  //     });
                  //   },
                  // ),
                  // RadioListTile(
                  //   title: Text(widget.questionsList[_questionIndex].options[0]),
                  //   value: 0,
                  //   groupValue: selectedOption,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       selectedOption = value!;
                  //       print(selectedOption);
                  //     });
                  //   },
                  // ),
                  // RadioListTile(
                  //   title: Text(widget.questionsList[_questionIndex].options[1]),
                  //   value: 1,
                  //   groupValue: selectedOption,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       selectedOption = value!;
                  //       print(selectedOption);
                  //     });
                  //   },
                  // ),
                  // RadioListTile(
                  //   title: Text(widget.questionsList[_questionIndex].options[2]),
                  //   value: 2,
                  //   groupValue: selectedOption,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       selectedOption = value!;
                  //       print(selectedOption);
                  //     });
                  //   },
                  // ),
                  // RadioListTile(
                  //   title: Text(widget.questionsList[_questionIndex].options[3]),
                  //   value: 3,
                  //   groupValue: selectedOption,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       selectedOption = value!;
                  //       print(selectedOption);
                  //       print(widget.questionsList.length);
                  //       print(_questionIndex);
                  //     });
                  //   },
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     _questionIndex != 0
                  //         ? IconButton(
                  //             onPressed: () {
                  //               setState(() {
                  //                 _questionIndex--;
                  //               });
                  //             },
                  //             icon: const Icon(Icons.arrow_back))
                  //         : const Text(''),
                  //     _questionIndex == 4
                  //         ? TextButton(
                  //             onPressed: () {
                  //               Navigator.push(
                  //                   context,
                  //                   MaterialPageRoute(
                  //                       builder: (context) =>
                  //                           ResultPage(puan: puan)));
                  //             },
                  //             child: const Text('Sonucu görmek için tıkla...'))
                  //         : IconButton(
                  //             onPressed: () {
                  //               setState(() {
                  //                 selectedOption = 4;
                  //                 if (selectedOption ==
                  //                     widget.questionsList[_questionIndex]) {
                  //                   puan = puan + 5;
                  //                 }
                  //               });
                  //               _questionIndex++;
                  //             },
                  //             icon: const Icon(Icons.arrow_forward))
                  //   ],
                  // )
                ]),
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
          backgroundColor:
              isSelected ? Colors.green : Colors.deepPurple.shade200,
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
          backgroundColor: Colors.deepPurple.shade500,
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
        child: isLastQuestion ? Text('Sonucu Gör') : Text('Next'),
      ),
    );
  }

  _showScoreDialog() {
    return AlertDialog(
      title: Text('Tebrik ederim'),
      content: Text(score.toString()),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CategoryPage()));
            },
            child: Text('Bitir'))
      ],
    );
  }
}

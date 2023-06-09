import 'package:flutter/material.dart';
import 'package:ypyprojeodevi/models/questions.dart';

class QuizesList extends StatelessWidget {
  const QuizesList({super.key, required this.quizesList});

  final List<List<Question>> quizesList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizlerin Listesiiiiiiii'),
      ),
      body: ListView.builder(
        itemCount: quizesList.length,
        itemBuilder: (context, index) {
          return Center(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple.shade300,
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
                  )),
            ),
          );
        },
      ),
    );
  }
}

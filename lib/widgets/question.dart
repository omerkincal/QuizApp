import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/questions.dart';
import '../provider/favorites_provider.dart';

class QuestionText extends ConsumerWidget {
  const QuestionText({
    super.key,
    required this.questionText,
    required this.question,
  });
  final String questionText;
  final Question question;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          questionText,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: () {
            final wasAdded = ref
                .read(favoriteQuestionsProvider.notifier)
                .toggleQuestionFavoritesStatus(question);
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  wasAdded
                      ? "Question added to favorites."
                      : "Question removed from favorites.",
                ),
              ),
            );
          },
          icon: const Icon(Icons.favorite),
        )
      ],
    );
  }
}

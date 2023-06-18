import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/favorites_provider.dart';

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteQuestions = ref.watch(favoriteQuestionsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 14),
        child: ListView.builder(
          itemCount: favoriteQuestions.length,
          itemBuilder: (context, index) {
            final question = favoriteQuestions[index];
            final correctOption =
                question.options.firstWhere((option) => option.isCorrect);

            return ListTile(
              title: Text(
                question.questionText,
                style: const TextStyle(fontSize: 25),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The correct answer is: ${correctOption.text}',
                    style: const TextStyle(fontSize: 19),
                  ),
                ],
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  ref
                      .read(favoriteQuestionsProvider.notifier)
                      .toggleQuestionFavoritesStatus(question);
                  ScaffoldMessenger.of(context).clearSnackBars();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Question removed from favorites.",
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

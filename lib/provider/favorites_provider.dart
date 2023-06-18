import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/questions.dart';

/// []
class FavoriteQuestionsNotifier extends StateNotifier<List<Question>> {
  FavoriteQuestionsNotifier() : super([]);

  bool toggleQuestionFavoritesStatus(Question question) {
    final questionIsFavorite = state.contains(question);

    if (questionIsFavorite) {
      state =
          state.where((m) => m.questionText != question.questionText).toList();
      return false;
    } else {
      state = [...state, question];
      return true;
    }
  }
}

final favoriteQuestionsProvider =
    StateNotifierProvider<FavoriteQuestionsNotifier, List<Question>>((ref) {
  return FavoriteQuestionsNotifier();
});

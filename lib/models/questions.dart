// enum Category { tarih, matematik, fen, cografya }

// const categoryIcons = {
//   Category.tarih: Icons.account_balance_outlined,
//   Category.matematik: Icons.onetwothree_outlined,
//   Category.fen: Icons.science,
//   Category.cografya: Icons.map,
// };

class Question {
  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
  });
  String questionText;
  List<String> options;
  int correctAnswerIndex;
}

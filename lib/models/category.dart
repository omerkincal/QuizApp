import 'package:flutter/material.dart';
import 'package:ypyprojeodevi/models/questions.dart';

class Category {
  Category({
    required this.name,
    required this.icon,
    required this.questions,
  });

  final String name;
  final Icon icon;
  List<Question> questions;
}

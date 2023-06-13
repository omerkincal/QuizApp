import 'package:flutter/material.dart';

import '/models/questions.dart';

class Category {
  Category({
    required this.name,
    required this.icon,
    required this.questions,
  });

  final String name;
  final Icon icon;
  List<List<Question>> questions;
}

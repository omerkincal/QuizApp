import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.puan});
  final int puan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Puanınız: $puan')));
  }
}

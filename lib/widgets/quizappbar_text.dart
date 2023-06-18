import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return Center(
    child: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: const TextStyle(fontSize: 34),
        children: [
          TextSpan(
            text: 'Quiz',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Theme.of(context).disabledColor,
            ),
          ),
          TextSpan(
            text: 'App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        ],
      ),
    ),
  );
}

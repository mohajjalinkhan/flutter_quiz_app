import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // adding Quiz Imaage
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
          ),
        ],
      ),
    );
  }
}

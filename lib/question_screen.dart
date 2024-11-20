import 'package:flutter/material.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionState();
}

class _QuestionState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Question Secreen Page",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

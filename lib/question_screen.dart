import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionState();
}

class _QuestionState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //using full available width
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Question",
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          //using custom button
          AnswerButton(
            onTap: () {},
            buttonText: "Answer",
          ),
           //using custom button
          AnswerButton(
            onTap: () {},
            buttonText: "Answer",
          ),
           //using custom button
          AnswerButton(
            onTap: () {},
            buttonText: "Answer",
          ),
           //using custom button
          AnswerButton(
            onTap: () {},
            buttonText: "Answer",
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;
  // result storing  function
  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          "question_index": i,
          "question": questions[i].text,
          "correct_answer": questions[i].answers[0],
          "chosen_answer": chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //using full available width.
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You have answered X out of Y questions correctly."),
            const SizedBox(
              height: 30,
            ),
            const Text("Questions Answers "),
            TextButton(onPressed: () {}, child: const Text("Reatart Quiz"))
          ],
        ),
      ),
    );
  }
}

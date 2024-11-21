import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionState();
}

class _QuestionState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void currentAnswer() {
    // updating index by 1.
    currentQuestionIndex++;
  }

  @override
  Widget build(BuildContext context) {
    // storing current question index.
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      //using full available width.
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.black,
            ),

            //using custom button first answer
            // using spreed operator to create list of Answer Widgets
            ...currentQuestion.shuffelAnswers().map((answer) {
              return AnswerButton(buttonText: answer, onTap: () {});
            }),
          ],
        ),
      ),
    );
  }
}

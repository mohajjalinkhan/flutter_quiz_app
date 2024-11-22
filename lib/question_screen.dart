import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionState();
}

class _QuestionState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void currentAnswer() {
    setState(() {
      // updating index by 1, if answer button cliked.
      currentQuestionIndex++;
    });
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
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            //using custom button first answer
            // using spreed operator to create list of Answer Widgets
            ...currentQuestion.shuffelAnswers().map((answer) {
              return AnswerButton(buttonText: answer, onTap: currentAnswer);
            }),
          ],
        ),
      ),
    );
  }
}

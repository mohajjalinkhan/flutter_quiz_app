import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/answer_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key, required this.onSelectAnswer});

  // created function which takes one parameter to store selected Answer by the user.
  final Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() => _QuestionState();
}

class _QuestionState extends State<QuestionScreen> {
  //accessing current Index in options list
  var currentQuestionIndex = 0;
  // storing selected Answer and updating current Index of Questons Array List
  void currentAnswer(String selectedAnswer) {
    setState(() {
      // accessing Widget Class in State Class by using (widget.)
      widget.onSelectAnswer(selectedAnswer);
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
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            //using custom button first answer
            // using spreed operator to create list of Answer Widgets
            ...currentQuestion.shuffelAnswers().map((answer) {
              return AnswerButton(buttonText: answer, onTap: (){
                currentAnswer(answer);
              });
            }),
          ],
        ),
      ),
    );
  }
}

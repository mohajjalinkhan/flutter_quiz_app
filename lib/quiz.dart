import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/question_screen.dart';
import 'package:flutter_quiz_app/result_screen.dart';
import "package:flutter_quiz_app/start_screen.dart";
import 'package:flutter_quiz_app/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
/* using ? for null
Widget? activeScreen; */

/* using init method to excute active screen functionality before build method excuted.
@override
void initState() {
  activeScreen = StartScreen(switchScreen);
  super.initState();
}
*/
// solving switch screen using IF condition
  var activeScreen = "start-screen";
  // storing seclected answer in slecedAnwer List(Array)
  List<String> selectedAnswer = [];

// created Switch Method Function
  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }

  // chooseSelectedAnswer Function
  void chooseSelectedAnswerFun(String answer) {
    selectedAnswer.add(answer);
    // checking selected answer is equels to the give questions from our data model questions List.
    if (selectedAnswer.length == questions.length) {
      setState(() {
        selectedAnswer = [];
        activeScreen = "result-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // created variable to switch screen
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == "questions-screen") {
      screenWidget = QuestionScreen(onSelectAnswer: chooseSelectedAnswerFun);
    }
    if (activeScreen == "result-screen") {
      screenWidget = ResultScreen(chosenAnswers: selectedAnswer,);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          //created gardiented for background
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 1, 3, 35),
              Color.fromARGB(255, 41, 3, 63),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          // created activeScreen to Switch between Pages using (? :) conditional method
          child: screenWidget,
        ),
      ),
    );
  }
}

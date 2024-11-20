import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/question_screen.dart';
import "package:flutter_quiz_app/start_screen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
/* using ? for null
Widget? activeScreen; */
// solving switch screen using Ternary operator
  var activeScreen = "start-screen";
/* using init method to excute active screen functionality before build method excuted.
@override
void initState() {
  activeScreen = StartScreen(switchScreen);
  super.initState();
}
*/
// created Switch Method Function
  void switchScreen() {
    setState(() {
      activeScreen = "questions-screen";
    });
  }
  @override
  Widget build(BuildContext context) {
    // created final variable to switch screen
    final screenWidget = activeScreen == "start-screen"
        ? StartScreen(switchScreen)
        : const QuestionScreen();
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

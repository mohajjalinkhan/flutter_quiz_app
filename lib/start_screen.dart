import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // added Quiz Imaage
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            // using this for color and opacity
            color: const Color.fromARGB(255, 253, 252, 255),
          ),
          // added Sizedbox for padding (Spacing).
          const SizedBox(height: 80),
          const Text(
            "Learn Flutter with Quiz App",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          const SizedBox(height: 30),
          //added button for navigation to other screen, with icon constructor
          OutlinedButton.icon(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            //added arrow icon in button
            icon: const Icon(
              Icons.arrow_right_alt,
              size: 30,
            ),
            label: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}

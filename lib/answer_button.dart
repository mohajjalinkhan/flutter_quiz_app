import 'package:flutter/material.dart';

// created reuseable answer button
class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.buttonText, required this.onTap});
  final String buttonText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: onTap,
      child: Text(buttonText),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      ),
      onPressed: onTap,
      child: Text(
        buttonText,
        style: GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}

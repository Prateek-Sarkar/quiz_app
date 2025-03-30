import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ContentSection extends StatelessWidget {
  ContentSection(this.startQuiz, {super.key});

  final void Function() startQuiz;

  var image = Image.asset(
    'assets/image/quiz-logo.png',
    width: 250,
    color: const Color.fromARGB(150, 247, 248, 248),
  );

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        image,
        const SizedBox(height: 50),
        Text(
          "Learn Flutter the fun way!",
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 50),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: TextButton.styleFrom(
            padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            foregroundColor: Colors.white,
          ),
          icon: Icon(
            Icons.arrow_right_alt,
            color: const Color.fromARGB(255, 246, 247, 248),
          ),
          label: Text("Start Quiz"),
        ),
      ],
    );
  }
}

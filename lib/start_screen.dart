import 'package:flutter/material.dart';

import 'package:advanced_basics/styled_text.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  void runQuiz() {}

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        const StyledText("Learn Flutter the fun way!"),
        const SizedBox(
          height: 80,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          onPressed: runQuiz,
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            "Start Quiz",
          ),
        ),
      ],
    );
  }
}

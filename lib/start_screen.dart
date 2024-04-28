import 'package:flutter/material.dart';

import 'package:advanced_basics/styled_text.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuestions;

  const StartScreen(this.startQuestions, {super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
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
            onPressed: startQuestions,
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text(
              "Start Quiz",
            ),
          ),
        ],
      ),
    );
  }
}

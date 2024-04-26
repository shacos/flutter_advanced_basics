import 'package:flutter/material.dart';

import 'package:advanced_basics/styled_text.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State {
  void runQuiz() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
        ),
        const SizedBox(
          height: 20,
        ),
        const StyledText("Learn Flutter the fun way!"),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          onPressed: runQuiz,
          child: const Text(
            "Start Quiz",
          ),
        ),
      ],
    );
  }
}

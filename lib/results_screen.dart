import 'package:flutter/material.dart';

import 'package:advanced_basics/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("You have answered X out of Y correct answers."),
              const SizedBox(
                height: 40,
              ),
              const Text("List of answers and questions..."),
              const SizedBox(
                height: 40,
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Restart Quiz!"),
              ),
            ],
          )),
    );
  }
}

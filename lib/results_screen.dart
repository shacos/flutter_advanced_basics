import 'package:advanced_basics/questions_summary.dart';
import 'package:advanced_basics/styled_text.dart';
import 'package:flutter/material.dart';

import 'package:advanced_basics/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen(
      {super.key, required this.chosenAnswers, required this.resetGame});

  final List<String> chosenAnswers;
  final void Function() resetGame;

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
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectAnswers = summaryData
        .where((data) => data['user_answer'] == data['correct_answer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StyledText(
                "You answered $numCorrectAnswers out of $numTotalQuestions questions correctly!",
                20,
                TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              QuestionsSummary(
                getSummaryData(),
              ),
              const SizedBox(
                height: 40,
              ),
              TextButton.icon(
                onPressed: resetGame,
                icon: const Icon(
                  color: Colors.white,
                  Icons.refresh,
                ),
                label: const StyledText(
                  "Restart Quiz!",
                  16,
                  TextAlign.center,
                ),
              ),
            ],
          )),
    );
  }
}

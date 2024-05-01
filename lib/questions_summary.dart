import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:advanced_basics/styled_text.dart';
import 'package:advanced_basics/circular_number.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map(
                (data) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircularNumber(
                      number: (data['question_index'] as int) + 1,
                      color: data['correct_answer'] == data['user_answer']
                          ? const Color.fromARGB(255, 147, 184, 230)
                          : const Color.fromARGB(255, 225, 144, 189),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          StyledText(
                            data['question'] as String,
                            16,
                            TextAlign.start,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          StyledText(
                            data['user_answer'] as String,
                            14,
                            TextAlign.justify,
                            color: const Color.fromARGB(255, 173, 151, 180),
                          ),
                          StyledText(
                            data['correct_answer'] as String,
                            14,
                            TextAlign.justify,
                            color: const Color.fromARGB(255, 132, 181, 233),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

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

import 'package:flutter/material.dart';

import 'package:advanced_basics/quiz.dart';

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;

  const GradientContainer(this.color1, this.color2, {super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
        ),
      ),
      child: const Center(
        child: Quiz(),
      ),
    );
  }
}

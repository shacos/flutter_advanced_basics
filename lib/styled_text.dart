import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String textContent;

  const StyledText(this.textContent, {super.key});

  @override
  Widget build(context) {
    return Text(
      textContent,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
      ),
    );
  }
}

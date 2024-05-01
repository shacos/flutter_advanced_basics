import 'package:flutter/material.dart';

class CircularNumber extends StatelessWidget {
  const CircularNumber({super.key, required this.number, required this.color});

  final int number;
  final Color color;

  @override
  Widget build(context) {
    return CircleAvatar(
      backgroundColor: color,
      child: Text(
        number.toString(),
      ),
    );
  }
}

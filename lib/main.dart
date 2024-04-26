import 'package:flutter/material.dart';

import 'package:advanced_basics/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Color.fromARGB(255, 104, 8, 99),
          Color.fromARGB(255, 189, 43, 194),
        ),
      ),
    ),
  );
}

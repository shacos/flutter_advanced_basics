import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  final String textContent;

  const StyledText(this.textContent, {super.key});

  @override
  Widget build(context) {
    return Text(
      textContent,
      textAlign: TextAlign.center,
      style: GoogleFonts.lato(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }
}

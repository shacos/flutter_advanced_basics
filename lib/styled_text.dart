import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.textContent, this.fontSize, this.textAlignment,
      {super.key, this.color = Colors.white});

  final String textContent;
  final double fontSize;
  final TextAlign textAlignment;
  final Color color;

  @override
  Widget build(context) {
    return Text(
      textContent,
      textAlign: textAlignment,
      style: GoogleFonts.lato(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}

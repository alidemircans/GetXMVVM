import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleGenerator extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight fontWeight;

  TextStyleGenerator({
    @required this.color,
    @required this.size,
    @required this.text,
    @required this.fontWeight,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}

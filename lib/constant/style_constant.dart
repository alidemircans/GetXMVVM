import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyleConstant {
  static TextStyle textFormFiledStyle = GoogleFonts.poppins(
    fontSize: 16,
    color: Color.fromRGBO(143, 143, 161, 1),
    fontWeight: FontWeight.bold,
  );

  static InputBorder inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
      borderSide: BorderSide(color: Colors.white, width: 1));
}

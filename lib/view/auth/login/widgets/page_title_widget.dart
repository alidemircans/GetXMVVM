import 'package:flutter/material.dart';
import 'package:techlite/widgets/textstyle_generator.dart';

class PageTitleWidet extends StatelessWidget {
  final String text;
  final Size size;
  PageTitleWidet({@required this.text, @required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .1,
      width: size.width * .95,
      child: Center(
        child: TextStyleGenerator(
          size: 48,
          color: Colors.black,
          text: text,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

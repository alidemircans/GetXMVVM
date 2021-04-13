import 'package:flutter/material.dart';
import 'package:techlite/widgets/textstyle_generator.dart';

class ForYouDetailButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color backColor;
  ForYouDetailButton(
      {@required this.backColor,
      @required this.text,
      @required this.textColor});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 60,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: backColor,
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
      ),
      child: Center(
        child: TextStyleGenerator(
          text: text,
          color: textColor,
          size: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

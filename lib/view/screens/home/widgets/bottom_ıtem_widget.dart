import 'package:flutter/material.dart';
import 'package:techlite/widgets/textstyle_generator.dart';

class BottomItemWidget extends StatelessWidget {
  final Size size;
  final IconData icon;
  final String text;
  final bool isActive;

  BottomItemWidget({
    @required this.size,
    @required this.text,
    @required this.icon,
    @required this.isActive,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Color.fromRGBO(168, 170, 184, 1),
      height: size.height * .2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            icon,
            size: size.height * .05,
            color: isActive
                ? Color.fromRGBO(249, 14, 83, 1)
                : Color.fromRGBO(168, 170, 184, 1),
          ),
          TextStyleGenerator(
            color: isActive
                ? Color.fromRGBO(249, 14, 83, 1)
                : Color.fromRGBO(168, 170, 184, 1),
            size: 14,
            text: text,
            fontWeight: FontWeight.w500,
          )
        ],
      ),
    );
  }
}

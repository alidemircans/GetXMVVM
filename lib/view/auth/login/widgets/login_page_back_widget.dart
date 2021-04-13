import 'package:flutter/material.dart';

class LoginPageBackWidget extends StatelessWidget {
  final String image;
  LoginPageBackWidget({@required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(.85),
            BlendMode.darken,
          ),
        ),
      ),
    );
  }
}

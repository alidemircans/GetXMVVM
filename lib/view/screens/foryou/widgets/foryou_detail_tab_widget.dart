import 'package:flutter/material.dart';
import 'package:techlite/widgets/textstyle_generator.dart';

class ForYouDetailTabWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 50,
      margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
      decoration: BoxDecoration(
        color: Color.fromRGBO(243, 244, 255, 1),
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.3),
            spreadRadius: .2,
            blurRadius: 5,
            offset: Offset(1, 1),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: (size.width - 40) / 3,
            height: 50,
            margin: EdgeInsets.only(top: 5, bottom: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Center(
              child: TextStyleGenerator(
                text: 'Overview',
                color: Colors.black,
                size: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: (size.width - 40) / 3,
            height: 50,
            margin: EdgeInsets.only(top: 5, bottom: 5),
            decoration: BoxDecoration(
              color: Color.fromRGBO(243, 244, 255, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Center(
              child: TextStyleGenerator(
                text: 'Photos',
                color: Colors.black,
                size: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            width: (size.width - 40) / 3,
            height: 50,
            margin: EdgeInsets.only(top: 5, bottom: 5),
            decoration: BoxDecoration(
              color: Color.fromRGBO(243, 244, 255, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Center(
              child: TextStyleGenerator(
                text: 'Guest list',
                color: Colors.black,
                size: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:techlite/widgets/textstyle_generator.dart';

class ForyouDetailTopWidget extends StatelessWidget {
  final image;
  final isVip;
  final day;
  final month;

  const ForyouDetailTopWidget(
      {Key key, this.image, this.isVip, this.day, this.month})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 50,
        horizontal: 20,
      ),
      width: size.width,
      height: size.height * .40,
      decoration: BoxDecoration(
        color: Colors.purple,
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isVip)
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: TextStyleGenerator(
                    size: 12,
                    text: 'VIP ONLY',
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                ),
                child: Column(
                  children: [
                    TextStyleGenerator(
                      size: 12,
                      text: day,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    TextStyleGenerator(
                      size: 12,
                      text: month,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

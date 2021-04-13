import 'package:flutter/material.dart';
import 'package:techlite/core/models/participant_model.dart';
import 'package:techlite/widgets/textstyle_generator.dart';

class EventCardWidget extends StatelessWidget {
  final List<Participant> participants;
  EventCardWidget({@required this.participants});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
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
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            width: size.width * .7,
            height: size.height * .25,
            decoration: BoxDecoration(
              color: Colors.purple,
              image: DecorationImage(
                image: NetworkImage(
                    'https://scontent.fist6-1.fna.fbcdn.net/v/t1.18169-9/20604596_1825915671039206_7558588188359976046_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=730e14&_nc_ohc=-KPtW05SIFkAX_ES_9l&_nc_ht=scontent.fist6-1.fna&oh=c4d4e0784da1a30b0255c86f96396654&oe=609B30A9'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 15),
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
                            text: '14',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          TextStyleGenerator(
                            size: 12,
                            text: 'FEB',
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
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextStyleGenerator(
                      size: 16,
                      text: 'Grand Opening',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          TextStyleGenerator(
                            size: 16,
                            text: '4.8',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.add_location,
                      color: Color.fromRGBO(249, 14, 83, 1),
                    ),
                    TextStyleGenerator(
                      size: 12,
                      text: 'Main Stage - Ushuaia',
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: size.width * .4,
                            height: 30,
                            child: Stack(
                              children: participants.map((e) {
                                return Positioned(
                                  left: (e.index) * 20.0,
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          e.image,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      border: Border.all(
                                        color: Colors.white,
                                      ),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30),
                                      ),
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                          Positioned(
                            left: participants.length * 20.0,
                            child: Container(
                              width: 30,
                              height: 30,
                              child: Center(
                                child: Text(
                                  '+${participants.length}',
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:techlite/core/models/participant_model.dart';
import 'package:techlite/view/screens/foryou/view/foryou_detail_view.dart';
import 'package:techlite/view/screens/foryou/widgets/event_card_widget.dart';
import 'package:techlite/widgets/textstyle_generator.dart';

class ForYouView extends StatefulWidget {
  @override
  _ForYouViewState createState() => _ForYouViewState();
}

class _ForYouViewState extends State<ForYouView> {
  List<Participant> participants = [
    Participant(
      index: 0,
      image:
          "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Pierre-Person.jpg/640px-Pierre-Person.jpg",
    ),
    Participant(
      index: 1,
      image:
          "https://www.edarabia.com/wp-content/uploads/2015/11/7-ways-to-become-the-person-everyone-respects.jpg",
    ),
    Participant(
      index: 2,
      image:
          "https://www.edarabia.com/wp-content/uploads/2015/11/7-ways-to-become-the-person-everyone-respects.jpg",
    ),
    Participant(
      index: 3,
      image:
          "https://www.edarabia.com/wp-content/uploads/2015/11/7-ways-to-become-the-person-everyone-respects.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Color.fromRGBO(243, 244, 255, 1),
      width: size.width,
      height: size.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 60, left: 20),
              child: Row(
                children: [
                  TextStyleGenerator(
                    color: Colors.black,
                    size: 26,
                    text: 'Events you might like',
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  TextStyleGenerator(
                    color: Colors.grey[600],
                    size: 13,
                    text: 'Because you have attended Techno Bunker',
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * .52,
              width: size.width,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 100,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Get.to(
                      () => ForYouDetailView(
                        index: index,
                        participants: participants,
                      ),
                    ),
                    child: EventCardWidget(
                      participants: participants,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

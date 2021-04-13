import 'package:flutter/material.dart';
import 'package:techlite/core/models/participant_model.dart';
import 'package:techlite/view/screens/foryou/widgets/foryou_detail_button.dart';
import 'package:techlite/view/screens/foryou/widgets/foryou_detail_tab_widget.dart';
import 'package:techlite/view/screens/foryou/widgets/foryu_detail_top_widget.dart';
import 'package:techlite/widgets/textstyle_generator.dart';

class ForYouDetailView extends StatefulWidget {
  final int index;
  final List<Participant> participants;
  ForYouDetailView({@required this.participants, this.index});
  @override
  _ForYouDetailViewState createState() => _ForYouDetailViewState();
}

class _ForYouDetailViewState extends State<ForYouDetailView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ForyouDetailTopWidget(
                isVip: true,
                day: '14',
                month: 'FEB',
                image:
                    'https://scontent.fist6-1.fna.fbcdn.net/v/t1.18169-9/20604596_1825915671039206_7558588188359976046_n.jpg?_nc_cat=106&ccb=1-3&_nc_sid=730e14&_nc_ohc=-KPtW05SIFkAX_ES_9l&_nc_ht=scontent.fist6-1.fna&oh=c4d4e0784da1a30b0255c86f96396654&oe=609B30A9',
              ),
              ForYouDetailTabWidget(),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextStyleGenerator(
                          size: 20,
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
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.add_location,
                      color: Color.fromRGBO(249, 14, 83, 1),
                    ),
                    TextStyleGenerator(
                      size: 13,
                      text: 'Main Stage - Ushuaia',
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: TextStyleGenerator(
                  size: 15,
                  text:
                      'This party is your great oppuotunity to meet the world-famous artist fr..',
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * .4,
                          height: 30,
                          child: Stack(
                            children: widget.participants.map((e) {
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
                          left: widget.participants.length * 20.0,
                          child: Container(
                            width: 30,
                            height: 30,
                            child: Center(
                              child: Text(
                                '+${widget.participants.length}',
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
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextStyleGenerator(
                            text: 'Interested',
                            color: Colors.black,
                            size: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          Icon(
                            Icons.check,
                            color: Color.fromRGBO(249, 14, 83, 1),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              ForYouDetailButton(
                text: 'Check-In',
                textColor: Color.fromRGBO(249, 14, 83, 1),
                backColor: Colors.white,
              ),
              ForYouDetailButton(
                text: 'Get Guaranteed Entry',
                textColor: Colors.white,
                backColor: Color.fromRGBO(249, 14, 83, 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

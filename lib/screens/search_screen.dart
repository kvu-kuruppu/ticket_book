// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ticket_book/utils/app_layout.dart';
import 'package:ticket_book/utils/app_styles.dart';
import 'package:ticket_book/widgets/icon_text_widget.dart';
import 'package:ticket_book/widgets/ticket_tabs.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          SizedBox(height: AppLayout.getHeight(40)),
          Text('What are\nyou looking for?',
              style:
                  Styles.header1.copyWith(fontSize: AppLayout.getHeight(35))),
          SizedBox(height: AppLayout.getHeight(20)),
          AppTicketTabs(
            firstTab: 'Airline Tickets',
            secondTab: 'Hotels',
          ),
          SizedBox(height: AppLayout.getHeight(25)),
          AppIconText(icon: Icons.flight_takeoff, text: 'Dapature'),
          SizedBox(height: AppLayout.getHeight(15)),
          AppIconText(icon: Icons.flight_land, text: 'Arrival'),
          SizedBox(height: AppLayout.getHeight(25)),
          SizedBox(
            height: 50,
            child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
                onPressed: () => print('tapped'),
                child: Text(
                  'Find Tickets',
                  style: Styles.textStyle
                      .copyWith(color: Colors.white, fontSize: 20),
                )),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Upcoming Flights', style: Styles.header2),
              InkWell(
                onTap: () {
                  print('tapped');
                },
                child: Text('View All',
                    style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor)),
              )
            ],
          ),
          SizedBox(
            height: AppLayout.getHeight(15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(8),
                  vertical: AppLayout.getHeight(8),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 174, 174, 175),
                        blurRadius: 2,
                        spreadRadius: 2),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(15)),
                        image: DecorationImage(
                          fit: BoxFit.scaleDown,
                          image: AssetImage(
                              'assets/early-booking-discount-grunge-rubber-260nw-178348958.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(10),
                    ),
                    Text(
                      '20% discount on the early booking of this flight. Don\'t miss out the chance',
                      textAlign: TextAlign.center,
                      style: Styles.header2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(174),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(15),
                          horizontal: AppLayout.getHeight(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.header2,
                            ),
                            SizedBox(height: AppLayout.getHeight(10)),
                            Text(
                              'Take the survery about our services & get discount',
                              style: Styles.header3,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -50,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 18,
                                  color: Color.fromARGB(179, 167, 160, 160))),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(15),
                  ),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(130),
                    padding: EdgeInsets.symmetric(
                      vertical: AppLayout.getHeight(15),
                      horizontal: AppLayout.getHeight(15),
                    ),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 174, 174, 175),
                            blurRadius: 2,
                            spreadRadius: 2),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take Love',
                          style: Styles.header2,
                        ),
                        SizedBox(
                          height: AppLayout.getHeight(5),
                        ),
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: '😲',
                            style: TextStyle(fontSize: 30),
                          ),
                          TextSpan(
                            text: '😜',
                            style: TextStyle(fontSize: 50),
                          ),
                          TextSpan(
                            text: '😲',
                            style: TextStyle(fontSize: 30),
                          ),
                        ])),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

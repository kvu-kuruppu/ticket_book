// ignore_for_file: unnecessary_import, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticket_book/screens/hotel_screens.dart';
import 'package:ticket_book/screens/ticket_view.dart';
import 'package:ticket_book/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi there',
                          style: Styles.header3,
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Book Tickets',
                          style: Styles.header1,
                        ),
                      ],
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/1002204.jpg')),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white70),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      Icon(Icons.search,
                          color: Color.fromARGB(255, 170, 170, 168)),
                      Text(
                        'Search',
                        style: Styles.header4,
                      )
                    ],
                  ),
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
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor)),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                TicketView(),
                TicketView(),
              ],
            ),
          ),
          SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hotels', style: Styles.header2),
                InkWell(
                  onTap: () {
                    print('tapped');
                  },
                  child: Text('View All',
                      style: Styles.textStyle
                          .copyWith(color: Styles.primaryColor)),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                HotelScreens(),
                HotelScreens(),
                HotelScreens(),
                HotelScreens(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

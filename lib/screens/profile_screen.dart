// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ticket_book/utils/app_layout.dart';
import 'package:ticket_book/utils/app_styles.dart';
import 'package:ticket_book/widgets/column_layout.dart';
import 'package:ticket_book/widgets/layout_builder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          SizedBox(height: 40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images.png')),
                ),
              ),
              SizedBox(
                width: AppLayout.getHeight(10),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Book Tickets',
                    style: Styles.header1,
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(5),
                  ),
                  Text(
                    'New York',
                    style: Styles.header3,
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(8),
                  ),
                  Container(
                    padding: EdgeInsets.all(AppLayout.getHeight(5)),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(100)),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(3)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 250, 0, 0),
                          ),
                          child: Icon(
                            Icons.shield_sharp,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                        SizedBox(
                          width: AppLayout.getWidth(5),
                        ),
                        Text(
                          'Premium Status',
                          style: Styles.textStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => print('Tapped edit'),
                    child: Text(
                      'Edit',
                      style: Styles.header4,
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: AppLayout.getHeight(15),
          ),
          Divider(),
          SizedBox(
            height: AppLayout.getHeight(15),
          ),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(18))),
              ),
              Positioned(
                right: -45,
                top: -50,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30)),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    border: Border.all(width: 18, color: Colors.blue),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.lightbulb,
                        color: Colors.blueAccent,
                        size: 35,
                      ),
                    ),
                    SizedBox(
                      width: AppLayout.getHeight(12),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'You\'ve got a new reward',
                          style: Styles.header2.copyWith(color: Colors.white),
                        ),
                        Text(
                          'You\'ve 95 flights in a year',
                          style: Styles.header3.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppLayout.getHeight(25),
          ),
          Text(
            'Accumulated miles',
            style: Styles.header2,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(15),
              vertical: AppLayout.getHeight(15)
            ),
            child: Column(
              children: [
                SizedBox(
                  height: AppLayout.getHeight(15),
                ),
                Text(
                  '192802',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: AppLayout.getHeight(15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles accured',
                      style: Styles.header4.copyWith(fontSize: 18),
                    ),
                    Text(
                      '15 August 2022',
                      style: Styles.header4.copyWith(fontSize: 18),
                    ),
                  ],
                ),
                Divider(),
                SizedBox(
                  height: AppLayout.getHeight(15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: '23042',
                      secondText: 'Miles',
                      align: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'Airline CO',
                      secondText: 'Received from',
                      align: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                SizedBox(
                  height: AppLayout.getHeight(10),
                ),
                AppLayoutBuilder(sections: 10, isColor: false, width: 2,),
                SizedBox(
                  height: AppLayout.getHeight(10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: '24',
                      secondText: 'Miles',
                      align: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'McDonal\'s',
                      secondText: 'Received from',
                      align: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                SizedBox(
                  height: AppLayout.getHeight(10),
                ),
                AppLayoutBuilder(sections: 10, isColor: false, width: 2,),
                SizedBox(
                  height: AppLayout.getHeight(10),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: '52 340',
                      secondText: 'Miles',
                      align: CrossAxisAlignment.start,
                      isColor: false,
                    ),
                    AppColumnLayout(
                      firstText: 'Exuma',
                      secondText: 'Received from',
                      align: CrossAxisAlignment.end,
                      isColor: false,
                    ),
                  ],
                ),
                SizedBox(
                  height: AppLayout.getHeight(10),
                ),
              ],
            ),
          ),
          SizedBox(height: AppLayout.getHeight(25),),
          InkWell(
            onTap: () => print('Tapped \"How to get more miles\"'),
            child: Text(
              'How to get more miles',
              style: Styles.textStyle.copyWith(color: Styles.primaryColor),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

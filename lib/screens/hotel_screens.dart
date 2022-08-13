import 'package:flutter/material.dart';
import 'package:ticket_book/utils/app_layout.dart';
import 'package:ticket_book/utils/app_styles.dart';

class HotelScreens extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreens({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Price of hotel ${hotel['place']} is ${hotel['price']}\$');
    final size = AppLayout.getsize(context);
    return Container(
      width: size.width*0.6,
      height: AppLayout.getHeight(320),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15
      ),
      margin: const EdgeInsets.only(left: 20, top: 5, bottom: 20),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 243, 240, 240),
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 174, 174, 175),
            blurRadius: 2,
            spreadRadius: 2
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/${hotel['image']}'),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            '${hotel['place']}',
            style: Styles.header2.copyWith(color: Colors.black),
          ),
          SizedBox(height: 5),
          Text(
            '${hotel['destination']}',
            style: Styles.header3.copyWith(color: Colors.black),
          ),
          SizedBox(height: 8),
          Text(
            '\$${hotel['price']}/night',
            style: Styles.header1.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

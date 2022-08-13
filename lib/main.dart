// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ticket_book/screens/bottom_bar.dart';
import 'package:ticket_book/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   primaryColor: primary,
      // ),
      home: const BottomBar(),
      
    );
  }
}
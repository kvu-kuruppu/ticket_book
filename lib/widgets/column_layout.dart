import 'package:flutter/material.dart';
import 'package:ticket_book/utils/app_layout.dart';
import 'package:ticket_book/utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final CrossAxisAlignment align;
  final String firstText;
  final String secondText;
  final bool? isColor;

  const AppColumnLayout(
      {Key? key,
      required this.firstText,
      required this.secondText,
      required this.align,
      this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: align,
      children: [
        Text(
          firstText,
          style: Styles.header3
              .copyWith(color: isColor == null ? Colors.white : Colors.black),
        ),
        SizedBox(
          height: AppLayout.getHeight(5),
        ),
        Text(
          secondText,
          style: Styles.header4
              .copyWith(color: isColor == null ? Colors.white : Colors.black),
        ),
      ],
    );
  }
}

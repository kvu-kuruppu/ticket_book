import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:ticket_book/utils/app_layout.dart';
import 'package:ticket_book/utils/app_styles.dart';


class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: EdgeInsets.symmetric(
              vertical: AppLayout.getHeight(12),
              horizontal: AppLayout.getHeight(12)
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
              color: Colors.white
            ),
            child: Row(
              children: [
                Icon(icon),
                SizedBox(width: AppLayout.getHeight(10)),
                Text(
                  text,
                  style: Styles.textStyle,
                ),
              ],
            ),
          );
  }
}
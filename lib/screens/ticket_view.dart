// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ticket_book/utils/app_layout.dart';
import 'package:ticket_book/utils/app_styles.dart';
import 'package:ticket_book/widgets/column_layout.dart';
import 'package:ticket_book/widgets/layout_builder.dart';
import 'package:ticket_book/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({Key? key, required this.ticket, this.isColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return SizedBox(
      width: size.width * 0.9,
      height: AppLayout.getHeight(175),
      child: Container(
        margin: EdgeInsets.only(left: AppLayout.getHeight(20)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Blue part
            Container(
              decoration: BoxDecoration(
                  color: isColor == null
                      ? Color.fromARGB(255, 64, 44, 151)
                      : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(50),
                        child: Text(
                          '${ticket['from']['code']}',
                          style: Styles.header3.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                      const Spacer(),
                      ThichContainer(
                        isColor: isColor,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: AppLayoutBuilder(
                                sections: 6,
                                width: 3,
                                isColor: isColor,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.6,
                                child: Icon(
                                  Icons.airplanemode_active_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThichContainer(
                        isColor: isColor,
                      ),
                      const Spacer(),
                      SizedBox(
                        width: AppLayout.getWidth(50),
                        child: Text(
                          '${ticket['to']['code']}',
                          textAlign: TextAlign.end,
                          style: Styles.header3.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          '${ticket['from']['name']}',
                          style: Styles.header4.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                      Text(
                        '${ticket['flying time']}',
                        textAlign: TextAlign.center,
                        style: Styles.header4.copyWith(
                            color:
                                isColor == null ? Colors.white : Colors.black),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          '${ticket['to']['name']}',
                          textAlign: TextAlign.end,
                          style: Styles.header4.copyWith(
                              color: isColor == null
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Orange Part
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(AppLayout.getHeight(20)),
                          bottomRight: Radius.circular(AppLayout.getHeight(20)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: AppLayoutBuilder(
                        sections: 15,
                        isColor: isColor,
                        width: 5
                      ),
                    ),
                  ),
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(AppLayout.getHeight(20)),
                          bottomLeft: Radius.circular(AppLayout.getHeight(20)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Bottom orange part
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                          AppLayout.getHeight(isColor == null ? 21 : 0)),
                      bottomRight: Radius.circular(
                          AppLayout.getHeight(isColor == null ? 21 : 0)))),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: '${ticket['date']}',
                        secondText: 'Date',
                        align: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text(
                      //       '${ticket['date']}',
                      //       style: Styles.header3.copyWith(
                      //           color: isColor == null
                      //               ? Colors.white
                      //               : Colors.black),
                      //     ),
                      //     SizedBox(width: AppLayout.getWidth(5)),
                      //     Text(
                      //       'Date',
                      //       style: Styles.header4.copyWith(
                      //           color: isColor == null
                      //               ? Colors.white
                      //               : Colors.black),
                      //     ),
                      //   ],
                      // ),
                      AppColumnLayout(
                        firstText: '${ticket['depature time']}',
                        secondText: 'Depature Time',
                        align: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //       '${ticket['depature time']}',
                      //       style: Styles.header3.copyWith(
                      //           color: isColor == null
                      //               ? Colors.white
                      //               : Colors.black),
                      //     ),
                      //     SizedBox(width: AppLayout.getWidth(5)),
                      //     Text(
                      //       'Depature Time',
                      //       textAlign: TextAlign.end,
                      //       style: Styles.header4.copyWith(
                      //           color: isColor == null
                      //               ? Colors.white
                      //               : Colors.black),
                      //     ),
                      //   ],
                      // ),
                      AppColumnLayout(
                        firstText: '${ticket['number']}',
                        secondText: 'Number',
                        align: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.end,
                      //   children: [
                      //     Text(
                      //       '${ticket['number']}',
                      //       style: Styles.header3.copyWith(
                      //           color: isColor == null
                      //               ? Colors.white
                      //               : Colors.black),
                      //     ),
                      //     SizedBox(width: AppLayout.getWidth(5)),
                      //     Text(
                      //       'Number',
                      //       textAlign: TextAlign.end,
                      //       style: Styles.header4.copyWith(
                      //           color: isColor == null
                      //               ? Colors.white
                      //               : Colors.black),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

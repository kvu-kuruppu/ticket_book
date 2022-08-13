// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ticket_book/utils/app_layout.dart';
import 'package:ticket_book/utils/app_styles.dart';
import 'package:ticket_book/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return SizedBox(
      width: size.width*0.9,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: EdgeInsets.only(left: AppLayout.getHeight(20)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Blue part
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 64, 44, 151),
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
                          style: Styles.header3.copyWith(color: Colors.white),
                        ),
                      ),
                      const Spacer(),
                      ThichContainer(),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: LayoutBuilder(builder:
                                  (BuildContext context,
                                      BoxConstraints constraints) {
                                print(
                                    'The width is ${constraints.constrainWidth()}');
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.white)),
                                          )),
                                );
                              }),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.6,
                                child: Icon(
                                  Icons.airplanemode_active_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThichContainer(),
                      const Spacer(),
                      SizedBox(
                        width: AppLayout.getWidth(50),
                        child: Text(
                          '${ticket['to']['code']}',
                          textAlign: TextAlign.end,
                          style: Styles.header3.copyWith(color: Colors.white),
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
                          style: Styles.header4.copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        '${ticket['flying time']}',
                        textAlign: TextAlign.center,
                        style: Styles.header4.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          '${ticket['to']['name']}',
                          textAlign: TextAlign.end,
                          style: Styles.header4.copyWith(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Orange Part
            Container(
              color: Styles.orangeColor,
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
                      child: LayoutBuilder(builder:
                          (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                    width: 8,
                                    height: 1,
                                    child: DecoratedBox(
                                        decoration:
                                            BoxDecoration(color: Colors.white)),
                                  )),
                        );
                      }),
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
                  color: Styles.orangeColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${ticket['date']}',
                            style: Styles.header3.copyWith(color: Colors.white),
                          ),
                          SizedBox(width: AppLayout.getWidth(5)),
                          Text(
                            'Date',
                            style: Styles.header4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${ticket['depature time']}',
                            style: Styles.header3.copyWith(color: Colors.white),
                          ),
                          SizedBox(width: AppLayout.getWidth(5)),
                          Text(
                            'Depature Time',
                            textAlign: TextAlign.end,
                            style: Styles.header4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '${ticket['number']}',
                            style: Styles.header3.copyWith(color: Colors.white),
                          ),
                          SizedBox(width: AppLayout.getWidth(5)),
                          Text(
                            'Number',
                            textAlign: TextAlign.end,
                            style: Styles.header4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
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

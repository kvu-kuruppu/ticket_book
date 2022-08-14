// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_book/screens/ticket_view.dart';
import 'package:ticket_book/utils/app_info_list.dart';
import 'package:ticket_book/utils/app_layout.dart';
import 'package:ticket_book/utils/app_styles.dart';
import 'package:ticket_book/widgets/column_layout.dart';
import 'package:ticket_book/widgets/layout_builder.dart';
import 'package:ticket_book/widgets/ticket_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20),
            ),
            children: [
              SizedBox(height: AppLayout.getHeight(40)),
              Text('Tickets',
                  style: Styles.header1
                      .copyWith(fontSize: AppLayout.getHeight(35))),
              SizedBox(height: AppLayout.getHeight(20)),
              AppTicketTabs(
                firstTab: 'Upcoming',
                secondTab: 'Previous',
              ),
              SizedBox(height: 15),
              Container(
                  margin: EdgeInsets.only(right: 20),
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: false,
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                margin: EdgeInsets.only(left: 20.5, right: 20),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: 'Flutter DB',
                          secondText: 'Passenger',
                          align: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: '5221 364849',
                          secondText: 'Passport',
                          align: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppLayoutBuilder(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnLayout(
                          firstText: '364738 28274478',
                          secondText: 'Number of E-Ticket',
                          align: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: 'B2SG28',
                          secondText: 'Booking Code',
                          align: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    AppLayoutBuilder(
                      sections: 15,
                      isColor: false,
                      width: 5,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/Visa_Logo.png',
                                  scale: 11,
                                ),
                                Text(
                                  '*** 2462',
                                  style: Styles.header3
                                      .copyWith(color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: AppLayout.getHeight(5),
                            ),
                            Text('Payment Method',
                                style: Styles.header4
                                    .copyWith(color: Colors.black)),
                          ],
                        ),
                        AppColumnLayout(
                          firstText: '\S249.99',
                          secondText: 'Price',
                          align: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1,
              ),
              // BarCode
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(AppLayout.getHeight(21)),
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                    )),
                margin: EdgeInsets.only(left: 20.5, right: 20),
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      data: 'https://github.com/martinovovo',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              SizedBox(height: AppLayout.getHeight(25),),
              Container(
                  margin: EdgeInsets.only(right: 20),
                  child: TicketView(
                    ticket: ticketList[0],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}

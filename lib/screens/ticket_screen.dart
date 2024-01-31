import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20.0),
              vertical: AppLayout.getHeight(20.0)),
          children: [
            Gap(AppLayout.getHeight(40.0)),
            Text(
              "Tickets",
              style: Styles.headLineStyle,
            ),
            Gap(AppLayout.getHeight(20.0)),
            const AppTicketTabs(firstTab: "Upcoming", secondTab: "Previous"),
            Gap(AppLayout.getHeight(20.0)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15.0)),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            const SizedBox(height: 1.0),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0, // 水平
                vertical: 20.0, // 垂直
              ),
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              color: Colors.white,
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "Flutter DB",
                        secondText: "Passenger",
                        alignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnLayout(
                        firstText: "5221 364869",
                        secondText: "passport",
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20.0)),
                  const AppLayoutBuilderWidget(
                    sections: 15,
                    isColor: false,
                    width: 5.0,
                  ),
                  Gap(AppLayout.getHeight(20.0)),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "0055 441 77147",
                        secondText: "Number of E-ticket",
                        alignment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnLayout(
                        firstText: "B2SG28",
                        secondText: "Booking code",
                        alignment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20.0)),
                  const AppLayoutBuilderWidget(
                    sections: 15,
                    isColor: false,
                    width: 5.0,
                  ),
                  Gap(AppLayout.getHeight(20.0)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/visa.png",
                                scale: 11.0,
                              ),
                              Text(
                                "**** 2462",
                                style: Styles.headLineStyle3,
                              )
                            ],
                          ),
                          const Gap(5.0),
                          Text(
                            "Payment method",
                            style: Styles.headLineStyle4,
                          )
                        ],
                      ),
                      const AppColumnLayout(
                        firstText: "\$249",
                        secondText: "Price",
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 1.0),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(AppLayout.getHeight(21.0)),
                    bottomLeft: Radius.circular(AppLayout.getHeight(21.0)),
                  )),
              margin: EdgeInsets.only(
                  left: AppLayout.getHeight(15.0),
                  right: AppLayout.getHeight(15.0)),
              padding: EdgeInsets.only(
                  top: AppLayout.getHeight(20.0),
                  bottom: AppLayout.getHeight(20.0)),
              child: Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15.0)),
                child: ClipRRect(
                  borderRadius:
                      BorderRadius.circular(AppLayout.getHeight(15.0)),
                  child: BarcodeWidget(
                    data: 'https://github.com/koopa0',
                    barcode: Barcode.code128(),
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70.0,
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(20.0)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15.0)),
              child: TicketView(
                ticket: ticketList[0],
              ),
            ),
          ],
        ),
        Positioned(
          left: AppLayout.getHeight(22.0),
          top: AppLayout.getHeight(295.0),
          child: Container(
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2.0,
                )),
            child: CircleAvatar(
              maxRadius: 4.0,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
        Positioned(
          right: AppLayout.getHeight(22.0),
          top: AppLayout.getHeight(295.0),
          child: Container(
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Styles.textColor,
                  width: 2.0,
                )),
            child: CircleAvatar(
              maxRadius: 4.0,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
      ]),
    );
  }
}

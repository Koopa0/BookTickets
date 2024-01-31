import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:booktickets/widgets/icon_text_widget.dart';
import 'package:booktickets/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20.0),
            vertical: AppLayout.getHeight(20.0)),
        children: [
          Gap(AppLayout.getHeight(40.0)),
          Text(
            "What are\nyou looking for",
            style: Styles.headLineStyle
                .copyWith(fontSize: AppLayout.getWidth(35.0)),
          ),
          Gap(AppLayout.getHeight(20.0)),
          const AppTicketTabs(
            firstTab: "Airline ticket",
            secondTab: "Hotels",
          ),
          Gap(AppLayout.getHeight(25.0)),
          const AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: "Departure",
          ),
          Gap(AppLayout.getHeight(20.0)),
          const AppIconText(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          Gap(AppLayout.getHeight(25.0)),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppLayout.getWidth(18.0),
                horizontal: AppLayout.getWidth(15.0)),
            decoration: BoxDecoration(
                color: const Color(0xD91130CE),
                borderRadius: BorderRadius.circular(AppLayout.getWidth(10.0))),
            child: Center(
              child: Text(
                "find ticket",
                style: Styles.textStyle.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(40.0)),
          const AppDoubleTextWidget(
            bigText: "Upcoming Flights",
            smallText: "View all",
          ),
          Gap(AppLayout.getHeight(15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(430.0),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15.0),
                  vertical: AppLayout.getWidth(15.0),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(AppLayout.getHeight(20.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190.0),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12.0)),
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/sit.jpg"))),
                    ),
                    Gap(AppLayout.getHeight(12.0)),
                    Text(
                      "20% discount on the early booking of this flight. Don't miss",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(15.0),
                          horizontal: AppLayout.getHeight(15.0),
                        ),
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(205.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3Ab8BB),
                          borderRadius: BorderRadius.circular(
                            AppLayout.getHeight(18.0),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nfor survey",
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Gap(AppLayout.getHeight(10.0)),
                            Text(
                              "Take the survey about our services and get discount",
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 18.0),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30.0)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 18.0, color: const Color(0xFF189999)),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(15.0)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210.0),
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getHeight(15.0),
                        horizontal: AppLayout.getHeight(15.0)),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18.0)),
                        color: const Color(0xFFEC6545)),
                    child: Column(
                      children: [
                        Text(
                          "What ever",
                          style: Styles.headLineStyle2.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(15.0)),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: '😎',
                            style: TextStyle(fontSize: 38.0),
                          ),
                          TextSpan(
                            text: '😎',
                            style: TextStyle(fontSize: 50.0),
                          ),
                          TextSpan(
                            text: '😎',
                            style: TextStyle(fontSize: 38.0),
                          )
                        ])),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

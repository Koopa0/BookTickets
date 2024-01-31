import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(25.0),
            vertical: AppLayout.getHeight(20.0)),
        children: [
          Gap(AppLayout.getHeight(40.0)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                height: AppLayout.getHeight(100.0),
                width: AppLayout.getHeight(100.0),
                decoration: BoxDecoration(
                    // color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10.0)),
                    image: const DecorationImage(
                        image: AssetImage("assets/dash.png"))),
              ),
              Gap(AppLayout.getHeight(10.0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Book Tickets",
                    style: Styles.headLineStyle,
                  ),
                  Gap(AppLayout.getHeight(2.0)),
                  Text(
                    "Taipei",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500),
                  ),
                  Gap(AppLayout.getHeight(8.0)),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getHeight(3.0),
                        vertical: AppLayout.getHeight(3.0)),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(100.0)),
                        color: const Color(0xFFFEF4F3)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(3.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF526799),
                          ),
                          child: const Icon(
                            FluentSystemIcons.ic_fluent_shield_filled,
                            color: Colors.white,
                            size: 15.0,
                          ),
                        ),
                        Gap(AppLayout.getHeight(5.0)),
                        const Text(
                          "Premium status",
                          style: TextStyle(
                              color: Color(0xFF526799),
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "Edit",
                      style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor,
                          fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              )
            ],
          ),
          Gap(AppLayout.getHeight(8.0)),
          Divider(color: Colors.grey.shade300),
          Gap(AppLayout.getHeight(8.0)),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Styles.primaryColor,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(10.0))),
              ),
              Positioned(
                right: -45.0,
                top: -45.0,
                child: Container(
                  padding: EdgeInsets.all(AppLayout.getHeight(30.0)),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 18.0,
                        color: const Color(0xFF264CD2),
                      )),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: AppLayout.getHeight(20.0),
                    horizontal: AppLayout.getHeight(20.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 25.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                        color: Styles.primaryColor,
                        size: 30.0,
                      ),
                    ),
                    Gap(AppLayout.getHeight(12.0)),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You've got a new award",
                          style: Styles.headLineStyle2.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "You have 95 flight in a year",
                          style: Styles.headLineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 16.0),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(25.0)),
          Text(
            "Accumulated miles",
            style: Styles.headLineStyle2,
          ),
          Gap(AppLayout.getHeight(15.0)),
          Container(
            padding:
                EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15.0)),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(18.0)),
                color: Styles.backgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 1.0,
                    spreadRadius: 1.0,
                  )
                ]),
            child: Column(
              children: [
                Gap(AppLayout.getHeight(15.0)),
                Text(
                  "192282",
                  style: TextStyle(
                      fontSize: 45.0,
                      color: Styles.textColor,
                      fontWeight: FontWeight.w600),
                ),
                Gap(AppLayout.getHeight(20.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16.0),
                    ),
                    Text(
                      "23 May 2024",
                      style: Styles.headLineStyle4.copyWith(fontSize: 16.0),
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(4.0)),
                Divider(color: Colors.grey.shade300),
                Gap(AppLayout.getHeight(4.0)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "23 042",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnLayout(
                      firstText: "Airline CO",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(10.0)),
                const AppLayoutBuilderWidget(sections: 12, isColor: true),
                Gap(AppLayout.getHeight(10.0)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "24",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnLayout(
                      firstText: "McDonal's",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(10.0)),
                const AppLayoutBuilderWidget(sections: 12, isColor: true),
                Gap(AppLayout.getHeight(10.0)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(
                      firstText: "52 340",
                      secondText: "Miles",
                      alignment: CrossAxisAlignment.start,
                      isColor: true,
                    ),
                    AppColumnLayout(
                      firstText: "Exuma",
                      secondText: "Received from",
                      alignment: CrossAxisAlignment.end,
                      isColor: true,
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(10.0)),
                const AppLayoutBuilderWidget(sections: 12, isColor: true),
                Gap(AppLayout.getHeight(25.0)),
                Center(
                  child: Text(
                    "How to get more miles",
                    style: Styles.textStyle.copyWith(
                      color: Styles.primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:booktickets/screens/hotel_screen.dart';
import 'package:booktickets/screens/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/double_text_widget.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.backgroundColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const Gap(40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // 讓兩個Text對齊
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headLineStyle3,
                        ),
                        const Gap(5.0),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle,
                        ),
                      ],
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/dash.png"),
                          )),
                    ),
                  ],
                ),
                const Gap(25.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 12.0),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205)),
                      Text(
                        "Search",
                        style: Styles.headLineStyle4,
                      ),
                    ],
                  ),
                ),
                const Gap(40.0),
                const AppDoubleTextWidget(
                  bigText: "Upcoming Flights",
                  smallText: "View all",
                ),
              ],
            ),
          ),
          const Gap(15.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
                children: ticketList
                    .map((singleTicket) => TicketView(ticket: singleTicket))
                    .toList()),
          ),
          const Gap(15.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: const AppDoubleTextWidget(
              bigText: "Hotels",
              smallText: "View all",
            ),
          ),
          const Gap(15.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: hotelList
                  .map((singleHotel) => HotelScreen(hotel: singleHotel))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:booktickets/widgets/column_layout.dart';
import 'package:booktickets/widgets/layout_builder_widget.dart';
import 'package:booktickets/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TicketView({required this.ticket, super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(179.0),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getWidth(16.0)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            showing the blue part of the card/ticket
             */
            Container(
              decoration: BoxDecoration(
                  color:
                      isColor == null ? const Color(0xFF526799) : Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21.0)),
                      topRight: Radius.circular(AppLayout.getHeight(21.0)))),
              padding: EdgeInsets.all(AppLayout.getHeight(16.0)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("${ticket['from']["code"]}",
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3),
                      const Spacer(),
                      const ThickContainer(isColor: true),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24.0),
                            child: AppLayoutBuilderWidget(
                                isColor: isColor, sections: 6),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(Icons.local_airport_rounded,
                                  color: isColor == null
                                      ? Colors.white
                                      : const Color(0xFF8ACCF7)),
                            ),
                          ),
                        ],
                      )),
                      const ThickContainer(isColor: true),
                      const Spacer(),
                      Text("${ticket['to']["code"]}",
                          style: isColor == null
                              ? Styles.headLineStyle3
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle3)
                    ],
                  ),
                  const Gap(3.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100.0),
                        child: Text(
                          "${ticket['from']["name"]}",
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        "${ticket['flying_time']}",
                        style: isColor == null
                            ? Styles.headLineStyle4
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100.0),
                        child: Text(
                          "${ticket['to']['name']}",
                          textAlign: TextAlign.end,
                          style: isColor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            /*
            showing the orange part of the card/ticket
             */
            Container(
              color: isColor == null ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20.0),
                    width: AppLayout.getWidth(10.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null
                              ? Colors.grey.shade200
                              : Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight:
                                Radius.circular(AppLayout.getHeight(10.0)),
                            bottomRight:
                                Radius.circular(AppLayout.getHeight(10.0)),
                          )),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.all(AppLayout.getHeight(12.0)),
                    child: AppLayoutBuilderWidget(
                      width: 5.0,
                      isColor: isColor,
                      sections: 15,
                    ),
                  )),
                  SizedBox(
                    height: AppLayout.getHeight(20.0),
                    width: AppLayout.getWidth(10.0),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: isColor == null
                              ? Colors.grey.shade200
                              : Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppLayout.getHeight(10.0)),
                            bottomLeft:
                                Radius.circular(AppLayout.getHeight(10.0)),
                          )),
                    ),
                  )
                ],
              ),
            ),
            /*
            bottom part of the orange card/ticket
             */
            Container(
              decoration: BoxDecoration(
                  color: isColor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(
                          AppLayout.getHeight(isColor == null ? 21.0 : 0)),
                      bottomRight: Radius.circular(
                          AppLayout.getHeight(isColor == null ? 21.0 : 0)))),
              padding: const EdgeInsets.only(
                  left: 16.0, top: 10.0, right: 16.0, bottom: 16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: "${ticket['date']}",
                        secondText: "DATE",
                        alignment: CrossAxisAlignment.start,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: "${ticket['departure_time']}",
                        secondText: "Departure time",
                        alignment: CrossAxisAlignment.center,
                        isColor: isColor,
                      ),
                      AppColumnLayout(
                        firstText: "${ticket['number']}",
                        secondText: "Number",
                        alignment: CrossAxisAlignment.end,
                        isColor: isColor,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

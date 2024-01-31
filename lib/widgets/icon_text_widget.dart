import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({required this.icon, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(12.0)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10.0))),
      child: Row(
        children: [
          Gap(AppLayout.getWidth(10.0)),
          Icon(
            icon,
            color: const Color(0xFFbFc2DF),
          ),
          Gap(AppLayout.getWidth(15.0)),
          Text(
            text,
            style: Styles.textStyle,
          )
        ],
      ),
    );
  }
}

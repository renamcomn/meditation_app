import 'package:flutter/material.dart';

import 'bottom_nav_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BottomNavItem(title: "Today", icon: "assets/icons/calendar.svg", press: () { print("today"); },),
        BottomNavItem(title: "All Exercises", icon: "assets/icons/gym.svg", press: () { print("all"); }, isActive: true,),
        BottomNavItem(title: "Settings", icon: "assets/icons/Settings.svg", press: () { print("settings"); },),
      ],),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class BottomNavItem extends StatelessWidget {

  final String title;
  final String icon;
  final Function press;
  final bool isActive;
  
  const BottomNavItem({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () { press(); },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(icon, color: isActive ? kActiveIconColor : kTextColor,),
          Text(title, style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),),
        ],
      ),
    );
  }
}

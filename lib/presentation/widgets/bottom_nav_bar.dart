import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/menu_data.dart';
import 'package:film_mate/presentation/widgets/nav_item.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: kBottomNavColor,
        borderRadius: BorderRadius.circular(85),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavItem(
            iconData: icons[0],
            item: 0,
            tooltip: "Home",
          ),
          NavItem(
            iconData: icons[1],
            item: 1,
            tooltip: "Seach",
          ),
          NavItem(
            iconData: icons[2],
            item: 2,
            tooltip: "Explore",
          ),
          NavItem(
            iconData: icons[3],
            item: 3,
            tooltip: "Accounts",
          ),
        ],
      ),
    );
  }
}

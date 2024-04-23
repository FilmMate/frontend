import 'package:film_mate/core/colors.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget {
  final List<String> tabs;
  final Function(int) onTabSelected;
  final int selectedIndex;
  const CustomTabBar(
      {super.key,
      required this.tabs,
      required this.onTabSelected,
      required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: tabs.asMap().entries.map((entry) {
          final index = entry.key;
          final tabText = entry.value;
          final isSelected = index == selectedIndex;

          return GestureDetector(
            onTap: () => onTabSelected(index),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: isSelected ? kBottomNavColor : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isSelected
                      ? Colors.white.withOpacity(0.2)
                      : Colors.transparent,
                  width: isSelected ? 2.0 : 0.0,
                ),
              ),
              child: Text(
                tabText,
                style: TextStyle(
                  color: isSelected ? Colors.white : kWhite,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

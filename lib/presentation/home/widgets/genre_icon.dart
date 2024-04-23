import 'package:film_mate/core/colors.dart';
import 'package:flutter/material.dart';

class GenreIcon extends StatelessWidget {
  const GenreIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: kSelectedBackgroundColor, // Border color
          width: 2, // Border width
        ),
      ),
      child: const CircleAvatar(
        radius: 30,
        backgroundColor: kBottomNavColor,
      ),
    );
  }
}

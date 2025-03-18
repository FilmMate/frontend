import 'package:film_mate/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class BuildProfileImage extends StatelessWidget {
  final String imageUrl;
  const BuildProfileImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return imageUrl.isEmpty
        ? Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
            ),
          )
        : CircleAvatar(
            radius: 50,
            backgroundColor: kSelectedBackgroundColor,
            backgroundImage: AssetImage(imageUrl),
          );
  }
}

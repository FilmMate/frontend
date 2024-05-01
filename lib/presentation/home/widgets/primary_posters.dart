import 'package:cached_network_image/cached_network_image.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/domain/models/endpoints.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PrimaryPosters extends StatelessWidget {
  final String image;
  const PrimaryPosters({
    super.key,
    required this.image,
  });
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: "${EndPoints.image}$image",
      imageBuilder: (context, imageProvider) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: kBottomNavColor,
        highlightColor: Colors.grey[100]!,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: kBottomNavColor),
        ),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      fit: BoxFit.cover,
    );
  }
}

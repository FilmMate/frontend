import 'package:cached_network_image/cached_network_image.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/domain/models/endpoints.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Poster extends StatelessWidget {
  final String image;
  const Poster(
      {super.key,
      required this.width,
      required this.height,
      required this.image});

  final double width, height;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: "${EndPoints.image}/$image",
      imageBuilder: (context, imageProvider) => Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: imageProvider,
            fit: BoxFit.cover,
          ),
        ),
      ),
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: kBottomNavColor,
        highlightColor: Colors.grey[100]!,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: kBottomNavColor),
          width: width,
          height: height,
        ),
      ),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      fit: BoxFit.cover,
    );
  }
}

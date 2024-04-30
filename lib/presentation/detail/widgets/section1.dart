import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/presentation/detail/widgets/poster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Section1 extends StatelessWidget {
  const Section1({
    super.key,
    required this.size,
    required this.title,
    required this.duration,
    required this.release,
    required this.genres,
    required this.rating,
    required this.image,
  });

  final Size size;
  final String title, duration, release, image;
  final List<String> genres;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Poster(
            image: image,
            width: size.width * 0.6,
            height: size.width * 0.9,
          ),
          kHeightS,
          Container(
            constraints: BoxConstraints(
              maxHeight: size.width * 0.30,
            ),
            child: Text(
              title,
              maxLines: 3,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: kWhite,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints(
              maxHeight: size.width * 0.30,
            ),
            child: Text(
              '${release.substring(0, 4)} | ${genres.join(', ')}${duration == "0h 0m" ? "" : " | $duration"}',
              maxLines: 3,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: kWhite,
                fontWeight: FontWeight.w100,
                fontSize: 12,
              ),
            ),
          ),
          kHeightXS,
          RatingBarIndicator(
            rating: rating,
            itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemCount: 5,
            itemSize: 30.0,
            direction: Axis.horizontal,
          )
        ],
      ),
    );
  }
}

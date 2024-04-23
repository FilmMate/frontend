import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/domain/models/endpoints.dart';
import 'package:film_mate/presentation/explore/widgets/video_widget.dart';
import 'package:flutter/material.dart';

class MediaContainer extends StatelessWidget {
  final String video;
  final String image;
  final String title;
  final String overview;
  final String duration;
  final List<String> genre;
  const MediaContainer({
    super.key,
    required this.video,
    required this.image,
    required this.title,
    required this.overview,
    required this.duration,
    required this.genre,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        VideoWidget(videoUrl: video, imageUrl: "${EndPoints.image}$image"),
        kHeightS,
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.width *
                  0.30, // Limit width to screen width - 10
            ),
            child: Text(
              title,
              maxLines: 3,
              style: const TextStyle(
                color: kWhite,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
        ),
        kHeightXS,
        Padding(
          padding: const EdgeInsets.only(left: 6.0),
          child: Text("${genre.join(', ')} | $duration",
              style: const TextStyle(
                  color: kWhite, fontWeight: FontWeight.normal, fontSize: 12)),
        ),
        kHeightXS,
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
          child: Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.width *
                  0.30, // Limit width to screen width - 10
            ),
            child: Text(
              overview,
              maxLines: 5,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                color: kWhite,
                fontWeight: FontWeight.w100,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

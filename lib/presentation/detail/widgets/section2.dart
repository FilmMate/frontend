import 'dart:developer';

import 'package:film_mate/application/detail/detail_bloc.dart';
import 'package:film_mate/application/explore/explore_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/presentation/explore/widgets/video_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:film_mate/domain/models/endpoints.dart';

class Section2 extends StatelessWidget {
  final String overview, lang, release, image;
  final String? video;
  const Section2({
    super.key,
    required this.size,
    required this.overview,
    required this.video,
    required this.lang,
    required this.release,
    required this.image,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Plot',
            style: TextStyle(
              color: kWhite,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
          Container(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.width *
                  0.45, // Limit width to screen width - 10
            ),
            child: Text(
              overview,
              maxLines: 8,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                color: kWhite,
                fontWeight: FontWeight.w100,
                fontSize: 12,
              ),
            ),
          ),
          kHeightS,
          Text(
            "Language : $lang",
            style: const TextStyle(
              color: kWhite,
              fontWeight: FontWeight.w100,
              fontSize: 12,
            ),
          ),
          Text(
            "Release : $release",
            style: const TextStyle(
              color: kWhite,
              fontWeight: FontWeight.w100,
              fontSize: 12,
            ),
          ),
          kHeightS,
          BlocBuilder<DetailBloc, DetailState>(
            builder: (context, state) {
              if (state.pressedTrailer) {
                return VideoWidget(
                    videoUrl: video!, imageUrl: "${EndPoints.image}/$image");
              }
              return SizedBox(
                  height: size.width * 0.15,
                  width: size.width,
                  child: video != null
                      ? ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                kSelectedBackgroundColor), // Set background color
                          ),
                          onPressed: () {
                            log("pressed");
                            BlocProvider.of<DetailBloc>(context).add(
                                const DetailEvent.triggerTrailer(
                                    trigger: true));
                          },
                          child: const Text(
                            "Watch Trailer",
                            style: TextStyle(
                                fontSize: 17,
                                color: kWhite,
                                fontWeight: FontWeight.bold),
                          ))
                      : ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              kBottomNavColor,
                            ), // Set background color
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Trailer Unavailable",
                            style: TextStyle(
                                fontSize: 17,
                                color: kWhite,
                                fontWeight: FontWeight.bold),
                          )));
            },
          ),
          kHeightS,
        ],
      ),
    );
  }
}

import 'package:film_mate/application/explore/explore_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'widgets/poster.dart';

class ScreenDetail extends StatelessWidget {
  const ScreenDetail({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ExploreBloc>(context)
          .add(const ExploreEvent.triggerDetail(trigger: false));
    });
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: kWhite),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Poster(
                    width: size.width * 0.6,
                    height: size.width * 0.9,
                  ),
                  kHeightS,
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: size.width * 0.30,
                    ),
                    child: const Text(
                      'Premalu',
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
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
                    child: const Text(
                      '2024 | Romance | 2h 30m',
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kWhite,
                        fontWeight: FontWeight.w100,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  kHeightXS,
                  RatingBarIndicator(
                    rating: 4.5,
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
            ),
            Padding(
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
                    child: const Text(
                      "Following their explosive showdown, Godzilla and Kong must reunite against a colossal undiscovered threat hidden within our world, challenging their very existence – and our own.",
                      maxLines: 8,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        color: kWhite,
                        fontWeight: FontWeight.w100,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  kHeightS,
                  SizedBox(
                      height: size.width * 0.15,
                      width: size.width,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                kSelectedBackgroundColor), // Set background color
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Watch Trailer",
                            style: TextStyle(
                                fontSize: 17,
                                color: kWhite,
                                fontWeight: FontWeight.bold),
                          ))),
                  kHeightS,
                  const Text(
                    'Cast and Crew',
                    style: TextStyle(
                      color: kWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                  kHeightS,
                ],
              ),
            ),
            SizedBox(
              height: size.width,
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Director",
                        style: TextStyle(
                          color: kWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        "Joshua Panackal",
                        style: TextStyle(
                          color: kWhite,
                          fontWeight: FontWeight.w100,
                          fontSize: 12,
                        ),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) => const Divider(),
                itemCount: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}

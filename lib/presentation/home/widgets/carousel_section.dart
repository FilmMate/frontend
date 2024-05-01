import 'dart:developer';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:film_mate/application/home/home_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/presentation/detail/detail_screen_primary.dart';
import 'package:film_mate/presentation/home/widgets/primary_posters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

class CarouselSection extends StatelessWidget {
  const CarouselSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.isCarouselError) {
          return const Text("Error");
        }
        if (state.isCarouselLoading || state.carouselList.isEmpty) {
          return Shimmer.fromColors(
            baseColor: kBottomNavColor,
            highlightColor: Colors.grey[100]!,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  height: size.width,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: kBottomNavColor),
                ),
              ),
            ),
          );
        }
        return Column(
          children: [
            CarouselSlider.builder(
              itemBuilder: (context, index, realIndex) {
                return GestureDetector(
                  onTap: () {
                    log(state.carouselList[index].id.toString());
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScreenDetailPrimary(
                              type: "movie",
                              id: state.carouselList[index].id!,
                            )));
                  },
                  child: PrimaryPosters(
                    image: state.carouselList[index].posterPath!,
                  ),
                );
              },
              itemCount: 5,
              options: CarouselOptions(
                height: size.width,
                aspectRatio: 4 / 5,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) {
                  BlocProvider.of<HomeBloc>(context)
                      .add(HomeEvent.changeIndicator(index: index));
                },
              ),
            ),
            kHeightXS,
            DotsIndicator(
              dotsCount: 5,
              position: state.carouselIndex,
              decorator: DotsDecorator(
                activeColor: kSelectedBackgroundColor,
                size: const Size.square(6.0),
                activeSize: const Size(18.0, 9.0),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
            kHeightXS
          ],
        );
      },
    );
  }
}

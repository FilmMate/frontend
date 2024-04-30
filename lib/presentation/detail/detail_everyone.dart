import 'package:film_mate/application/detail/detail_bloc.dart';
import 'package:film_mate/application/explore/explore_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/domain/models/cast_and_crew.dart/cast_and_crew.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/cast_section.dart';
import 'widgets/crew_section.dart';
import 'widgets/section1.dart';
import 'widgets/section2.dart';

class ScreenDetailEveryone extends StatelessWidget {
  final String title, duration, overview, release, image, lang, backDrop;
  final double rating;
  final List<String> genres;
  final List<Crew> crew;
  final List<Cast> cast;
  final String? video;

  const ScreenDetailEveryone(
      {super.key,
      required this.title,
      required this.duration,
      required this.overview,
      required this.release,
      required this.rating,
      required this.genres,
      required this.video,
      required this.lang,
      required this.image,
      required this.crew,
      required this.cast,
      required this.backDrop});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ExploreBloc>(context)
          .add(const ExploreEvent.triggerDetail(trigger: false));
      BlocProvider.of<DetailBloc>(context)
          .add(const DetailEvent.triggerTrailer(trigger: false));
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
            Section1(
                size: size,
                title: title,
                duration: duration,
                release: release,
                genres: genres,
                rating: rating,
                image: image),
            Section2(
              size: size,
              overview: overview,
              video: video,
              lang: lang,
              release: release,
              image: backDrop,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Cast',
                style: TextStyle(
                  color: kWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ),
            kHeightS,
            cast.isEmpty ? kHeightXS : CastSection(size: size, cast: cast),
            kHeightS,
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                'Crew',
                style: TextStyle(
                  color: kWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ),
            kHeightS,
            crew.isEmpty ? kHeightXS : CrewSection(size: size, crew: crew)
          ],
        ),
      ),
    );
  }
}

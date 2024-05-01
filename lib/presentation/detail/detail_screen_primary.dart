import 'package:film_mate/application/detail/detail_bloc.dart';
import 'package:film_mate/application/explore/explore_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/cast_section.dart';
import 'widgets/crew_section.dart';
import 'widgets/section1.dart';
import 'widgets/section2.dart';

class ScreenDetailPrimary extends StatelessWidget {
  final String type;
  final int id;

  const ScreenDetailPrimary({
    super.key,
    required this.type,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ExploreBloc>(context)
          .add(const ExploreEvent.triggerDetail(trigger: false));
      BlocProvider.of<DetailBloc>(context)
          .add(DetailEvent.getDetails(type: type, id: id));
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
        child: BlocBuilder<DetailBloc, DetailState>(
          builder: (context, state) {
            if (state.isLoading ||
                state.detailData.posterPath == null ||
                state.detailData.backdropPath == null) {
              return SizedBox(
                  height: size.height,
                  width: size.width,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ));
            }
            if (state.isError) {
              return const Center(
                child: Text("Error"),
              );
            }
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Section1(
                    size: size,
                    title: state.detailData.title ?? "",
                    duration: state.detailData.duration ?? "0h 0m",
                    release: state.detailData.releaseDate ?? "        ",
                    genres: state.detailData.genres ?? [],
                    rating: state.detailData.rating ?? 0,
                    image: state.detailData.posterPath ?? ""),
                Section2(
                  size: size,
                  overview: state.detailData.overview ?? "",
                  video: state.detailData.video,
                  lang: state.detailData.lang ?? "",
                  release: state.detailData.releaseDate ?? "",
                  image: state.detailData.backdropPath ?? "",
                ),
                state.detailData.cast.isEmpty
                    ? kHeightXS
                    : const Padding(
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
                state.detailData.cast.isEmpty
                    ? kHeightXS
                    : CastSection(size: size, cast: state.detailData.cast),
                kHeightS,
                state.detailData.crew.isEmpty
                    ? kHeightXS
                    : const Padding(
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
                state.detailData.crew.isEmpty
                    ? kHeightXS
                    : CrewSection(size: size, crew: state.detailData.crew)
              ],
            );
          },
        ),
      ),
    );
  }
}

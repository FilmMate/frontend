import 'package:film_mate/application/home/home_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/carousel_section.dart';
import 'widgets/genre_section.dart';
import 'widgets/home_list.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context)
          .add(const HomeEvent.getcarouselPosters());
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getTopMovie());
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getTopTv());
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getTopRatedTv());
      BlocProvider.of<HomeBloc>(context)
          .add(const HomeEvent.getTopRatedMovie());
    });
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "FilmMate",
            style: TextStyle(
              color: kWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: SizedBox(
              width: size.width,
              child: BlocBuilder<HomeBloc, HomeState>(
                builder: (context, state) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CarouselSection(size: size),
                      const GenreSection(),
                      kHeightS,
                      HomeList(
                        size: size,
                        title: "Top 10 TV Shows",
                        data: state.topTvList,
                        isError: state.isTopTvError,
                        isLoading: state.isTopTvLoading,
                        type: "tv",
                      ),
                      kHeightS,
                      HomeList(
                        size: size,
                        title: "Top 10 Movies",
                        data: state.topMovieList,
                        isError: state.isTopMovieError,
                        isLoading: state.isTopMovieLoading,
                        type: "movie",
                      ),
                      kHeightS,
                      kHeightS,
                      const GenreSection(),
                      kHeightS,
                      HomeList(
                        size: size,
                        title: "Top Rated TV Shows",
                        data: state.topRatedTv,
                        isLoading: state.isTopRatedTvLoading,
                        isError: state.isTopRatedTvError,
                        length: state.topRatedTv.length,
                        type: "tv",
                      ),
                      kHeightS,
                      HomeList(
                        size: size,
                        title: "Top Rated Movies",
                        data: state.topRatedMovies,
                        isError: state.isTopRatedMovieError,
                        isLoading: state.isTopRatedMovieLoading,
                        length: state.topRatedMovies.length,
                        type: "movie",
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ));
  }
}

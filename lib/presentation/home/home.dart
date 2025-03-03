import 'package:film_mate/application/home/home_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/carousel_section.dart';
import 'widgets/language_section.dart';
import 'widgets/home_list.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      BlocProvider.of<HomeBloc>(context)
          .add(const HomeEvent.getcarouselPosters());
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getTopMovie());
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getTopTv());
      BlocProvider.of<HomeBloc>(context).add(const HomeEvent.getTopRatedTv());
      BlocProvider.of<HomeBloc>(context)
          .add(const HomeEvent.getTopRatedMovie());
      BlocProvider.of<HomeBloc>(context).add(HomeEvent.getGenreResult1());
      BlocProvider.of<HomeBloc>(context).add(HomeEvent.getGenreResult2());
      BlocProvider.of<HomeBloc>(context).add(HomeEvent.getGenreResult3());
      BlocProvider.of<HomeBloc>(context).add(HomeEvent.getGenreResult4());
      BlocProvider.of<HomeBloc>(context).add(HomeEvent.getGenreResultTv1());
      BlocProvider.of<HomeBloc>(context).add(HomeEvent.getGenreResultTv2());
      BlocProvider.of<HomeBloc>(context).add(HomeEvent.getGenreResultTv3());
      BlocProvider.of<HomeBloc>(context).add(HomeEvent.getFilmMateMovieList());
      BlocProvider.of<HomeBloc>(context).add(HomeEvent.getFilmMateTvList());
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
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Discover Movies by Language",
                                style: TextStyle(
                                    color: kWhite,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                            kHeightS,
                            LanguageSection(),
                          ],
                        ),
                      ),
                      HomeList(
                        size: size,
                        title: "FilmMate's Movie Picks",
                        data: state.filmMateMovieList,
                        isError: state.isFilmMateMovieError,
                        isLoading: state.isFilmMateMovieLoading,
                        type: "movie",
                        length: state.filmMateMovieList.length,
                      ),
                      HomeList(
                        size: size,
                        title: "FilmMate's Tv Picks",
                        data: state.filmMateTvList,
                        isError: state.isFilmMateTvError,
                        isLoading: state.isFilmMateTvLoading,
                        type: "tv",
                        length: state.filmMateTvList.length,
                      ),
                      // TempGenreSection(size: size),
                      HomeList(
                        size: size,
                        title: "${state.genreNames[0]} Movies",
                        data: state.genreResult1,
                        isLoading: state.isGenreLoading1,
                        isError: state.isGenreError1,
                        length: state.genreResult1.length,
                        type: "movie",
                      ),
                      HomeList(
                        size: size,
                        title: "${state.genreNames[1]} Movies",
                        data: state.genreResult2,
                        isLoading: state.isGenreLoading2,
                        isError: state.isGenreError2,
                        length: state.genreResult2.length,
                        type: "movie",
                      ),
                      HomeList(
                        size: size,
                        title: "${state.genreNames[2]} Movies",
                        data: state.genreResult3,
                        isLoading: state.isGenreLoading3,
                        isError: state.isGenreError3,
                        length: state.genreResult3.length,
                        type: "movie",
                      ),
                      HomeList(
                        size: size,
                        title: "${state.genreNames[3]} Movies",
                        data: state.genreResult4,
                        isLoading: state.isGenreLoading4,
                        isError: state.isGenreError4,
                        length: state.genreResult4.length,
                        type: "movie",
                      ),
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
                      kHeightS,
                      HomeList(
                        size: size,
                        title: "Action & Adventure TV Shows",
                        data: state.genreResultTv1,
                        isError: state.isGenreErrorTv1,
                        isLoading: state.isGenreLoadingTv1,
                        length: state.genreResultTv1.length,
                        type: "TV",
                      ),
                      HomeList(
                        size: size,
                        title: "Sci-Fi & Fantasy TV Shows",
                        data: state.genreResultTv2,
                        isError: state.isGenreErrorTv2,
                        isLoading: state.isGenreLoadingTv2,
                        length: state.genreResultTv2.length,
                        type: "TV",
                      ),
                      HomeList(
                        size: size,
                        title: "Mystery Shows",
                        data: state.genreResultTv3,
                        isError: state.isGenreErrorTv3,
                        isLoading: state.isGenreLoadingTv3,
                        length: state.genreResultTv3.length,
                        type: "TV",
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

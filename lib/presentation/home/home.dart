import 'dart:developer';

import 'package:film_mate/application/home/home_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/infrastructure/genres/fetch_genre.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/carousel_section.dart';
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
      final genre = await fetchUserGenres();
      final List<String> gidNames =
          genre.map<String>((item) => item['name'].toString()).toList();
      BlocProvider.of<HomeBloc>(context)
          .add(HomeEvent.getGenreNames(gnames: gidNames));
      BlocProvider.of<HomeBloc>(context)
          .add(HomeEvent.getGenreResult1(gid: genre[0]['gid']));
      BlocProvider.of<HomeBloc>(context)
          .add(HomeEvent.getGenreResult2(gid: genre[1]['gid']));
      BlocProvider.of<HomeBloc>(context)
          .add(HomeEvent.getGenreResult3(gid: genre[2]['gid']));
      BlocProvider.of<HomeBloc>(context)
          .add(HomeEvent.getGenreResult4(gid: genre[3]['gid']));
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
                      // const GenreSection(),
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
                    ],
                  );
                },
              ),
            ),
          ),
        ));
  }
}


// class TempGenreSection extends StatelessWidget {
//   const TempGenreSection({super.key, required this.size});
//   final Size size;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: size.width * 0.2,
//       child: ListView.builder(
//         shrinkWrap: true,
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.only(left: 10.0, right: 4),
//             child: BlocBuilder<HomeBloc, HomeState>(
//               builder: (context, state) {
//                 return GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: ((context) => GenreResult(
//                                   gid: state.genres[index].gid,
//                                   name: state.genres[index].name,
//                                 ))));
//                   },
//                   child: Container(
//                     width: size.width * 0.4,
//                     decoration: BoxDecoration(
//                         border: Border.all(
//                           color:
//                               kSelectedBackgroundColor, // Set border color here
//                           width: 2.0, // Set border width here
//                         ),
//                         borderRadius: BorderRadius.circular(20)),
//                     child: Center(
//                       child: Text(
//                         state.genres.isNotEmpty
//                             ? state.genres[index].name
//                             : "Reload",
//                         style: const TextStyle(
//                             color: kWhite, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           );
//         },
//         itemCount: 4,
//         // separatorBuilder: (context, index) => SizedBox(
//         //   width: 5,
//         // ),
//       ),
//     );
//   }
// }

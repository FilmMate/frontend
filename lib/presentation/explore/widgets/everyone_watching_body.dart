import 'package:film_mate/application/explore/explore_bloc.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/presentation/detail/detail_everyone.dart';
import 'package:film_mate/presentation/explore/widgets/media_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EveryOneWatchingBody extends StatelessWidget {
  const EveryOneWatchingBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: BlocBuilder<ExploreBloc, ExploreState>(
              builder: (context, state) {
                if (state.isLoadingMovie) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state.isErrorMovie) {
                  return const Center(
                    child: Text("Error"),
                  );
                }
                return SizedBox(
                  height: size.height,
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        if (index == state.latestMovies.length - 1) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ScreenDetailEveryone(
                                    backDrop: state.latestMovies[index].backdropPath!,
                                        duration:
                                            state.latestMovies[index].duration!,
                                        overview:
                                            state.latestMovies[index].overview!,
                                        title: state.latestMovies[index].title!,
                                        video: state.latestMovies[index].video!,
                                        image: state
                                            .latestMovies[index].backdropPath!,
                                        genres:
                                            state.latestMovies[index].genres!,
                                        release: state
                                            .latestMovies[index].releaseDate!,
                                        rating:
                                            state.latestMovies[index].rating!,
                                        lang: state.latestMovies[index].lang!,
                                        crew: state.latestMovies[index].crew!,
                                        cast: state.latestMovies[index].cast!,
                                      )));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 200),
                              child: MediaContainer(
                                duration: state.latestMovies[index].duration!,
                                overview: state.latestMovies[index].overview!,
                                title: state.latestMovies[index].title!,
                                video: state.latestMovies[index].video!,
                                image: state.latestMovies[index].backdropPath!,
                                genre: state.latestMovies[index].genres!,
                              ),
                            ),
                          );
                        }
                        return GestureDetector(
                          onTap: () {
                            BlocProvider.of<ExploreBloc>(context).add(
                                const ExploreEvent.triggerDetail(
                                    trigger: true));
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ScreenDetailEveryone(
                                  backDrop: state.latestMovies[index].backdropPath!,
                                      duration:
                                          state.latestMovies[index].duration!,
                                      overview:
                                          state.latestMovies[index].overview!,
                                      title: state.latestMovies[index].title!,
                                      video: state.latestMovies[index].video,
                                      image:
                                          state.latestMovies[index].posterPath!,
                                      genres: state.latestMovies[index].genres!,
                                      release: state
                                          .latestMovies[index].releaseDate!,
                                      rating: state.latestMovies[index].rating!,
                                      lang: state.latestMovies[index].lang!,
                                      crew: state.latestMovies[index].crew!,
                                      cast: state.latestMovies[index].cast!,
                                    )));
                          },
                          child: MediaContainer(
                            duration: state.latestMovies[index].duration!,
                            overview: state.latestMovies[index].overview!,
                            title: state.latestMovies[index].title!,
                            video: state.latestMovies[index].video!,
                            image: state.latestMovies[index].backdropPath!,
                            genre: state.latestMovies[index].genres!,
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return kHeightS;
                      },
                      itemCount: state.latestMovies.length),
                );
              },
            )),
      ),
    );
  }
}

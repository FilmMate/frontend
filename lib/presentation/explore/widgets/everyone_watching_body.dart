import 'package:film_mate/application/explore/explore_bloc.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/presentation/explore/widgets/media_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EveryOneWatching extends StatelessWidget {
  const EveryOneWatching({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: BlocBuilder<ExploreBloc, ExploreState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (state.isError) {
                  return const Center(
                    child: Text("Error"),
                  );
                }
                return SizedBox(
                  height: size.height,
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        if (index == 9) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 200),
                            child: MediaContainer(
                              duration: state.latestMovies[index].duration!,
                              overview: state.latestMovies[index].overview!,
                              title: state.latestMovies[index].title!,
                              video: state.latestMovies[index].video!,
                              image: state.latestMovies[index].backdropPath!,
                            ),
                          );
                        }
                        return MediaContainer(
                          duration: state.latestMovies[index].duration!,
                          overview: state.latestMovies[index].overview!,
                          title: state.latestMovies[index].title!,
                          video: state.latestMovies[index].video!,
                          image: state.latestMovies[index].backdropPath!,
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

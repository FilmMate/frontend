import 'package:film_mate/application/home/home_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/domain/models/endpoints.dart';
import 'package:film_mate/presentation/detail/detail_screen_primary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../detail/widgets/poster.dart';

class GenreResult extends StatelessWidget {
  final String name;
  final int gid;
  const GenreResult({super.key, required this.name, required this.gid});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context)
          .add(HomeEvent.getGenreResult(gid: gid));
    });
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: Text(
          name,
          style: const TextStyle(color: kWhite),
        ),
        iconTheme: const IconThemeData(color: kWhite),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.isGenreLoading) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state.isGenreError) {
            return const Text("Error");
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, // number of items in each row
                              mainAxisSpacing: 8.0, // spacing between rows
                              crossAxisSpacing: 8.0,
                              childAspectRatio:
                                  1.5 / 2.5 // spacing between columns
                              ),
                      itemCount: state.genreResult.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => ScreenDetailPrimary(
                                      type: 'movie',
                                      id: state.genreResult[index].id!,
                                    )));
                          },
                          child: Poster(
                            width: size.width * 0.3,
                            height: size.width * 0.4,
                            image:
                                "${EndPoints.image}${state.genreResult[index].posterPath}",
                          ),
                        );
                      }),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

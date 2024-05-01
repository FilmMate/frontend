import 'package:film_mate/application/search/search_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/domain/models/endpoints.dart';
import 'package:film_mate/presentation/detail/detail_screen_primary.dart';
import 'package:film_mate/presentation/detail/widgets/poster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IdleList extends StatelessWidget {
  const IdleList({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScreenDetailPrimary(
                              type: state.idleList[index].type!,
                              id: state.idleList[index].id!,
                            )));
                  },
                  child: SizedBox(
                    height: size.width * .25,
                    width: size.width,
                    child: Row(
                      children: [
                        Poster(
                          width: size.width * 0.45,
                          height: size.width * 0.25,
                          image:
                              "${EndPoints.image}${state.idleList[index].backdropPath}",
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  state.idleList[index].type == "movie"
                                      ? state.idleList[index].title!
                                      : state.idleList[index].name!,
                                  style: const TextStyle(
                                      color: kWhite,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2, // Specify how to handle overflow
                                ),
                                Text(
                                    state.idleList[index].type == "movie"
                                        ? state.idleList[index].releaseDate!
                                            .substring(0, 4)
                                        : state.idleList[index].airDate!
                                            .substring(0, 4),
                                    style: const TextStyle(
                                        color: kWhite, fontSize: 12))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return kHeightS;
              },
              itemCount: state.idleList.length),
        );
      },
    );
  }
}

import 'package:film_mate/application/search/search_bloc.dart';
import 'package:film_mate/domain/models/endpoints.dart';
import 'package:film_mate/presentation/detail/detail_screen_primary.dart';
import 'package:film_mate/presentation/detail/widgets/poster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultGrid extends StatelessWidget {
  const ResultGrid({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return Expanded(
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // number of items in each row
                  mainAxisSpacing: 8.0, // spacing between rows
                  crossAxisSpacing: 8.0,
                  childAspectRatio: 1.5 / 2.5 // spacing between columns
                  ),
              itemCount: state.resultList.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScreenDetailPrimary(
                              type: state.resultList[index].type!,
                              id: state.resultList[index].id!,
                            )));
                  },
                  child: Poster(
                    width: size.width * 0.3,
                    height: size.width * 0.4,
                    image:
                        "${EndPoints.image}${state.resultList[index].posterPath}",
                  ),
                );
              }),
        );
      },
    );
  }
}

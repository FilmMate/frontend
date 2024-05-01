import 'package:film_mate/application/search/search_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/presentation/search/widgets/idle_list.dart';
import 'package:film_mate/presentation/search/widgets/result_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.isError) {
          return const Text("Error");
        }
        if (state.noResult) {
          return const Center(
            child: Text(
              "no reults found : (",
              style: TextStyle(color: kWhite),
            ),
          );
        }
        if (state.resultList.isEmpty) {
          return IdleList(size: size);
        } else {
          return ResultGrid(size: size);
        }
      },
    );
  }
}


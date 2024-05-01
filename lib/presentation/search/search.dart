import 'dart:developer';
import 'package:film_mate/application/search/search_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/core/debouncer/debouncer.dart';
import 'package:film_mate/presentation/search/widgets/search_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const SearchEvent.initialize());
    });
    final size = MediaQuery.of(context).size;
    final debouncer = Debouncer(milliseconds: 1 * 1000);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: SizedBox(
                height: size.width * .10,
                child: CupertinoSearchTextField(
                  prefixIcon: const Icon(
                    CupertinoIcons.search,
                    color: kWhite,
                  ),
                  suffixIcon: const Icon(
                    CupertinoIcons.xmark_circle_fill,
                    color: kWhite,
                  ),
                  style: const TextStyle(color: kWhite),
                  onChanged: (value) {
                    debouncer.run(() {
                      log(value);
                      BlocProvider.of<SearchBloc>(context)
                          .add(SearchEvent.triggerSearch(query: value.trim()));
                    });
                  },
                ),
              ),
            ),
            kHeightS,
            const Text(
              "Top Searches",
              style: TextStyle(
                  color: kWhite, fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SearchBody(size: size)
          ],
        ),
      ),
    );
  }
}

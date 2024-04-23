import 'package:film_mate/application/explore/explore_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'widgets/custom_tab_bar.dart';
import 'widgets/everyone_watching_body.dart';

class ScreenExplore extends StatelessWidget {
  const ScreenExplore({super.key});
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ExploreBloc>(context)
          .add(const ExploreEvent.getLatestMovies(lang: 'ml'));
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Explore",
          style: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: BlocBuilder<ExploreBloc, ExploreState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: CustomTabBar(
                  tabs: const [
                    "🔥 Everyone's watching",
                    '🍿 Coming Soon',
                  ],
                  selectedIndex: state.selectedTab,
                  onTabSelected: (index) {
                    BlocProvider.of<ExploreBloc>(context)
                        .add(ExploreEvent.changeTab(index: index));
                  },
                ),
              ),
              Expanded(
                  child: state.selectedTab == 0
                      ? const EveryOneWatching()
                      : const Center(
                          child: Text(
                            'Coming Soon Content',
                            style: TextStyle(fontSize: 20, color: kWhite),
                          ),
                        )),
            ],
          );
        },
      ),
    );
  }
}

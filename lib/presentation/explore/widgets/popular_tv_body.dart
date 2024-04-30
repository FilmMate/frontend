import 'package:film_mate/application/explore/explore_bloc.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/presentation/detail/detail_everyone.dart';
import 'package:film_mate/presentation/detail/detail_screen_primary.dart';
import 'package:film_mate/presentation/explore/widgets/media_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularTvBody extends StatelessWidget {
  const PopularTvBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: BlocBuilder<ExploreBloc, ExploreState>(
              builder: (context, state) {
                if (state.isLoadingTV) {
                  return SizedBox(
                      height: size.height,
                      width: size.width,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ));
                }
                if (state.isErrorTV) {
                  return SizedBox(
                    height: size.height,
                    width: size.width,
                    child: const Center(
                      child: Text("Error"),
                    ),
                  );
                }
                return SizedBox(
                  height: size.height,
                  child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        if (index == state.latestTV.length - 1) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => ScreenDetailPrimary(
                                        type: state.latestTV[index].type!,
                                        id: state.latestTV[index].id!,
                                      )));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 200),
                              child: MediaContainer(
                                duration: "0h 0m",
                                overview: state.latestTV[index].overview!,
                                title: state.latestTV[index].title!,
                                video: state.latestTV[index].video!,
                                image: state.latestTV[index].backdropPath!,
                                genre: state.latestTV[index].genres!,
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
                                builder: (context) => ScreenDetailPrimary(
                                      type: state.latestTV[index].type!,
                                      id: state.latestTV[index].id!,
                                    )));
                          },
                          child: MediaContainer(
                            duration: "0h 0m",
                            overview: state.latestTV[index].overview!,
                            title: state.latestTV[index].title!,
                            video: state.latestTV[index].video!,
                            image: state.latestTV[index].backdropPath!,
                            genre: state.latestTV[index].genres!,
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return kHeightS;
                      },
                      itemCount: state.latestTV.length),
                );
              },
            )),
      ),
    );
  }
}

import 'package:film_mate/application/home/home_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/domain/models/endpoints.dart';
import 'package:film_mate/domain/models/genre/genre.dart';
import 'package:film_mate/domain/models/genre/genre_data.dart';
import 'package:film_mate/domain/models/languages/language.dart';
import 'package:film_mate/presentation/detail/detail_screen_primary.dart';
import 'package:film_mate/presentation/detail/widgets/poster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageDetail extends StatefulWidget {
  final Language language;
  const LanguageDetail({super.key, required this.language});

  @override
  State<LanguageDetail> createState() => _LanguageDetailState();
}

class _LanguageDetailState extends State<LanguageDetail> {
  String? selectedGenre;

  @override
  void initState() {
    super.initState();
    selectedGenre = 'All'; // Default selection
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      BlocProvider.of<HomeBloc>(context)
          .add(HomeEvent.getMovieByLanguage(language: widget.language.code));
    });
    final size = MediaQuery.of(context).size;
    final List<Genre> genres = GenreData.genres;

    return Scaffold(
      appBar: AppBar(
        foregroundColor: kWhite,
        backgroundColor: kSelectedBackgroundColor,
        title: Text("${widget.language.name} Movies"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            // Genre filter section
            Container(
              height: 50,
              margin: const EdgeInsets.only(bottom: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: genres.length + 1, // +1 for the "All" option
                itemBuilder: (context, index) {
                  // For the first item (index 0), create the "All" chip
                  if (index == 0) {
                    final isSelected = selectedGenre == 'All';
                    return Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: FilterChip(
                        selected: isSelected,
                        backgroundColor: kBlack.withOpacity(0.1),
                        selectedColor: kSelectedBackgroundColor,
                        checkmarkColor: kWhite,
                        label: Text(
                          'All',
                          style: TextStyle(
                            color: isSelected ? kWhite : kBlack,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        ),
                        onSelected: (selected) {
                          BlocProvider.of<HomeBloc>(context).add(
                              HomeEvent.getMovieByLanguage(
                                  language: widget.language.code));
                          setState(() {
                            selectedGenre = 'All';
                          });
                        },
                      ),
                    );
                  }

                  // For the remaining items, create genre chips from the genres list
                  final genreIndex =
                      index - 1; // Adjust index since we added the "All" option
                  final genre = genres[genreIndex].name;
                  final gid = genres[genreIndex].gid;
                  final isSelected = selectedGenre == genre;

                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: FilterChip(
                      selected: isSelected,
                      backgroundColor: kBlack.withOpacity(0.1),
                      selectedColor: kSelectedBackgroundColor,
                      checkmarkColor: kWhite,
                      label: Text(
                        genre,
                        style: TextStyle(
                          color: isSelected ? kWhite : kBlack,
                          fontWeight:
                              isSelected ? FontWeight.bold : FontWeight.normal,
                        ),
                      ),
                      onSelected: (selected) {
                        setState(() {
                          selectedGenre = genre;
                        });
                        BlocProvider.of<HomeBloc>(context).add(
                            HomeEvent.getMovieByLanguage(
                                language: widget.language.code, gid: gid));
                        // Here you would typically filter your movies based on the selected genre
                      },
                    ),
                  );
                },
              ),
            ),

            // Movies grid
            BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                if (state.langResultError) {
                  return const Text("Error");
                }
                if (state.langResultLoading) {
                  return const CircularProgressIndicator();
                }
                if (state.langResultList.isEmpty) {
                  return Center(
                    child: Text(
                      "No result found!",
                      style: TextStyle(color: kWhite),
                    ),
                  );
                }
                return Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3, // number of items in each row
                              mainAxisSpacing: 8.0, // spacing between rows
                              crossAxisSpacing: 8.0,
                              childAspectRatio:
                                  1.5 / 2.5 // spacing between columns
                              ),
                      itemCount: state.langResultList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ScreenDetailPrimary(
                                        type: "movie",
                                        id: state.langResultList[index].id!)));
                          },
                          child: Poster(
                            width: size.width * 0.3,
                            height: size.width * 0.4,
                            image:
                                "${EndPoints.image}/${state.langResultList[index].posterPath}",
                          ),
                        );
                      }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

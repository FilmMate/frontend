import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/presentation/detail/widgets/poster.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'widgets/carousel_section.dart';
import 'widgets/genre_section.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text(
            "FilmMate",
            style: TextStyle(
              color: kWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: SizedBox(
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselSection(size: size),
                  const GenreSection(),
                  kHeightS,
                  HomeList(size: size,title: "Top 10 TV Shows",),
                  kHeightS,
                  HomeList(size: size,title: "Top 10 Movies",),
                  kHeightS,
                  kHeightS,
                  const GenreSection(),
                   kHeightS,
                  HomeList(size: size,title: "Best Comedy Movies",),
                  kHeightS,
                  HomeList(size: size,title: "Action With Style",),
                   kHeightS,
                  HomeList(size: size,title: "Sci-Fi TV Shows",),
                  kHeightS,
                  HomeList(size: size,title: "Feel-Good Anime",),

                  
                ],
              ),
            ),
          ),
        ));
  }
}

class HomeList extends StatelessWidget {
  const HomeList({
    super.key,
    required this.size,
    required this.title
  });

  final Size size;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(title,style: TextStyle(
                        color: kWhite,
                        fontWeight: FontWeight.bold,fontSize: 18
                      ),),
        ),
        SizedBox(
      width: size.width,
      height: size.width*.60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: Poster(width: size.width*.40, height: 300),
        );
      },itemCount:10,),
    )
      ],
    );
  }
}

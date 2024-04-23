import 'package:film_mate/core/colors.dart';
import 'package:flutter/material.dart';
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [CarouselSection(size: size), const GenreSection()],
              ),
            ),
          ),
        ));
  }
}

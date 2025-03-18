import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:flutter/material.dart';

class ScreenAbout extends StatelessWidget {
  const ScreenAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSelectedBackgroundColor,
        foregroundColor: kWhite,
        title: Text("About FilmMate"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kHeightS,
            const Text(
              textAlign: TextAlign.justify,
              "Film Mate is a personalized platform for discovering your next favourite movies and TV shows. Embark on a journey of exploring personalized movie and TV show recommendations, trending releases, and exciting trailers—all within a secure and user-friendly platform.",
              style: TextStyle(
                color: kWhite,
              ),
            ),
            kHeightS,
            const Text(
              textAlign: TextAlign.justify,
              "Initially conceived as a mini-project for the sixth-semester curriculum under KTU, Film Mate was later expanded and developed into a comprehensive main project.",
              style: TextStyle(
                color: kWhite,
              ),
            ),
            kHeightS,
            const Text(
              textAlign: TextAlign.start,
              "Tech Stack : ",
              style: TextStyle(color: kWhite, fontWeight: FontWeight.bold),
            ),
            const Text(
              textAlign: TextAlign.start,
              "Flutter, Flask, Dart, Python, Firebase, React, Git, GitHub, PythonAnyWhere.com by Anaconda",
              style: TextStyle(color: kWhite),
            ),
            kHeightS,
            Row(
              children: [
                const Text(
                  textAlign: TextAlign.start,
                  "Project Guide : ",
                  style: TextStyle(color: kWhite, fontWeight: FontWeight.bold),
                ),
                const Text(
                  textAlign: TextAlign.start,
                  "Mrs. Salini Dev P. V",
                  style: TextStyle(color: kWhite),
                ),
              ],
            ),
            kHeightS,
            SizedBox(
              child: const Text(
                textAlign: TextAlign.start,
                "Team Members",
                style: TextStyle(color: kWhite, fontWeight: FontWeight.bold),
              ),
            ),
            kHeightXS,
            const Text(
              textAlign: TextAlign.start,
              "Akshay Shine Krishna - VJC21IT006",
              style: TextStyle(
                color: kWhite,
              ),
            ),
            const Text(
              textAlign: TextAlign.start,
              "Joshua Johny- VJC21IT038",
              style: TextStyle(
                color: kWhite,
              ),
            ),
            const Text(
              textAlign: TextAlign.start,
              "Nikhil S- VJC21IT049",
              style: TextStyle(
                color: kWhite,
              ),
            ),
            const Text(
              textAlign: TextAlign.start,
              "Niya Brijith James- VJC21IT050",
              style: TextStyle(
                color: kWhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

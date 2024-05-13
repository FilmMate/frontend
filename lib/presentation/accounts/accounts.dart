import 'dart:developer';

import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/presentation/user/login_and_register.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenAccounts extends StatelessWidget {
  const ScreenAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          kHeightS,
          kHeightS,
          SizedBox(
              width: size.width * 0.4,
              child: Image.asset(
                'lib/assets/logo.png',
              )),
          const Text(
            "FilmMate : version 1.54.0+1",
            style: TextStyle(color: kWhite),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  textAlign: TextAlign.justify,
                  "S6 IT VJCET, Group 4 : Mini Project",
                  style: TextStyle(
                    color: kWhite,
                  ),
                ),
                kHeightXS,
                const Text(
                  textAlign: TextAlign.justify,
                  "Film mate is a personalized platform for discovering your next favourite movies and TV shows. Embark on a journey of exploring personalized movie and TV show recommendations, trending releases, and exciting trailers—all within a secure and user-friendly platform.",
                  style: TextStyle(
                    color: kWhite,
                  ),
                ),
                kHeightS,
                const Text(
                  textAlign: TextAlign.justify,
                  "Project Guide : Mrs. Salini Dev P. V\n\nGroup Members\n\nAkshay Shine Krishna- VJC21IT006\nJoshua Johny- VJC21IT038\nNikhil S- VJC21IT049\nNiya Brijith James- VJC21IT050",
                  style: TextStyle(
                    color: kWhite,
                  ),
                ),
                kHeightS,
                SizedBox(
                  width: size.width,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            kSelectedBackgroundColor), // Set background color
                      ),
                      onPressed: () async {
                        log("log out");
                        final SharedPreferences prefs =
                            await SharedPreferences.getInstance();
                        await prefs.setBool('isLoggedIn', false);
                        await prefs.remove('currentUser');
                        await Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) =>
                                const ScreenLoginAndRegister(),
                          ),
                          (route) => false,
                        );
                      },
                      child: const Text(
                        "Log out",
                        style: TextStyle(
                            fontSize: 17,
                            color: kWhite,
                            fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

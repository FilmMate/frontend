import 'dart:developer';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/domain/models/genre/genre_data.dart';
import 'package:film_mate/domain/models/user/genre.dart';
import 'package:film_mate/domain/models/user/user_model.dart';
import 'package:film_mate/domain/services/user_services.dart';
import 'package:film_mate/presentation/user/login_and_register.dart';
import 'package:flutter/material.dart';

class GenreSelector extends StatefulWidget {
  final String userName, email, password;
  const GenreSelector(
      {super.key,
      required this.userName,
      required this.email,
      required this.password});

  @override
  State<GenreSelector> createState() => _GenreSelectorState();
}

class _GenreSelectorState extends State<GenreSelector> {
  List<Genre> selectedGenres = [];

  void handleGenreSelection(Genre genre) {
    setState(() {
      if (selectedGenres.contains(genre)) {
        selectedGenres.remove(genre);
      } else {
        if (selectedGenres.length < 4) {
          selectedGenres.add(genre);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final UserServices userServices = UserServices();
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Select 4 Genres',
            style: TextStyle(color: kWhite, fontWeight: FontWeight.bold),
          ),
          backgroundColor: kSelectedBackgroundColor,
          iconTheme: const IconThemeData(color: kWhite)),
      body: ListView.builder(
        itemCount: GenreData.genres.length,
        itemBuilder: (context, index) {
          Genre genre = GenreData.genres[index];
          if (index == GenreData.genres.length - 1) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 80.0),
              child: CheckboxListTile(
                activeColor: kSelectedBackgroundColor,
                title: Text(
                  genre.name,
                  style: const TextStyle(color: kWhite),
                ),
                value: selectedGenres.contains(genre),
                onChanged: (bool? value) {
                  handleGenreSelection(genre);
                },
              ),
            );
          }
          return CheckboxListTile(
            activeColor: kSelectedBackgroundColor,
            title: Text(
              genre.name,
              style: const TextStyle(color: kWhite),
            ),
            value: selectedGenres.contains(genre),
            onChanged: (bool? value) {
              handleGenreSelection(genre);
            },
          );
        },
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () async {
          if (selectedGenres.length == 4) {
            final user = User(
                username: widget.userName,
                password: widget.password,
                email: widget.email,
                genres: selectedGenres);
            await userServices.registerUser(user);
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('User Registered. Login to continue'),
                duration: Duration(seconds: 2),
                backgroundColor: Colors.green,
              ),
            );
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const ScreenLoginAndRegister(),
              ),
              (route) => false,
            );
            // Process the selected genres, e.g., navigate to a new page
            log('Selected Genres: ${selectedGenres.map((genre) => genre.name).toList()}');
          } else {
            // Show an error message if exactly 4 genres are not selected
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Select 4 genres to continue'),
                duration: Duration(seconds: 2),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: const Text(
          'Continue',
          style: TextStyle(
              color: kSelectedBackgroundColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

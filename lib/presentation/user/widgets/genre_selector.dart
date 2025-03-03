import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/domain/models/genre/genre_data.dart';
import 'package:film_mate/domain/models/genre/genre.dart';
import 'package:film_mate/presentation/main_navigator/genre_navigator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class GenreSelector extends StatefulWidget {
  const GenreSelector({
    super.key,
  });

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
            try {
              // Get the current user's UID
              final String userId = FirebaseAuth.instance.currentUser!.uid;

              // Prepare the selected genres in the desired format
              final genresList = selectedGenres
                  .map((genre) => {
                        'name': genre.name,
                        'gid': genre.gid,
                      })
                  .toList();

              // Update the 'genre' field in the user's document
              await FirebaseFirestore.instance
                  .collection('users')
                  .doc(userId)
                  .update({
                'genre': genresList,
              });

              // Show success message
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Genres updated successfully.'),
                  duration: Duration(seconds: 2),
                  backgroundColor: Colors.green,
                ),
              );

              // Navigate to the Login page or next screen
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) => GenreNavigator(userId: FirebaseAuth.instance.currentUser!.uid,),
                ),
                (route) => false,
              );

              // Log the selected genres for debugging
              log('Selected Genres: ${genresList}');
            } catch (e) {
              // Handle any errors during Firestore operation
              log('Error updating genres: $e');
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Failed to update genres. Try again.'),
                  duration: Duration(seconds: 2),
                  backgroundColor: Colors.red,
                ),
              );
            }
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

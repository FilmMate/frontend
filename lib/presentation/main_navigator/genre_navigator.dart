import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:film_mate/application/home/home_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/presentation/main_navigator/main_navigator.dart';
import 'package:film_mate/presentation/user/widgets/genre_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GenreNavigator extends StatelessWidget {
  final String userId;

  const GenreNavigator({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
      stream: FirebaseFirestore.instance
          .collection('users')
          .doc(userId)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // Show a loading indicator while waiting for data
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasError) {
          // Handle errors if the stream fails
          return const Center(
            child: Text(
              'Something went wrong',
              style: TextStyle(color: kWhite),
            ),
          );
        }

        if (snapshot.hasData) {
          // Extract the document data
          final data = snapshot.data?.data() as Map<String, dynamic>?;

          if (data != null && (data['genre'] as List).isEmpty) {
            // If the 'genre' field is empty, show GenreSelector
            return const GenreSelector();
          } else {
            BlocProvider.of<HomeBloc>(context).add(HomeEvent.getGenreNames());
            // Navigate to another screen if 'genre' is not empty
            return const MainNavigator();
          }
        }

        // Handle the case where no data exists
        return const Center(
          child: Text('No user data found'),
        );
      },
    );
  }
}

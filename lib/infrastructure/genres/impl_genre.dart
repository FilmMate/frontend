import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:film_mate/core/failure/main_failure.dart';
import 'package:film_mate/domain/services/genre_services.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GenreServices)
class ImplGenre implements GenreServices {
  @override
  Future<Either<MainFailure, List<Map<String, dynamic>>>>
      fetchUserGenres() async {
    try {
      // Reference the user's document in the 'users' collection
      final DocumentSnapshot userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .get();

      // Check if the document exists and retrieve the 'genre' field
      if (userDoc.exists) {
        final data = userDoc.data() as Map<String, dynamic>;
        return Right(List<Map<String, dynamic>>.from(data['genre'] ?? []));
      } else {
        log('User document does not exist');
        return Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log('Error fetching user genres: $e');
      return Left(MainFailure.clientFailure());
    }
  }
}

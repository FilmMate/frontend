import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<List<Map<String, dynamic>>> fetchUserGenres() async {
  try {
    // Reference the user's document in the 'users' collection
    final DocumentSnapshot userDoc =
        await FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).get();

    // Check if the document exists and retrieve the 'genre' field
    if (userDoc.exists) {
      final data = userDoc.data() as Map<String, dynamic>;
      return List<Map<String, dynamic>>.from(data['genre'] ?? []);
    } else {
      log('User document does not exist');
      return [];
    }
  } catch (e) {
    log('Error fetching user genres: $e');
    return [];
  }
}

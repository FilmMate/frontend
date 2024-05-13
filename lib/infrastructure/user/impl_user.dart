// import 'dart:developer';

// import 'package:film_mate/domain/models/genre/genre.dart';
// import 'package:film_mate/domain/models/user/user_model.dart';
// import 'package:film_mate/domain/services/user_services.dart';
// import 'package:hive_flutter/hive_flutter.dart';
// import 'package:injectable/injectable.dart';

// @Singleton(as: UserServices)
// class ImplUser implements UserServices {
//   @override
//   Future<bool> isUserExists(String email) async {
//     final userBox = Hive.box<User>('user');
//     final users = userBox.values.where((user) => user.email == email).toList();
//     return users.isNotEmpty;
//   }

//   @override
//   Future<void> registerUser(User user) async {
//     final userBox = Hive.box<User>('user');
//     await userBox.add(user);
//   }

//   @override
//   Future<void> updateGenres(String email, List<Genre> genres) async {
//     try {
//       final userBox = await Hive.openBox<User>('user'); // Open the Hive box

//       // Find the user with the given email
//       final user = userBox.values.firstWhere((user) => user.email == email);

//       // Update the user's genres
//       user.genres = genres;
//       userBox.put(user.email, user);
//     } catch (e) {
//       // Handle error, e.g., box not opened
//       log('Error updating genres: $e');
//     }
//   }

//   @override
//   Future<bool> validateUser(String email, String password) async {
//     try {
//       final userBox = Hive.box<User>('user');

//       // Search for a user with the specified email
//       User? user = userBox.values.firstWhere((user) => user.email == email);

//       if (user.password == password) {
//         // If user is found and password matches, return true
//         return true;
//       } else {
//         // User not found or password doesn't match
//         return false;
//       }
//     } catch (e) {
//       // Handle any potential errors
//       log('Error validating user: $e');
//       return false; // Return false if an error occurs
//     }
//   }

//   @override
//   Future<void> displayAllUsers() async {
//     try {
//       final userBox = await Hive.openBox<User>(
//           'user'); // Open the Hive box for User objects

//       // Retrieve all User objects from the box
//       List<User> users = userBox.values.toList();
//       log(users.toString());
//       // Display or process each User object
//       for (User user in users) {
//         log('User: ${user.username}');
//         log('Email: ${user.email}');
//         log('Genres: ${user.genres}');
//         log('----------------------');
//         // You can perform additional processing or display for each user
//       }

//       // Close the box when finished (optional, depending on your usage)
//       await userBox.close();
//     } catch (e) {
//       // Handle any potential errors
//       log('Error displaying user data: $e');
//     }
//   }
// }

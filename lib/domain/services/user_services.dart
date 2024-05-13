import 'dart:developer';
import 'package:film_mate/domain/models/user/genre.dart';
import 'package:film_mate/domain/models/user/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class UserServices {
  Future<Box<User>> _openUserBox() async {
    // Open the Hive box for User objects
    return await Hive.openBox<User>('user');
  }

  Future<bool> isUserExists(String email) async {
    final userBox = await _openUserBox(); // Open the Hive box
    final users = userBox.values.where((user) => user.email == email).toList();
    return users.isNotEmpty;
  }

  Future<List<Genre>> getGenres(String email) async {
    final userBox = await _openUserBox();
    User? user = userBox.values.firstWhere((user) => user.email == email);
    return user.genres;
  }

  Future<bool> validateUser(String email, String password) async {
    try {
      final userBox = await _openUserBox(); // Open the Hive box

      // Search for a user with the specified email
      User? user = userBox.values.firstWhere((user) => user.email == email);

      if (user.password == password) {
        // If user is found and password matches, return true
        return true;
      } else {
        // User not found or password doesn't match
        return false;
      }
    } catch (e) {
      // Handle any potential errors
      log('Error validating user: $e');
      return false; // Return false if an error occurs
    }
  }

  Future<void> registerUser(User user) async {
    final userBox = await _openUserBox(); // Open the Hive box
    await userBox.add(user);
  }

  Future<void> updateGenres(String email, List<Genre> genres) async {
    try {
      final userBox = await _openUserBox(); // Open the Hive box

      // Find the user with the given email
      final user = userBox.values.firstWhere((user) => user.email == email);

      // Update the user's genres
      user.genres = genres;
      userBox.put(user.email, user);
    } catch (e) {
      // Handle error, e.g., box not opened
      log('Error updating genres: $e');
    }
  }

  Future<void> displayAllUsers() async {
    try {
      final userBox = await _openUserBox(); // Open the Hive box

      // Retrieve all User objects from the box
      List<User> users = userBox.values.toList();
      log(users.toString());
      // Display or process each User object
      for (User user in users) {
        log('User: ${user.username}');
        log('Email: ${user.email}');
        log('Genres: ${user.genres}');
        log('----------------------');
        // You can perform additional processing or display for each user
      }

      // Close the box when finished (optional, depending on your usage)
      await userBox.close();
    } catch (e) {
      // Handle any potential errors
      log('Error displaying user data: $e');
    }
  }
}

import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:film_mate/application/user/user_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/presentation/main_navigator/main_navigator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    final TextEditingController confPassController = TextEditingController();

    void showSnackBar(String message, {Color backgroundColor = Colors.red}) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: backgroundColor,
        ),
      );
    }

    Future<void> signUp() async {
      String email = emailController.text.trim();
      String password = passController.text.trim();
      String confirmPassword = confPassController.text.trim();

      if (email.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
        showSnackBar("All fields are required.");
        return;
      }

      if (password != confirmPassword) {
        showSnackBar("Passwords do not match.");
        return;
      }

      try {
        // Register user with Firebase Auth
        UserCredential userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(email: email, password: password);

        // Add user details to Firestore
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userCredential.user!.uid)
            .set({
          'email': email,
          'type': 'user',
          'user_name': usernameController.text.trim(),
          'genre': [],
          'createdAt': FieldValue.serverTimestamp(),
        });

        showSnackBar("User registered successfully!",
            backgroundColor: Colors.green);

        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setBool('isLoggedIn', true);

        await Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const MainNavigator(),
          ),
          (route) => false,
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          showSnackBar("The password is too weak.");
        } else if (e.code == 'email-already-in-use') {
          showSnackBar("The email is already in use.");
        } else {
          showSnackBar("Registration failed: ${e.message}");
        }
      } catch (e) {
        showSnackBar("An error occurred: ${e.toString()}");
      }
    }

    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const Text(
        "Register",
        style:
            TextStyle(color: kWhite, fontSize: 25, fontWeight: FontWeight.bold),
      ),
      const Text(
        "create your account",
        style: TextStyle(
          color: kWhite,
          fontSize: 10,
        ),
      ),
      kHeightS,
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: usernameController,
          onChanged: (value) {
            BlocProvider.of<UserBloc>(context).add(UserEvent.changeColor(
                trigger: emailController.text.isNotEmpty &&
                    passController.text.isNotEmpty &&
                    usernameController.text.isNotEmpty));
          },
          cursorColor: kSelectedBackgroundColor,
          style: const TextStyle(color: kWhite),
          decoration: InputDecoration(
            filled: true,
            label: const Text("Username"),
            hintText: 'Enter your name',
            focusColor: kSelectedBackgroundColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            fillColor: kBottomNavColor,
            hintStyle: const TextStyle(color: Colors.grey),
            labelStyle: const TextStyle(color: kWhite),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                    color: kSelectedBackgroundColor, width: 2.0)),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: emailController,
          onChanged: (value) {
            BlocProvider.of<UserBloc>(context).add(UserEvent.changeColor(
                trigger: emailController.text.isNotEmpty &&
                    passController.text.isNotEmpty &&
                    usernameController.text.isNotEmpty));
          },
          cursorColor: kSelectedBackgroundColor,
          style: const TextStyle(color: kWhite),
          decoration: InputDecoration(
            filled: true,
            label: const Text("Email"),
            hintText: 'user@example.com',
            focusColor: kSelectedBackgroundColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            fillColor: kBottomNavColor,
            hintStyle: const TextStyle(color: Colors.grey),
            labelStyle: const TextStyle(color: kWhite),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                    color: kSelectedBackgroundColor, width: 2.0)),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: passController,
          obscureText: true,
          onChanged: (value) {
            BlocProvider.of<UserBloc>(context).add(UserEvent.changeColor(
                trigger: emailController.text.isNotEmpty &&
                    passController.text.isNotEmpty &&
                    usernameController.text.isNotEmpty &&
                    confPassController.text.isNotEmpty));
          },
          cursorColor: kSelectedBackgroundColor,
          style: const TextStyle(color: kWhite),
          decoration: InputDecoration(
            filled: true,
            label: const Text("Password"),
            hintText: 'Enter your password',
            focusColor: kSelectedBackgroundColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            fillColor: kBottomNavColor,
            hintStyle: const TextStyle(color: Colors.grey),
            labelStyle: const TextStyle(color: kWhite),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                    color: kSelectedBackgroundColor, width: 2.0)),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: confPassController,
          obscureText: true,
          onChanged: (value) {
            BlocProvider.of<UserBloc>(context).add(UserEvent.changeColor(
                trigger: emailController.text.isNotEmpty &&
                    passController.text.isNotEmpty &&
                    usernameController.text.isNotEmpty &&
                    confPassController.text.isNotEmpty));
          },
          cursorColor: kSelectedBackgroundColor,
          style: const TextStyle(color: kWhite),
          decoration: InputDecoration(
            filled: true,
            label: const Text("Confirm Password"),
            hintText: 'Confirm your password',
            focusColor: kSelectedBackgroundColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            fillColor: kBottomNavColor,
            hintStyle: const TextStyle(color: Colors.grey),
            labelStyle: const TextStyle(color: kWhite),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(
                    color: kSelectedBackgroundColor, width: 2.0)),
          ),
        ),
      ),
      BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: () async {
                  log(state.changeButtonColor.toString());
                  if (state.changeButtonColor) {
                    signUp();
                  } else {
                    showSnackBar("Enter all fields");
                  }
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                      state.changeButtonColor
                          ? kSelectedBackgroundColor
                          : kBottomNavColor),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                child: Text(
                  "SignUp",
                  style: TextStyle(
                      color: state.changeButtonColor ? kWhite : Colors.grey),
                ),
              ),
            ),
          );
        },
      ),
      GestureDetector(
        onTap: () => BlocProvider.of<UserBloc>(context)
            .add(const UserEvent.changeScreen()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Already a member? ",
              style: TextStyle(color: kWhite),
            ),
            const Text(
              "Login Now",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      )
    ]);
  }
}

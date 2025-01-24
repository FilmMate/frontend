import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:film_mate/application/main_navigator/main_navigator_bloc.dart';
import 'package:film_mate/application/user/user_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/domain/models/user/genre.dart';
import 'package:film_mate/presentation/main_navigator/genre_navigator.dart';
import 'package:film_mate/presentation/main_navigator/main_navigator.dart';
import 'package:film_mate/presentation/user/forgot.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<MainNavigatorBloc>(context)
          .add(MainNavigatorEvent.changeItem(item: 0));
    });
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void showSnackBar(SnackBar snackBar) {
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  Future<void> signIn() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      showSnackBar(const SnackBar(
        content: Text("Please fill in all fields."),
        backgroundColor: Colors.red,
      ));
      return;
    }

    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);

      await Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => GenreNavigator(userId: userCredential.user!.uid,),
        ),
        (route) => false,
      );
    } on FirebaseAuthException catch (e) {
      String message;

      if (e.code == 'user-not-found') {
        message = "No user found with this email.";
      } else if (e.code == 'wrong-password') {
        message = "Incorrect password for this email.";
      } else if (e.code == 'invalid-email') {
        message = "The email address is badly formatted.";
      } else {
        message = "Login failed. Please try again later: ${e.code}";
      }
      showSnackBar(SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ));
    } catch (e) {
      showSnackBar(SnackBar(
        content: Text("An error occurred: $e"),
        backgroundColor: Colors.red,
      ));
    }
  }

  Future<void> signInWithGoogle() async {
    try {
      await GoogleSignIn().signOut(); // Clear previous sign-in sessions
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        log("Google sign-in canceled.");
        return;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      log("Authenticating Google user...");
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      DocumentSnapshot userDoc = await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .get();

      if (!userDoc.exists) {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userCredential.user!.uid)
            .set({
          'email': userCredential.user!.email,
          'type': 'user',
          'createdAt': FieldValue.serverTimestamp(),
          'user_name': userCredential.user!.displayName,
          'genre': [],
        });

        log("New Google user added to Firestore.");
      } else {
        log("Existing user found in Firestore.");
      }

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);

      await Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => GenreNavigator(userId: userCredential.user!.uid),
        ),
        (route) => false,
      );
    } on FirebaseAuthException catch (e) {
      log("FirebaseAuthException: ${e.message}");
      showSnackBar(SnackBar(
        content: Text("Google sign-in failed: ${e.message}"),
        backgroundColor: Colors.red,
      ));
    } catch (e) {
      log("Exception: $e");
      showSnackBar(SnackBar(
        content: Text("An error occurred during Google sign-in."),
        backgroundColor: Colors.red,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Hello User!",
          style: TextStyle(
              color: kWhite, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const Text(
          "login to your account",
          style: TextStyle(
            color: kWhite,
            fontSize: 10,
          ),
        ),
        kHeightS,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
              controller: emailController,
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
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: passwordController,
            obscureText: true,
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
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ForgotScreen()),
            );
          },
          child: const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        kHeightS,
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: ElevatedButton(
            onPressed: signIn,
            style: ElevatedButton.styleFrom(
              backgroundColor: kSelectedBackgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        kHeightXS,
        GestureDetector(
          onTap: () => BlocProvider.of<UserBloc>(context)
              .add(const UserEvent.changeScreen()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("New User? ", style: TextStyle(color: kWhite)),
              const Text(
                "Register Now",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        kHeightXS,
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              // Left Line
              Expanded(
                child: Divider(
                  color: Colors.grey.withOpacity(0.5), // Line color
                  thickness: 1, // Line thickness
                ),
              ),
              // Text in the middle
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 8.0), // Space around "or"
                child: Text(
                  "or",
                  style: TextStyle(color: kWhite),
                ),
              ),
              // Right Line
              Expanded(
                child: Divider(
                  color: Colors.grey.withOpacity(0.5), // Line color
                  thickness: 1, // Line thickness
                ),
              ),
            ],
          ),
        ),
        kHeightXS,
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 50,
          child: ElevatedButton(
            onPressed: signInWithGoogle,
            style: ElevatedButton.styleFrom(
              backgroundColor: kSelectedBackgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.google, color: kWhite),
                SizedBox(width: 10),
                Text("Login with Google", style: TextStyle(color: kWhite)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

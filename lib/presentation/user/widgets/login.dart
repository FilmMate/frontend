import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:film_mate/application/main_navigator/main_navigator_bloc.dart';
import 'package:film_mate/application/user/user_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/presentation/main_navigator/main_navigator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatelessWidget {
  const Login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      // BlocProvider.of<UserBloc>(context)
      //     .add(const UserEvent.displayAllUsers());
      BlocProvider.of<MainNavigatorBloc>(context)
          .add(MainNavigatorEvent.changeItem(item: 0));
    });
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
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
        // Sign in the user using FirebaseAuth
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );

        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setBool('isLoggedIn', true);

        await Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const MainNavigator(),
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
        await GoogleSignIn()
            .signOut(); // Optional: Clear previous sign-in sessions
        final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

        if (googleUser == null) {
          // User canceled the Google sign-in
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
        // Sign in with Firebase using the Google credential
        UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);

        // Check if the user exists in Firestore
        DocumentSnapshot userDoc = await FirebaseFirestore.instance
            .collection('users')
            .doc(userCredential.user!.uid)
            .get();

        if (!userDoc.exists) {
          // If the user document does not exist, create it
          await FirebaseFirestore.instance
              .collection('users')
              .doc(userCredential.user!.uid)
              .set({
            'email': userCredential.user!.email,
            'type': 'user', // Default type is 'user'
            'createdAt': FieldValue.serverTimestamp(),
            'user_name': userCredential.user!.displayName,
            'genre': [],
          });

          log("New Google user added to Firestore.");
        } else {
          log("Existing user found in Firestore.");
        }

        // Update SharedPreferences for login state
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setBool('isLoggedIn', true);

        // Navigate to the main application screen
        await Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => const MainNavigator(),
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
            onChanged: (value) {
              BlocProvider.of<UserBloc>(context).add(UserEvent.changeColor(
                  trigger: emailController.text.isNotEmpty &&
                      passwordController.text.isNotEmpty));
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
            controller: passwordController,
            obscureText: true,
            onChanged: (value) {
              BlocProvider.of<UserBloc>(context).add(UserEvent.changeColor(
                  trigger: emailController.text.isNotEmpty &&
                      passwordController.text.isNotEmpty));
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
        BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: signIn,
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
                      "Login",
                      style: TextStyle(
                          color:
                              state.changeButtonColor ? kWhite : Colors.grey),
                    ),
                  )),
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
                "New User ? ",
                style: TextStyle(color: kWhite),
              ),
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ElevatedButton(
              onPressed: signInWithGoogle,
              style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all<Color>(kSelectedBackgroundColor),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.google,
                    color: kWhite,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Login with google",
                    style: TextStyle(color: kWhite),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

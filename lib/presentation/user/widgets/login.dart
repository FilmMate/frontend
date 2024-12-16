import 'package:film_mate/application/user/user_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/domain/services/user_services.dart';
import 'package:film_mate/presentation/main_navigator/main_navigator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      await UserServices().displayAllUsers();
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
        )
      ],
    );
  }
}

import 'dart:developer';

import 'package:film_mate/application/user/user_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/domain/services/user_services.dart';
import 'package:film_mate/presentation/user/widgets/genre_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    final UserServices userServices = UserServices();
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
                    usernameController.text.isNotEmpty));
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
                onPressed: () async {
                  if (!emailController.text.contains('@')) {
                    // Show Snackbar if "@" is missing in email
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please enter a valid email address.'),
                        duration: Duration(seconds: 2),
                        backgroundColor: Colors.red,
                      ),
                    );
                  }
                  if (state.changeButtonColor) {
                    final value =
                        await userServices.isUserExists(emailController.text);
                    log(value.toString());
                    if (!value) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => GenreSelector(
                                userName: usernameController.text.trim(),
                                email: emailController.text.trim(),
                                password: passController.text.trim(),
                              )));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('User exists. Login to continue'),
                        duration: Duration(seconds: 2),
                        backgroundColor: Colors.red,
                      ));
                    }
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      state.changeButtonColor
                          ? kSelectedBackgroundColor
                          : kBottomNavColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                child: Text(
                  "Next",
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
        child: const Text(
          "Already have an account ? Login !",
          style: TextStyle(color: kWhite),
        ),
      )
    ]);
  }
}

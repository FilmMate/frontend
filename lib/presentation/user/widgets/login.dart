import 'dart:developer';

import 'package:film_mate/application/user/user_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/domain/services/user_services.dart';
import 'package:film_mate/presentation/main_navigator/main_navigator.dart';
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
      // BlocProvider.of<  UserBloc>(context)
      //     .add(const UserEvent.displayAllUsers());
      await UserServices().displayAllUsers();
    });
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

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
                    onPressed: () async {
                      if (!emailController.text.contains('@')) {
                        // Show Snackbar if "@" is missing in email
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content:
                                Text('Please enter a valid email address.'),
                            duration: Duration(seconds: 2),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                      if (state.changeButtonColor) {
                        final value = await UserServices()
                            .isUserExists(emailController.text);
                        log(value.toString());
                        if (value) {
                          final value = await UserServices().validateUser(
                              emailController.text.trim(),
                              passwordController.text.trim());
                          if (value) {
                            await setLoginValue(emailController);
                            await Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                builder: (context) => const MainNavigator(),
                              ),
                              (route) => false,
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Invalid password'),
                                duration: Duration(seconds: 2),
                                backgroundColor: Colors.red,
                              ),
                            );
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("User doesn't exist"),
                              duration: Duration(seconds: 2),
                              backgroundColor: Colors.red,
                            ),
                          );
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
          child: const Text(
            "New User ? Register Now !",
            style: TextStyle(color: kWhite),
          ),
        )
      ],
    );
  }

  Future<void> setLoginValue(TextEditingController emailController) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
    await prefs.setString('currentUser', emailController.text.trim());
  }
}

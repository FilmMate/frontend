import 'package:film_mate/application/user/user_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/presentation/user/widgets/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/register.dart';

class ScreenLoginAndRegister extends StatelessWidget {
  const ScreenLoginAndRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "FilmMate",
          style: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state.changeScreen) {
              return const Register();
            } else {
              return const Login();
            }
          },
        ),
      ),
    );
  }
}

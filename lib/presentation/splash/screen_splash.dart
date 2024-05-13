import 'dart:developer';
import 'package:film_mate/application/explore/explore_bloc.dart';
import 'package:film_mate/presentation/main_navigator/main_navigator.dart';
import 'package:film_mate/presentation/user/login_and_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();
    splashScreen();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ExploreBloc>(context)
          .add(const ExploreEvent.getLatestMovies(lang: 'ml'));
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('lib/assets/logo.png'),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> splashScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final bool? value = prefs.getBool('isLoggedIn');
    log(value.toString());
    _navigate(value);
  }

  void _navigate(bool? value) {
    if (value == null || value == false) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const ScreenLoginAndRegister()));
    } else {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const MainNavigator()));
    }
  }
}

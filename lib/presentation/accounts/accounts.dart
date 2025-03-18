import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:film_mate/application/home/home_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/presentation/accounts/widgets/about.dart';
import 'package:film_mate/presentation/accounts/widgets/profile.dart';
import 'package:film_mate/presentation/user/login_and_register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenAccounts extends StatefulWidget {
  const ScreenAccounts({super.key});

  @override
  State<ScreenAccounts> createState() => _ScreenAccountsState();
}

class _ScreenAccountsState extends State<ScreenAccounts> {
  Future<void> _launchUrl() async {
    final Uri url = Uri.parse('https://github.com/FilmMate');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch url');
    }
  }

  void _reset() {
    Navigator.pop(context);
    BlocProvider.of<HomeBloc>(context).add(HomeEvent.resetAll());
  }

  void logOut() async {
    BlocProvider.of<HomeBloc>(context).add(HomeEvent.resetAll());
    log("log out");
    await GoogleSignIn().signOut();
    FirebaseAuth.instance.signOut();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);
    await prefs.remove('currentUser');
    _navigate(
      widget: ScreenLoginAndRegister(),
    );
  }

  void _navigate({required Widget widget}) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => widget,
      ),
      (route) => false,
    );
  }

  void _showResetDialog() {
    HapticFeedback.lightImpact();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          "Reset your Preferences",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: kSelectedBackgroundColor),
        ),
        content: const Text(
          textAlign: TextAlign.justify,
          "By clicking 'Reset', all your saved genre preferences will be reset",
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child:
                const Text("Cancel", style: TextStyle(color: Colors.black87)),
          ),
          TextButton(
            onPressed: () async {
              try {
                User? user = FirebaseAuth.instance.currentUser;
                if (user != null) {
                  String uid = user.uid;

                  await FirebaseFirestore.instance
                      .collection('users')
                      .doc(uid)
                      .update({
                    'genre': [],
                  });
                  _reset();
                  log('Genre field cleared successfully.');
                } else {
                  log('No user is signed in.');
                }
              } catch (e) {
                log('Error clearing genre field: $e');
              }
            },
            child: const Text("Reset",
                style:
                    TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  Future<void> getVersionInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String version = packageInfo.version;
    setState(() {
      appVersion = version;
    });
  }

  late String appVersion = "0.0.0";

  @override
  void initState() {
    super.initState();
    getVersionInfo();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          kHeightS,
          kHeightS,
          SizedBox(
              width: size.width * 0.4,
              child: Image.asset(
                'lib/assets/logo.png',
              )),
          Text(
            "FilmMate : $appVersion ",
            style: TextStyle(color: kWhite),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScreenProfile()));
                  },
                  child: SizedBox(
                    width: size.width,
                    child: Text(
                      "Your Profile",
                      style: TextStyle(color: kWhite),
                    ),
                  ),
                ),
                kHeightXS,
                Divider(),
                kHeightXS,
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ScreenAbout()));
                  },
                  child: SizedBox(
                    width: size.width,
                    child: Text(
                      "About FilmMate",
                      style: TextStyle(color: kWhite),
                    ),
                  ),
                ),
                Divider(),
                kHeightS,
                GestureDetector(
                  onTap: _showResetDialog,
                  child: SizedBox(
                    width: size.width,
                    child: Text(
                      "Reset Preferences",
                      style: TextStyle(color: kWhite),
                    ),
                  ),
                ),
                Divider(),
                kHeightS,
                GestureDetector(
                  onTap: _launchUrl,
                  child: SizedBox(
                    width: size.width,
                    child: Text(
                      "Visit GitHub",
                      style: TextStyle(color: kWhite),
                    ),
                  ),
                ),
                Divider(),
                kHeightS,
                SizedBox(
                  width: size.width,
                  height: 50,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all<Color>(
                            kSelectedBackgroundColor), // Set background color
                      ),
                      onPressed: logOut,
                      child: const Text(
                        "Log out",
                        style: TextStyle(
                            fontSize: 17,
                            color: kWhite,
                            fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}

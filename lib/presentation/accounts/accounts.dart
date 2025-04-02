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
import 'package:lucide_icons/lucide_icons.dart';

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

  void logOut() async {
    BlocProvider.of<HomeBloc>(context).add(HomeEvent.resetAll());
    log("log out");
    await GoogleSignIn().signOut();
    FirebaseAuth.instance.signOut();
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);
    await prefs.remove('currentUser');
    _navigate(widget: ScreenLoginAndRegister());
  }

  void _navigate({required Widget widget}) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => widget),
      (route) => false,
    );
  }

  Future<void> getVersionInfo() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      appVersion = packageInfo.version;
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
      body: Container(
        width: size.width,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: size.width * 0.4,
              child: Image.asset('lib/assets/logo.png'),
            ),
            Text("FilmMate : $appVersion",
                style: TextStyle(
                    color: kWhite, fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            _buildOption(
                context,
                "Your Profile",
                LucideIcons.user,
                () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ScreenProfile()))),
            _buildOption(
                context,
                "About FilmMate",
                LucideIcons.info,
                () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ScreenAbout()))),
            _buildOption(context, "Reset Preferences", LucideIcons.settings,
                _showResetDialog),
            _buildOption(
                context, "Visit GitHub", LucideIcons.github, _launchUrl),
            kHeightS,
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kSelectedBackgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: logOut,
                child: const Text("Log out",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(
      BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return Card(
      color: Colors.black.withValues(alpha: 0.2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, color: Colors.white),
        title: Text(title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        trailing:
            Icon(Icons.arrow_forward_ios, color: Colors.white70, size: 18),
        onTap: onTap,
      ),
    );
  }

  void _showResetDialog() {
    HapticFeedback.lightImpact();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.blueGrey.shade900,
        title: const Text("Reset your Preferences",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        content: const Text(
            "By clicking 'Reset', all your saved genre preferences will be reset.",
            textAlign: TextAlign.justify,
            style: TextStyle(color: Colors.white70)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child:
                const Text("Cancel", style: TextStyle(color: Colors.white70)),
          ),
          TextButton(
            onPressed: () async {
              User? user = FirebaseAuth.instance.currentUser;
              if (user != null) {
                String uid = user.uid;
                await FirebaseFirestore.instance
                    .collection('users')
                    .doc(uid)
                    .update({'genre': []});
                Navigator.pop(context);
                BlocProvider.of<HomeBloc>(context).add(HomeEvent.resetAll());
                log('Genre preferences reset.');
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
}

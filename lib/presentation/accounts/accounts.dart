import 'package:flutter/material.dart';

class ScreenAccounts extends StatelessWidget {
  const ScreenAccounts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Accounts",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

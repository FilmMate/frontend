import 'package:film_mate/presentation/accounts/accounts.dart';
import 'package:film_mate/presentation/explore/explore.dart';
import 'package:film_mate/presentation/home/home.dart';
import 'package:film_mate/presentation/search/search.dart';
import 'package:flutter/cupertino.dart';

const List<Widget> screens = [
  ScreenHome(),
  ScreenSearch(),
  ScreenExplore(),
  ScreenAccounts(),
];

const List<IconData> icons = [
  CupertinoIcons.home,
  CupertinoIcons.search,
  CupertinoIcons.compass,
  CupertinoIcons.profile_circled,
];

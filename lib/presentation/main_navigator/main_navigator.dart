import 'package:film_mate/application/main_navigator/main_navigator_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/menu_data.dart';
import 'package:film_mate/presentation/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainNavigator extends StatelessWidget {
  const MainNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainNavigatorBloc, MainNavigatorState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: kBackgroundColor,
          bottomNavigationBar: const Padding(
            padding: EdgeInsets.all(12.0),
            child: BottomNavBar(),
          ),
          body: screens[state.currentSelected],
        );
      },
    );
  }
}

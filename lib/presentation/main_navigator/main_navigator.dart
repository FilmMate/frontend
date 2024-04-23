import 'dart:ui';

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
    final size = MediaQuery.of(context).size;
    return BlocBuilder<MainNavigatorBloc, MainNavigatorState>(
      builder: (context, state) {
        return Scaffold(
          extendBody: true,
          backgroundColor: kBackgroundColor,
          bottomNavigationBar: const Padding(
            padding: EdgeInsets.all(12.0),
            child: BottomNavBar(),
          ),
          body: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              screens[state.currentSelected],
              Container(
                width: size.width,
                height: 80,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    // stops: [
                    //   0.0,
                    //   1.0
                    // ], // Adjust the gradient stops for smoother transition
                    colors: [
                      Colors.black.withOpacity(0.0),
                      Colors.black.withOpacity(0.3),
                      Colors.black.withOpacity(0.7),
                      Colors.black
                          .withOpacity(0.9), // Increase opacity gradually
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

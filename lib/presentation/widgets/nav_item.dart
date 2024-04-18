import 'package:film_mate/application/main_navigator/main_navigator_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavItem extends StatelessWidget {
  final IconData iconData;
  final int item;
  final String tooltip;
  const NavItem({
    super.key,
    required this.iconData,
    required this.item,
    required this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainNavigatorBloc, MainNavigatorState>(
      builder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: state.currentSelected == item
                ? kSelectedBackgroundColor
                : kdefaultBackgroundColor, // Set your desired background color here
          ),
          child: IconButton(
            onPressed: () {
              BlocProvider.of<MainNavigatorBloc>(context)
                  .add(MainNavigatorEvent.changeItem(item: item));
            },
            icon: Icon(
              iconData,
              color: state.currentSelected == item
                  ? kSelectedColor
                  : kDefaultColor,
            ),
            tooltip: tooltip,
          ),
        );
      },
    );
  }
}

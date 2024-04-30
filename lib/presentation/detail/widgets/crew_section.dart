import 'package:film_mate/core/colors.dart';
import 'package:film_mate/domain/models/cast_and_crew.dart/cast_and_crew.dart';
import 'package:flutter/material.dart';

class CrewSection extends StatelessWidget {
  const CrewSection({
    super.key,
    required this.size,
    required this.crew,
  });

  final Size size;
  final List<Crew> crew;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      child: Container(
        constraints: BoxConstraints(
          maxHeight: size.height * 2,
        ),
        child: ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  crew[index].job ?? "",
                  style: const TextStyle(
                    color: kWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  crew[index].name ?? "",
                  style: const TextStyle(
                    color: kWhite,
                    fontWeight: FontWeight.w100,
                    fontSize: 12,
                  ),
                )
              ],
            );
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: crew.length,
        ),
      ),
    );
  }
}


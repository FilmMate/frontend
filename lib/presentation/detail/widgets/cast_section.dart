import 'package:film_mate/core/colors.dart';
import 'package:film_mate/domain/models/cast_and_crew.dart/cast_and_crew.dart';
import 'package:flutter/material.dart';

class CastSection extends StatelessWidget {
  const CastSection({
    super.key,
    required this.size,
    required this.cast,
  });

  final Size size;
  final List<Cast> cast;

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
                  cast[index].name ?? "",
                  style: const TextStyle(
                    color: kWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Container(
                  constraints: BoxConstraints(
                      maxHeight:
                          MediaQuery.of(context).size.width * 0.20,
                      maxWidth: size.width *
                          0.3 // Limit width to screen width - 10
                      ),
                  child: Text(
                    cast[index].character ?? "",
                    textAlign: TextAlign.end,
                    style: const TextStyle(
                      color: kWhite,
                      fontWeight: FontWeight.w100,
                      fontSize: 12,
                    ),
                  ),
                )
              ],
            );
          },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: cast.length,
        ),
      ),
    );
  }
}

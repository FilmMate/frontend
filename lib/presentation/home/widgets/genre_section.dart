import 'package:film_mate/presentation/home/widgets/genre_icon.dart';
import 'package:flutter/material.dart';

class GenreSection extends StatelessWidget {
  const GenreSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GenreIcon(),
        GenreIcon(),
        GenreIcon(),
        GenreIcon(),
      ],
    );
  }
}

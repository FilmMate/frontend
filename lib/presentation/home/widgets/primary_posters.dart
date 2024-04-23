import 'package:flutter/material.dart';

class PrimaryPosters extends StatelessWidget {
  const PrimaryPosters({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://image.tmdb.org/t/p/original/uPpmBjY3znUqGY8kYwI5xvOrSc0.jpg"))),
    );
  }
}

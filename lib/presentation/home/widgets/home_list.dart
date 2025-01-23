import 'package:film_mate/core/colors.dart';
import 'package:film_mate/domain/models/endpoints.dart';
import 'package:film_mate/domain/models/tmdb/tmdb.dart';
import 'package:film_mate/presentation/detail/detail_screen_primary.dart';
import 'package:film_mate/presentation/detail/widgets/poster.dart';
import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  const HomeList(
      {super.key,
      required this.size,
      required this.title,
      required this.data,
      required this.isLoading,
      required this.isError,
      required this.type,
      this.length = 10});

  final Size size;
  final String title;
  final List<TMDBResponse> data;
  final bool isLoading;
  final bool isError;
  final int length;
  final String type;

  @override
  Widget build(BuildContext context) {
    if (isError) {
      return const Text("Error");
    }
    if (isLoading || data.isEmpty) {
      return const CircularProgressIndicator();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            title,
            style: const TextStyle(
                color: kWhite, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        SizedBox(
          width: size.width,
          height: size.width * .60,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ScreenDetailPrimary(
                            type: type,
                            id: data[index].id!,
                          )));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Poster(
                    width: size.width * .40,
                    height: 300,
                    image: "${EndPoints.image}${data[index].posterPath}",
                  ),
                ),
              );
            },
            itemCount: length,
          ),
        )
      ],
    );
  }
}

import 'package:film_mate/application/detail/detail_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/domain/models/endpoints.dart';
import 'package:film_mate/presentation/detail/detail_screen_primary.dart';
import 'package:film_mate/presentation/detail/widgets/poster.dart';
import 'package:flutter/material.dart';

class SimilarContentWidget extends StatelessWidget {
  const SimilarContentWidget({
    super.key,
    required this.size,
    required this.type,
    required this.state,
  });

  final Size size;
  final String type;
  final DetailState state;

  @override
  Widget build(BuildContext context) {
    if (state.isLoadingSimilar) {
      return CircularProgressIndicator();
    }
    if (state.isErrorSimilar || state.similarList.isEmpty) {
      return SizedBox();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Similar Content",
          style: TextStyle(
              color: kWhite, fontWeight: FontWeight.bold, fontSize: 15),
        ),
        kHeightXS,
        SizedBox(
          width: size.width,
          height: size.width * 0.40,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => ScreenDetailPrimary(
                            type: type, id: state.similarList[index].id!)));
                  },
                  child: Poster(
                    width: size.width * 0.60,
                    height: size.width * 0.38,
                    image:
                        "${EndPoints.image}/${state.similarList[index].backdropPath}",
                  ),
                ),
              );
            },
            itemCount: state.similarList.length,
          ),
        )
      ],
    );
  }
}

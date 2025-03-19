import 'package:film_mate/application/detail/detail_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/domain/models/endpoints.dart';
import 'package:film_mate/presentation/detail/widgets/poster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WhereToWatch extends StatelessWidget {
  const WhereToWatch({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailBloc, DetailState>(
      builder: (context, state) {
        if (state.tvProviderList.flatrate == null ||
            state.tvProviderList.link == null) {
          return Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Where to Watch',
                      style: TextStyle(
                        color: kWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    kHeightXS,
                    Text(
                      'Content not streaming in India',
                      style: TextStyle(
                        color: kWhite,
                      ),
                    ),
                  ]));
        }
        return Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Where to Watch',
                style: TextStyle(
                  color: kWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              kHeightXS,
              SizedBox(
                width: size.width,
                height: size.width * 0.20,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        constraints: BoxConstraints(
                          maxWidth: size.width * 0.55,
                        ),
                        height: size.width * 0.17,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withAlpha(45),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Poster(
                                width: size.width * 0.15,
                                height: size.width * 0.15,
                                image:
                                    "${EndPoints.image}${state.tvProviderList.flatrate![index].logoPath}"),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 8, right: 8),
                                child: Text(
                                  state.tvProviderList.flatrate![index]
                                      .providerName!,
                                  style: TextStyle(
                                    color: kWhite,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: state.tvProviderList.flatrate!.length,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
import 'package:film_mate/application/home/home_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/domain/models/languages/lang_data.dart';
import 'package:film_mate/domain/models/languages/language.dart';
import 'package:film_mate/presentation/home/widgets/language_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageSection extends StatelessWidget {
  LanguageSection({super.key});

  final List<Language> lang = LanguageData.languages;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.width * 0.2,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 4),
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LanguageDetail(
                              language: lang[index],
                            )));
                  },
                  child: Container(
                    width: size.width * 0.4,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color:
                              kSelectedBackgroundColor, // Set border color here
                          width: 2.0, // Set border width here
                        ),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        lang[index].name,
                        style: const TextStyle(
                            color: kWhite, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
        itemCount: 4,
      ),
    );
  }
}

import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.width * .10,
                child: CupertinoSearchTextField(
                  prefixIcon: Icon(CupertinoIcons.search,color: kWhite,),
                  suffixIcon: Icon(CupertinoIcons.xmark_circle_fill,color: kWhite,),
                  style: TextStyle(color: kWhite),
                ),
              ),
              kHeightS,
              Text(
                "Top Searches",
                style: TextStyle(
                    color: kWhite, fontWeight: FontWeight.bold, fontSize: 16),
              ),
              kHeightS,
              Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Container(
                          height: size.width * .28,
                          width: size.width,
                          child: Row(
                            children: [
                              Container(
                                width: size.width * .50,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            "https://image.tmdb.org/t/p/original/iiPyuMn3SHluoLPhIBvxh04wIAb.jpg"))),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Kunfu panda 4",
                                        style: TextStyle(
                                            color: kWhite,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16)),
                                    Text("2024",
                                        style: TextStyle(
                                            color: kWhite,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16))
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return kHeightS;
                      },
                      itemCount: 10))
            ],
          ),
        ),
      ),
    );
  }
}

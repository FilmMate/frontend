import 'package:film_mate/application/detail/detail_bloc.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/presentation/chat/chatroom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatButton extends StatelessWidget {
  const ChatButton({
    super.key,
    required this.id,
    this.title,
  });

  final int id;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailBloc, DetailState>(
      builder: (context, state) {
        if (state.isError || state.isLoading) {
          return SizedBox();
        }
        return FloatingActionButton(
          backgroundColor: kWhite,
          foregroundColor: kSelectedBackgroundColor,
          onPressed: () {
            if (title == null) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BlocSelector<DetailBloc, DetailState, String?>(
                            selector: (state) => state.detailData.title,
                            builder: (context, title) {
                              final String? mytitle = title;
                              return ChatRoom(
                                title: mytitle,
                                mediaId: id.toString(),
                              );
                            },
                          )));
            } else {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChatRoom(
                            title: title,
                            mediaId: id.toString(),
                          )));
            }
          },
          child: Icon(Icons.message),
        );
      },
    );
  }
}

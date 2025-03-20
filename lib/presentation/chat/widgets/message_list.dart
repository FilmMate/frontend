import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:film_mate/core/colors.dart';
import 'package:film_mate/core/constants.dart';
import 'package:film_mate/presentation/explore/widgets/video_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MessageList extends StatelessWidget {
  final Stream<QuerySnapshot> messageStream;
  final FirebaseAuth firebaseAuth;
  final ScrollController scrollController;
  final Function(String) onDeleteMessage;
  final Function(int) onNewMessages;

  const MessageList({
    super.key,
    required this.messageStream,
    required this.firebaseAuth,
    required this.scrollController,
    required this.onDeleteMessage,
    required this.onNewMessages,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: StreamBuilder(
        stream: messageStream,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          final docs = snapshot.data!.docs;

          // Store current message count for new message detection
          // Use post-frame callback to avoid calling setState during build
          WidgetsBinding.instance.addPostFrameCallback((_) {
            // Notify parent about message count
            onNewMessages(docs.length);
          });

          return ListView.builder(
            controller: scrollController,
            itemCount: docs.length,
            itemBuilder: (context, index) => _buildMessageItem(docs[index]),
            physics:
                const AlwaysScrollableScrollPhysics(), // Ensure scrolling is always enabled
          );
        },
      ),
    );
  }

  Widget _buildMessageItem(DocumentSnapshot document) {
    Map<String, dynamic> data = document.data() as Map<String, dynamic>;
    String messageId = document.id;

    bool isCurrentUser = data["senderId"] == firebaseAuth.currentUser!.uid;
    Alignment alignment =
        isCurrentUser ? Alignment.centerRight : Alignment.centerLeft;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        alignment: alignment,
        child: Column(
          crossAxisAlignment:
              isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              data["username"] ?? data["senderEmail"],
              style:
                  const TextStyle(color: kWhite, fontWeight: FontWeight.bold),
            ),
            kHeightXS,
            GestureDetector(
              onLongPress:
                  isCurrentUser ? () => onDeleteMessage(messageId) : null,
              child: MessageBubble(data: data),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  const MessageBubble({
    super.key,
    required this.data,
  });

  final Map<String, dynamic> data;

  @override
  Widget build(BuildContext context) {
    if (data["validUrl"] == true) {
      return Column(
        children: [
          VideoWidget(videoUrl: data["url"], imageUrl: data["thumbnail"]),
          kHeightXS,
          Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 63, 61, 61),
                  borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  data["message"],
                  style: const TextStyle(color: kWhite),
                ),
              ))
        ],
      );
    }
    return Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 63, 61, 61),
            borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            data["message"],
            style: const TextStyle(color: kWhite),
          ),
        ));
  }
}

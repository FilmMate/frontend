import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:film_mate/domain/models/message/message.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ChatServices extends ChangeNotifier {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> sendMessageWithLink(
      String mediaId, String message, String url, String thumbnail) async {
    final String currentUserId = _firebaseAuth.currentUser!.uid;
    final String currentUserEmail = _firebaseAuth.currentUser!.email.toString();
    final Timestamp timestamp = Timestamp.now();
    final String? username = _firebaseAuth.currentUser!.displayName;

    Message newMessage = Message(
        username: username,
        mediaId: mediaId,
        senderId: currentUserId,
        senderEmail: currentUserEmail,
        message: message,
        timestamp: timestamp,
        validUrl: true,
        url: url,
        thumbnail: thumbnail);

    await _firestore
        .collection("chat_rooms")
        .doc(mediaId)
        .collection("messages")
        .add(newMessage.toMap());
  }

  Future<void> sendMessage(String mediaId, String message) async {
    final String currentUserId = _firebaseAuth.currentUser!.uid;
    final String currentUserEmail = _firebaseAuth.currentUser!.email.toString();
    final Timestamp timestamp = Timestamp.now();
    final String? username = _firebaseAuth.currentUser!.displayName;

    Message newMessage = Message(
        username: username,
        mediaId: mediaId,
        senderId: currentUserId,
        senderEmail: currentUserEmail,
        message: message,
        timestamp: timestamp);

    await _firestore
        .collection("chat_rooms")
        .doc(mediaId)
        .collection("messages")
        .add(newMessage.toMap());
  }

  Stream<QuerySnapshot> getMessages(String mediaId) {
    return _firestore
        .collection("chat_rooms")
        .doc(mediaId)
        .collection("messages")
        .orderBy("timestamp", descending: false)
        .snapshots();
  }

  Future<void> deleteMessage(String mediaId, String documentId) async {
    try {
      await _firestore
          .collection("chat_rooms")
          .doc(mediaId)
          .collection("messages")
          .doc(documentId)
          .delete();
    } catch (e) {
      debugPrint("Error deleting message: $e");
    }
  }
}

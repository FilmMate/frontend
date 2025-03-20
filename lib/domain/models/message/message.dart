import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String mediaId;
  final String senderId;
  final String senderEmail;
  final String message;
  final Timestamp timestamp;
  final String? username;
  final bool validUrl;
  final String? url;
  final String? thumbnail;

  Message(
      {required this.mediaId,
      required this.senderId,
      required this.senderEmail,
      required this.message,
      required this.timestamp,
      required this.username,
      this.validUrl = false,
      this.url,
      this.thumbnail});

  Map<String, dynamic> toMap() {
    return {
      'mediaId': mediaId,
      'senderId': senderId,
      'senderEmail': senderEmail,
      'message': message,
      'timestamp': timestamp,
      'username': username,
      "validUrl": validUrl,
      "url": url,
      "thumbnail" :thumbnail,
    };
  }
}

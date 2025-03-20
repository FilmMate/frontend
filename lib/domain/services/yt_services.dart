import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:film_mate/core/api_key.dart';

const String apiKey = ytApiKey;
final Dio dio = Dio();

/// Extracts the first YouTube URL from a given text message
String? extractYouTubeUrl(String message) {
  final regExp = RegExp(
    r"(https?:\/\/)?(www\.)?(youtube\.com\/(watch\?v=|embed\/|v\/)|youtu\.be\/)([\w-]{11})",
    caseSensitive: false,
  );
  final match = regExp.firstMatch(message);
  return match?.group(0); // Return the full matched URL
}

/// Extracts the video ID from a YouTube URL
String? extractVideoId(String url) {
  final regExp = RegExp(r"(?:v=|\/)([0-9A-Za-z_-]{11}).*");
  final match = regExp.firstMatch(url);
  return match?.group(1);
}

/// Checks if the extracted YouTube video exists
Future<dynamic> checkYouTubeVideoExists(String message) async {
  final String? url = extractYouTubeUrl(message);

  if (url == null) {
    log("❌ No YouTube link detected in the message");
    return null;
  }

  final videoId = extractVideoId(url);
  if (videoId == null) {
    log("❌ Could not extract Video ID");
    return null;
  }

  final apiUrl =
      "https://www.googleapis.com/youtube/v3/videos?id=$videoId&key=$apiKey&part=snippet";

  try {
    final response = await dio.get(apiUrl);

    if (response.statusCode == 200) {
      final data = response.data;
      if (data["items"].isNotEmpty) {
        final snippet = data["items"][0]["snippet"];
        final thumbnailUrl = snippet["thumbnails"]["high"]["url"];
        log("✅ Valid YouTube Video: $url");
        return {
          'url':url,
          'thumbnail':thumbnailUrl
        };
      } else {
        log("❌ Invalid YouTube Video (Does not exist)");
        return null;
      }
    } else {
      log("❌ API Error: ${response.statusMessage}");
      return null;
    }
  } catch (e) {
    log("❌ Error: $e");
    return null;
  }
}
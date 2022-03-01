import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:videos_api/videos_api.dart';

/// Exception thrown when getVideosList method fails.
class GetVideosRequestFailure implements Exception {}

/// Exception thrown when json deserialization fails.
class GetVideosDeserializationFailure implements Exception {}

class VideosApiClient {
  VideosApiClient({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  static const _baseUrl = '62175a5d71e7672e537b9a06.mockapi.io';
  final http.Client _httpClient;

  Future<List<VideoData>> getVideos() async {
    final request = Uri.https(_baseUrl, '/api/v1/videos');
    final response = await _httpClient.get(request);

    if (response.statusCode != 200) {
      throw GetVideosRequestFailure();
    }

    final List<VideoData> videos = [];
    try {
      final jsonList = jsonDecode(response.body);

      for (var jsonVideo in jsonList) {
        final video = VideoData.fromJson(jsonVideo);
        videos.add(video);
      }
    } catch (_) {
      throw GetVideosDeserializationFailure();
    }
    return videos;
  }
}

import 'package:videos_api/videos_api.dart';

class VideosRepository {
  const VideosRepository({required this.videosApi});

  final VideosApi videosApi;

  Future<List<Video>> getVideosList() async => await videosApi.getVideosList();
}

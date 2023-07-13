import 'package:flutter_preload_videos/core/constants.dart';

class ApiService {
  static final List<String> _videos = [
    'https://api.tfarraj.tv/api/v1/videos/64a1fa034bb997bdf598ef77/video',
    'https://api.tfarraj.tv/api/v1/videos/64a1fee44bb997bdf5991442/video',
    'https://api.tfarraj.tv/api/v1/videos/64a80dcf4bb997bdf59f34e2/video',
    'https://api.tfarraj.tv/api/v1/videos/63f3daf03e12167f51c8fd7c/video',
  ];

  /// Simulate api call
  static Future<List<String>> getVideos({int id = 0}) async {
    // No more videos
    if ((id >= _videos.length)) {
      return [];
    }

    await Future.delayed(const Duration(seconds: kLatency));

    if ((id + kNextLimit >= _videos.length)) {
      return _videos.sublist(id, _videos.length);
    }

    return _videos.sublist(id, id + kNextLimit);
  }
}

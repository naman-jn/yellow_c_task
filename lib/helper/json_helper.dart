import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:yellow_c_task/constants/constants.dart';
import 'package:yellow_c_task/models/video_data/video_data.dart';

class JsonService {
  static Future<List<VideoData>> getData() async {
    try {
      final String response =
          await rootBundle.loadString(AppConstants.datasetPath);

      List<Map<String, dynamic>> result =
          List<Map<String, dynamic>>.from(jsonDecode(response.toString()));

      var allVideosData = result.map((videoDataData) {
        VideoData videoData = VideoData.fromJson(
          videoDataData,
        );

        return videoData;
      }).toList();
      return allVideosData;
    } catch (e) {
      return [];
    }
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_data.g.dart';
part 'video_data.freezed.dart';

@freezed
class VideoData with _$VideoData {
  const VideoData._();

  const factory VideoData({
    required int id,
    required String title,
    required String videoUrl,
    required String coverPicture,
  }) = _VideoData;

  factory VideoData.fromJson(Map<String, dynamic> json) =>
      _$VideoDataFromJson(json);
}

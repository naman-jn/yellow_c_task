// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoData _$$_VideoDataFromJson(Map<String, dynamic> json) => _$_VideoData(
      id: json['id'] as int,
      title: json['title'] as String,
      videoUrl: json['videoUrl'] as String,
      coverPicture: json['coverPicture'] as String,
    );

Map<String, dynamic> _$$_VideoDataToJson(_$_VideoData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'videoUrl': instance.videoUrl,
      'coverPicture': instance.coverPicture,
    };

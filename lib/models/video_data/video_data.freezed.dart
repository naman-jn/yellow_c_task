// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'video_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VideoData _$VideoDataFromJson(Map<String, dynamic> json) {
  return _VideoData.fromJson(json);
}

/// @nodoc
mixin _$VideoData {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get videoUrl => throw _privateConstructorUsedError;
  String get coverPicture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoDataCopyWith<VideoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoDataCopyWith<$Res> {
  factory $VideoDataCopyWith(VideoData value, $Res Function(VideoData) then) =
      _$VideoDataCopyWithImpl<$Res>;
  $Res call({int id, String title, String videoUrl, String coverPicture});
}

/// @nodoc
class _$VideoDataCopyWithImpl<$Res> implements $VideoDataCopyWith<$Res> {
  _$VideoDataCopyWithImpl(this._value, this._then);

  final VideoData _value;
  // ignore: unused_field
  final $Res Function(VideoData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? videoUrl = freezed,
    Object? coverPicture = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      coverPicture: coverPicture == freezed
          ? _value.coverPicture
          : coverPicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_VideoDataCopyWith<$Res> implements $VideoDataCopyWith<$Res> {
  factory _$$_VideoDataCopyWith(
          _$_VideoData value, $Res Function(_$_VideoData) then) =
      __$$_VideoDataCopyWithImpl<$Res>;
  @override
  $Res call({int id, String title, String videoUrl, String coverPicture});
}

/// @nodoc
class __$$_VideoDataCopyWithImpl<$Res> extends _$VideoDataCopyWithImpl<$Res>
    implements _$$_VideoDataCopyWith<$Res> {
  __$$_VideoDataCopyWithImpl(
      _$_VideoData _value, $Res Function(_$_VideoData) _then)
      : super(_value, (v) => _then(v as _$_VideoData));

  @override
  _$_VideoData get _value => super._value as _$_VideoData;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? videoUrl = freezed,
    Object? coverPicture = freezed,
  }) {
    return _then(_$_VideoData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videoUrl: videoUrl == freezed
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      coverPicture: coverPicture == freezed
          ? _value.coverPicture
          : coverPicture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoData extends _VideoData {
  const _$_VideoData(
      {required this.id,
      required this.title,
      required this.videoUrl,
      required this.coverPicture})
      : super._();

  factory _$_VideoData.fromJson(Map<String, dynamic> json) =>
      _$$_VideoDataFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String videoUrl;
  @override
  final String coverPicture;

  @override
  String toString() {
    return 'VideoData(id: $id, title: $title, videoUrl: $videoUrl, coverPicture: $coverPicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.videoUrl, videoUrl) &&
            const DeepCollectionEquality()
                .equals(other.coverPicture, coverPicture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(videoUrl),
      const DeepCollectionEquality().hash(coverPicture));

  @JsonKey(ignore: true)
  @override
  _$$_VideoDataCopyWith<_$_VideoData> get copyWith =>
      __$$_VideoDataCopyWithImpl<_$_VideoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoDataToJson(this);
  }
}

abstract class _VideoData extends VideoData {
  const factory _VideoData(
      {required final int id,
      required final String title,
      required final String videoUrl,
      required final String coverPicture}) = _$_VideoData;
  const _VideoData._() : super._();

  factory _VideoData.fromJson(Map<String, dynamic> json) =
      _$_VideoData.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get videoUrl => throw _privateConstructorUsedError;
  @override
  String get coverPicture => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VideoDataCopyWith<_$_VideoData> get copyWith =>
      throw _privateConstructorUsedError;
}

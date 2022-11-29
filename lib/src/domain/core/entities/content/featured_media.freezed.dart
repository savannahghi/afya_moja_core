// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'featured_media.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeaturedMedia _$FeaturedMediaFromJson(Map<String, dynamic> json) {
  return _FeaturedMedia.fromJson(json);
}

/// @nodoc
mixin _$FeaturedMedia {
  @JsonKey(name: 'ID')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String? get mediaUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', unknownEnumValue: FeaturedMediaType.UNKNOWN)
  FeaturedMediaType? get featuredMediaType =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'duration')
  int? get duration => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail')
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeaturedMediaCopyWith<FeaturedMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedMediaCopyWith<$Res> {
  factory $FeaturedMediaCopyWith(
          FeaturedMedia value, $Res Function(FeaturedMedia) then) =
      _$FeaturedMediaCopyWithImpl<$Res, FeaturedMedia>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ID')
          int? id,
      @JsonKey(name: 'url')
          String? mediaUrl,
      @JsonKey(name: 'title')
          String? title,
      @JsonKey(name: 'type', unknownEnumValue: FeaturedMediaType.UNKNOWN)
          FeaturedMediaType? featuredMediaType,
      @JsonKey(name: 'duration')
          int? duration,
      @JsonKey(name: 'width')
          int? width,
      @JsonKey(name: 'height')
          int? height,
      @JsonKey(name: 'thumbnail')
          String? thumbnail});
}

/// @nodoc
class _$FeaturedMediaCopyWithImpl<$Res, $Val extends FeaturedMedia>
    implements $FeaturedMediaCopyWith<$Res> {
  _$FeaturedMediaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mediaUrl = freezed,
    Object? title = freezed,
    Object? featuredMediaType = freezed,
    Object? duration = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaUrl: freezed == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      featuredMediaType: freezed == featuredMediaType
          ? _value.featuredMediaType
          : featuredMediaType // ignore: cast_nullable_to_non_nullable
              as FeaturedMediaType?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeaturedMediaCopyWith<$Res>
    implements $FeaturedMediaCopyWith<$Res> {
  factory _$$_FeaturedMediaCopyWith(
          _$_FeaturedMedia value, $Res Function(_$_FeaturedMedia) then) =
      __$$_FeaturedMediaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ID')
          int? id,
      @JsonKey(name: 'url')
          String? mediaUrl,
      @JsonKey(name: 'title')
          String? title,
      @JsonKey(name: 'type', unknownEnumValue: FeaturedMediaType.UNKNOWN)
          FeaturedMediaType? featuredMediaType,
      @JsonKey(name: 'duration')
          int? duration,
      @JsonKey(name: 'width')
          int? width,
      @JsonKey(name: 'height')
          int? height,
      @JsonKey(name: 'thumbnail')
          String? thumbnail});
}

/// @nodoc
class __$$_FeaturedMediaCopyWithImpl<$Res>
    extends _$FeaturedMediaCopyWithImpl<$Res, _$_FeaturedMedia>
    implements _$$_FeaturedMediaCopyWith<$Res> {
  __$$_FeaturedMediaCopyWithImpl(
      _$_FeaturedMedia _value, $Res Function(_$_FeaturedMedia) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mediaUrl = freezed,
    Object? title = freezed,
    Object? featuredMediaType = freezed,
    Object? duration = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$_FeaturedMedia(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaUrl: freezed == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      featuredMediaType: freezed == featuredMediaType
          ? _value.featuredMediaType
          : featuredMediaType // ignore: cast_nullable_to_non_nullable
              as FeaturedMediaType?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeaturedMedia implements _FeaturedMedia {
  _$_FeaturedMedia(
      {@JsonKey(name: 'ID')
          this.id,
      @JsonKey(name: 'url')
          this.mediaUrl,
      @JsonKey(name: 'title')
          this.title,
      @JsonKey(name: 'type', unknownEnumValue: FeaturedMediaType.UNKNOWN)
          this.featuredMediaType,
      @JsonKey(name: 'duration')
          this.duration,
      @JsonKey(name: 'width')
          this.width,
      @JsonKey(name: 'height')
          this.height,
      @JsonKey(name: 'thumbnail')
          this.thumbnail});

  factory _$_FeaturedMedia.fromJson(Map<String, dynamic> json) =>
      _$$_FeaturedMediaFromJson(json);

  @override
  @JsonKey(name: 'ID')
  final int? id;
  @override
  @JsonKey(name: 'url')
  final String? mediaUrl;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'type', unknownEnumValue: FeaturedMediaType.UNKNOWN)
  final FeaturedMediaType? featuredMediaType;
  @override
  @JsonKey(name: 'duration')
  final int? duration;
  @override
  @JsonKey(name: 'width')
  final int? width;
  @override
  @JsonKey(name: 'height')
  final int? height;
  @override
  @JsonKey(name: 'thumbnail')
  final String? thumbnail;

  @override
  String toString() {
    return 'FeaturedMedia(id: $id, mediaUrl: $mediaUrl, title: $title, featuredMediaType: $featuredMediaType, duration: $duration, width: $width, height: $height, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeaturedMedia &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mediaUrl, mediaUrl) ||
                other.mediaUrl == mediaUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.featuredMediaType, featuredMediaType) ||
                other.featuredMediaType == featuredMediaType) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, mediaUrl, title,
      featuredMediaType, duration, width, height, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeaturedMediaCopyWith<_$_FeaturedMedia> get copyWith =>
      __$$_FeaturedMediaCopyWithImpl<_$_FeaturedMedia>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeaturedMediaToJson(
      this,
    );
  }
}

abstract class _FeaturedMedia implements FeaturedMedia {
  factory _FeaturedMedia(
      {@JsonKey(name: 'ID')
          final int? id,
      @JsonKey(name: 'url')
          final String? mediaUrl,
      @JsonKey(name: 'title')
          final String? title,
      @JsonKey(name: 'type', unknownEnumValue: FeaturedMediaType.UNKNOWN)
          final FeaturedMediaType? featuredMediaType,
      @JsonKey(name: 'duration')
          final int? duration,
      @JsonKey(name: 'width')
          final int? width,
      @JsonKey(name: 'height')
          final int? height,
      @JsonKey(name: 'thumbnail')
          final String? thumbnail}) = _$_FeaturedMedia;

  factory _FeaturedMedia.fromJson(Map<String, dynamic> json) =
      _$_FeaturedMedia.fromJson;

  @override
  @JsonKey(name: 'ID')
  int? get id;
  @override
  @JsonKey(name: 'url')
  String? get mediaUrl;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'type', unknownEnumValue: FeaturedMediaType.UNKNOWN)
  FeaturedMediaType? get featuredMediaType;
  @override
  @JsonKey(name: 'duration')
  int? get duration;
  @override
  @JsonKey(name: 'width')
  int? get width;
  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'thumbnail')
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$_FeaturedMediaCopyWith<_$_FeaturedMedia> get copyWith =>
      throw _privateConstructorUsedError;
}

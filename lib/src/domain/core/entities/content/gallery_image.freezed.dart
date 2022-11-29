// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gallery_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GalleryImage _$GalleryImageFromJson(Map<String, dynamic> json) {
  return _GalleryImage.fromJson(json);
}

/// @nodoc
mixin _$GalleryImage {
  int? get id => throw _privateConstructorUsedError;
  ImageDetail? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GalleryImageCopyWith<GalleryImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryImageCopyWith<$Res> {
  factory $GalleryImageCopyWith(
          GalleryImage value, $Res Function(GalleryImage) then) =
      _$GalleryImageCopyWithImpl<$Res, GalleryImage>;
  @useResult
  $Res call({int? id, ImageDetail? image});

  $ImageDetailCopyWith<$Res>? get image;
}

/// @nodoc
class _$GalleryImageCopyWithImpl<$Res, $Val extends GalleryImage>
    implements $GalleryImageCopyWith<$Res> {
  _$GalleryImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageDetail?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageDetailCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $ImageDetailCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GalleryImageCopyWith<$Res>
    implements $GalleryImageCopyWith<$Res> {
  factory _$$_GalleryImageCopyWith(
          _$_GalleryImage value, $Res Function(_$_GalleryImage) then) =
      __$$_GalleryImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, ImageDetail? image});

  @override
  $ImageDetailCopyWith<$Res>? get image;
}

/// @nodoc
class __$$_GalleryImageCopyWithImpl<$Res>
    extends _$GalleryImageCopyWithImpl<$Res, _$_GalleryImage>
    implements _$$_GalleryImageCopyWith<$Res> {
  __$$_GalleryImageCopyWithImpl(
      _$_GalleryImage _value, $Res Function(_$_GalleryImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_GalleryImage(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as ImageDetail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GalleryImage implements _GalleryImage {
  _$_GalleryImage({this.id, this.image});

  factory _$_GalleryImage.fromJson(Map<String, dynamic> json) =>
      _$$_GalleryImageFromJson(json);

  @override
  final int? id;
  @override
  final ImageDetail? image;

  @override
  String toString() {
    return 'GalleryImage(id: $id, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GalleryImage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GalleryImageCopyWith<_$_GalleryImage> get copyWith =>
      __$$_GalleryImageCopyWithImpl<_$_GalleryImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GalleryImageToJson(
      this,
    );
  }
}

abstract class _GalleryImage implements GalleryImage {
  factory _GalleryImage({final int? id, final ImageDetail? image}) =
      _$_GalleryImage;

  factory _GalleryImage.fromJson(Map<String, dynamic> json) =
      _$_GalleryImage.fromJson;

  @override
  int? get id;
  @override
  ImageDetail? get image;
  @override
  @JsonKey(ignore: true)
  _$$_GalleryImageCopyWith<_$_GalleryImage> get copyWith =>
      throw _privateConstructorUsedError;
}

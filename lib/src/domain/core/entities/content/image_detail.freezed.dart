// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ImageDetail _$ImageDetailFromJson(Map<String, dynamic> json) {
  return _ImageDetail.fromJson(json);
}

/// @nodoc
mixin _$ImageDetail {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  ImageMeta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageDetailCopyWith<ImageDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageDetailCopyWith<$Res> {
  factory $ImageDetailCopyWith(
          ImageDetail value, $Res Function(ImageDetail) then) =
      _$ImageDetailCopyWithImpl<$Res>;
  $Res call({int? id, String? title, ImageMeta? meta});

  $ImageMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ImageDetailCopyWithImpl<$Res> implements $ImageDetailCopyWith<$Res> {
  _$ImageDetailCopyWithImpl(this._value, this._then);

  final ImageDetail _value;
  // ignore: unused_field
  final $Res Function(ImageDetail) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ImageMeta?,
    ));
  }

  @override
  $ImageMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $ImageMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$$_ImageDetailCopyWith<$Res>
    implements $ImageDetailCopyWith<$Res> {
  factory _$$_ImageDetailCopyWith(
          _$_ImageDetail value, $Res Function(_$_ImageDetail) then) =
      __$$_ImageDetailCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? title, ImageMeta? meta});

  @override
  $ImageMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_ImageDetailCopyWithImpl<$Res> extends _$ImageDetailCopyWithImpl<$Res>
    implements _$$_ImageDetailCopyWith<$Res> {
  __$$_ImageDetailCopyWithImpl(
      _$_ImageDetail _value, $Res Function(_$_ImageDetail) _then)
      : super(_value, (v) => _then(v as _$_ImageDetail));

  @override
  _$_ImageDetail get _value => super._value as _$_ImageDetail;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_ImageDetail(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as ImageMeta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageDetail implements _ImageDetail {
  _$_ImageDetail({this.id, this.title, this.meta});

  factory _$_ImageDetail.fromJson(Map<String, dynamic> json) =>
      _$$_ImageDetailFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final ImageMeta? meta;

  @override
  String toString() {
    return 'ImageDetail(id: $id, title: $title, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageDetail &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.meta, meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(meta));

  @JsonKey(ignore: true)
  @override
  _$$_ImageDetailCopyWith<_$_ImageDetail> get copyWith =>
      __$$_ImageDetailCopyWithImpl<_$_ImageDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageDetailToJson(
      this,
    );
  }
}

abstract class _ImageDetail implements ImageDetail {
  factory _ImageDetail(
      {final int? id,
      final String? title,
      final ImageMeta? meta}) = _$_ImageDetail;

  factory _ImageDetail.fromJson(Map<String, dynamic> json) =
      _$_ImageDetail.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  ImageMeta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_ImageDetailCopyWith<_$_ImageDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

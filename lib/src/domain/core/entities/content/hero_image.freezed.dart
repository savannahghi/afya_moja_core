// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hero_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HeroImage _$HeroImageFromJson(Map<String, dynamic> json) {
  return _HeroImage.fromJson(json);
}

/// @nodoc
mixin _$HeroImage {
  @JsonKey(name: 'url')
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeroImageCopyWith<HeroImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeroImageCopyWith<$Res> {
  factory $HeroImageCopyWith(HeroImage value, $Res Function(HeroImage) then) =
      _$HeroImageCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'url') String? url});
}

/// @nodoc
class _$HeroImageCopyWithImpl<$Res> implements $HeroImageCopyWith<$Res> {
  _$HeroImageCopyWithImpl(this._value, this._then);

  final HeroImage _value;
  // ignore: unused_field
  final $Res Function(HeroImage) _then;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_HeroImageCopyWith<$Res> implements $HeroImageCopyWith<$Res> {
  factory _$$_HeroImageCopyWith(
          _$_HeroImage value, $Res Function(_$_HeroImage) then) =
      __$$_HeroImageCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'url') String? url});
}

/// @nodoc
class __$$_HeroImageCopyWithImpl<$Res> extends _$HeroImageCopyWithImpl<$Res>
    implements _$$_HeroImageCopyWith<$Res> {
  __$$_HeroImageCopyWithImpl(
      _$_HeroImage _value, $Res Function(_$_HeroImage) _then)
      : super(_value, (v) => _then(v as _$_HeroImage));

  @override
  _$_HeroImage get _value => super._value as _$_HeroImage;

  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$_HeroImage(
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HeroImage implements _HeroImage {
  _$_HeroImage({@JsonKey(name: 'url') this.url});

  factory _$_HeroImage.fromJson(Map<String, dynamic> json) =>
      _$$_HeroImageFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String? url;

  @override
  String toString() {
    return 'HeroImage(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HeroImage &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_HeroImageCopyWith<_$_HeroImage> get copyWith =>
      __$$_HeroImageCopyWithImpl<_$_HeroImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HeroImageToJson(
      this,
    );
  }
}

abstract class _HeroImage implements HeroImage {
  factory _HeroImage({@JsonKey(name: 'url') final String? url}) = _$_HeroImage;

  factory _HeroImage.fromJson(Map<String, dynamic> json) =
      _$_HeroImage.fromJson;

  @override
  @JsonKey(name: 'url')
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$_HeroImageCopyWith<_$_HeroImage> get copyWith =>
      throw _privateConstructorUsedError;
}

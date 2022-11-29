// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'content_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentMetadata _$ContentMetadataFromJson(Map<String, dynamic> json) {
  return _ContentMetadata.fromJson(json);
}

/// @nodoc
mixin _$ContentMetadata {
  @JsonKey(name: 'contentHTMLURL')
  String? get publicLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'firstPublishedAt')
  String? get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentMetadataCopyWith<ContentMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentMetadataCopyWith<$Res> {
  factory $ContentMetadataCopyWith(
          ContentMetadata value, $Res Function(ContentMetadata) then) =
      _$ContentMetadataCopyWithImpl<$Res, ContentMetadata>;
  @useResult
  $Res call(
      {@JsonKey(name: 'contentHTMLURL') String? publicLink,
      @JsonKey(name: 'firstPublishedAt') String? createdAt});
}

/// @nodoc
class _$ContentMetadataCopyWithImpl<$Res, $Val extends ContentMetadata>
    implements $ContentMetadataCopyWith<$Res> {
  _$ContentMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicLink = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      publicLink: freezed == publicLink
          ? _value.publicLink
          : publicLink // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContentMetadataCopyWith<$Res>
    implements $ContentMetadataCopyWith<$Res> {
  factory _$$_ContentMetadataCopyWith(
          _$_ContentMetadata value, $Res Function(_$_ContentMetadata) then) =
      __$$_ContentMetadataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'contentHTMLURL') String? publicLink,
      @JsonKey(name: 'firstPublishedAt') String? createdAt});
}

/// @nodoc
class __$$_ContentMetadataCopyWithImpl<$Res>
    extends _$ContentMetadataCopyWithImpl<$Res, _$_ContentMetadata>
    implements _$$_ContentMetadataCopyWith<$Res> {
  __$$_ContentMetadataCopyWithImpl(
      _$_ContentMetadata _value, $Res Function(_$_ContentMetadata) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicLink = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_ContentMetadata(
      publicLink: freezed == publicLink
          ? _value.publicLink
          : publicLink // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContentMetadata implements _ContentMetadata {
  _$_ContentMetadata(
      {@JsonKey(name: 'contentHTMLURL') this.publicLink,
      @JsonKey(name: 'firstPublishedAt') this.createdAt});

  factory _$_ContentMetadata.fromJson(Map<String, dynamic> json) =>
      _$$_ContentMetadataFromJson(json);

  @override
  @JsonKey(name: 'contentHTMLURL')
  final String? publicLink;
  @override
  @JsonKey(name: 'firstPublishedAt')
  final String? createdAt;

  @override
  String toString() {
    return 'ContentMetadata(publicLink: $publicLink, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentMetadata &&
            (identical(other.publicLink, publicLink) ||
                other.publicLink == publicLink) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, publicLink, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContentMetadataCopyWith<_$_ContentMetadata> get copyWith =>
      __$$_ContentMetadataCopyWithImpl<_$_ContentMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContentMetadataToJson(
      this,
    );
  }
}

abstract class _ContentMetadata implements ContentMetadata {
  factory _ContentMetadata(
          {@JsonKey(name: 'contentHTMLURL') final String? publicLink,
          @JsonKey(name: 'firstPublishedAt') final String? createdAt}) =
      _$_ContentMetadata;

  factory _ContentMetadata.fromJson(Map<String, dynamic> json) =
      _$_ContentMetadata.fromJson;

  @override
  @JsonKey(name: 'contentHTMLURL')
  String? get publicLink;
  @override
  @JsonKey(name: 'firstPublishedAt')
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_ContentMetadataCopyWith<_$_ContentMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

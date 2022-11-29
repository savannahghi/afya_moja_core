// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'icon_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IconDetails _$IconDetailsFromJson(Map<String, dynamic> json) {
  return _IconDetails.fromJson(json);
}

/// @nodoc
mixin _$IconDetails {
  @JsonKey(name: 'url')
  String get iconUrlSvgPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IconDetailsCopyWith<IconDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IconDetailsCopyWith<$Res> {
  factory $IconDetailsCopyWith(
          IconDetails value, $Res Function(IconDetails) then) =
      _$IconDetailsCopyWithImpl<$Res, IconDetails>;
  @useResult
  $Res call({@JsonKey(name: 'url') String iconUrlSvgPath});
}

/// @nodoc
class _$IconDetailsCopyWithImpl<$Res, $Val extends IconDetails>
    implements $IconDetailsCopyWith<$Res> {
  _$IconDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconUrlSvgPath = null,
  }) {
    return _then(_value.copyWith(
      iconUrlSvgPath: null == iconUrlSvgPath
          ? _value.iconUrlSvgPath
          : iconUrlSvgPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IconDetailsCopyWith<$Res>
    implements $IconDetailsCopyWith<$Res> {
  factory _$$_IconDetailsCopyWith(
          _$_IconDetails value, $Res Function(_$_IconDetails) then) =
      __$$_IconDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'url') String iconUrlSvgPath});
}

/// @nodoc
class __$$_IconDetailsCopyWithImpl<$Res>
    extends _$IconDetailsCopyWithImpl<$Res, _$_IconDetails>
    implements _$$_IconDetailsCopyWith<$Res> {
  __$$_IconDetailsCopyWithImpl(
      _$_IconDetails _value, $Res Function(_$_IconDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconUrlSvgPath = null,
  }) {
    return _then(_$_IconDetails(
      iconUrlSvgPath: null == iconUrlSvgPath
          ? _value.iconUrlSvgPath
          : iconUrlSvgPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IconDetails implements _IconDetails {
  _$_IconDetails({@JsonKey(name: 'url') required this.iconUrlSvgPath});

  factory _$_IconDetails.fromJson(Map<String, dynamic> json) =>
      _$$_IconDetailsFromJson(json);

  @override
  @JsonKey(name: 'url')
  final String iconUrlSvgPath;

  @override
  String toString() {
    return 'IconDetails(iconUrlSvgPath: $iconUrlSvgPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IconDetails &&
            (identical(other.iconUrlSvgPath, iconUrlSvgPath) ||
                other.iconUrlSvgPath == iconUrlSvgPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iconUrlSvgPath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IconDetailsCopyWith<_$_IconDetails> get copyWith =>
      __$$_IconDetailsCopyWithImpl<_$_IconDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IconDetailsToJson(
      this,
    );
  }
}

abstract class _IconDetails implements IconDetails {
  factory _IconDetails(
          {@JsonKey(name: 'url') required final String iconUrlSvgPath}) =
      _$_IconDetails;

  factory _IconDetails.fromJson(Map<String, dynamic> json) =
      _$_IconDetails.fromJson;

  @override
  @JsonKey(name: 'url')
  String get iconUrlSvgPath;
  @override
  @JsonKey(ignore: true)
  _$$_IconDetailsCopyWith<_$_IconDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

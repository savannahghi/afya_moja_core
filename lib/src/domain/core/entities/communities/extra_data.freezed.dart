// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'extra_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExtraData _$ExtraDataFromJson(Map<String, dynamic> json) {
  return _ExtraData.fromJson(json);
}

/// @nodoc
mixin _$ExtraData {
  @JsonKey(name: 'banned')
  bool? get isBanned => throw _privateConstructorUsedError;
  @JsonKey(name: 'userType')
  UserType? get userType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExtraDataCopyWith<ExtraData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraDataCopyWith<$Res> {
  factory $ExtraDataCopyWith(ExtraData value, $Res Function(ExtraData) then) =
      _$ExtraDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'banned') bool? isBanned,
      @JsonKey(name: 'userType') UserType? userType});
}

/// @nodoc
class _$ExtraDataCopyWithImpl<$Res> implements $ExtraDataCopyWith<$Res> {
  _$ExtraDataCopyWithImpl(this._value, this._then);

  final ExtraData _value;
  // ignore: unused_field
  final $Res Function(ExtraData) _then;

  @override
  $Res call({
    Object? isBanned = freezed,
    Object? userType = freezed,
  }) {
    return _then(_value.copyWith(
      isBanned: isBanned == freezed
          ? _value.isBanned
          : isBanned // ignore: cast_nullable_to_non_nullable
              as bool?,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType?,
    ));
  }
}

/// @nodoc
abstract class _$$_ExtraDataCopyWith<$Res> implements $ExtraDataCopyWith<$Res> {
  factory _$$_ExtraDataCopyWith(
          _$_ExtraData value, $Res Function(_$_ExtraData) then) =
      __$$_ExtraDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'banned') bool? isBanned,
      @JsonKey(name: 'userType') UserType? userType});
}

/// @nodoc
class __$$_ExtraDataCopyWithImpl<$Res> extends _$ExtraDataCopyWithImpl<$Res>
    implements _$$_ExtraDataCopyWith<$Res> {
  __$$_ExtraDataCopyWithImpl(
      _$_ExtraData _value, $Res Function(_$_ExtraData) _then)
      : super(_value, (v) => _then(v as _$_ExtraData));

  @override
  _$_ExtraData get _value => super._value as _$_ExtraData;

  @override
  $Res call({
    Object? isBanned = freezed,
    Object? userType = freezed,
  }) {
    return _then(_$_ExtraData(
      isBanned: isBanned == freezed
          ? _value.isBanned
          : isBanned // ignore: cast_nullable_to_non_nullable
              as bool?,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExtraData implements _ExtraData {
  _$_ExtraData(
      {@JsonKey(name: 'banned') this.isBanned,
      @JsonKey(name: 'userType') this.userType = UserType.UNKNOWN});

  factory _$_ExtraData.fromJson(Map<String, dynamic> json) =>
      _$$_ExtraDataFromJson(json);

  @override
  @JsonKey(name: 'banned')
  final bool? isBanned;
  @override
  @JsonKey(name: 'userType')
  final UserType? userType;

  @override
  String toString() {
    return 'ExtraData(isBanned: $isBanned, userType: $userType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExtraData &&
            const DeepCollectionEquality().equals(other.isBanned, isBanned) &&
            const DeepCollectionEquality().equals(other.userType, userType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isBanned),
      const DeepCollectionEquality().hash(userType));

  @JsonKey(ignore: true)
  @override
  _$$_ExtraDataCopyWith<_$_ExtraData> get copyWith =>
      __$$_ExtraDataCopyWithImpl<_$_ExtraData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExtraDataToJson(
      this,
    );
  }
}

abstract class _ExtraData implements ExtraData {
  factory _ExtraData(
      {@JsonKey(name: 'banned') final bool? isBanned,
      @JsonKey(name: 'userType') final UserType? userType}) = _$_ExtraData;

  factory _ExtraData.fromJson(Map<String, dynamic> json) =
      _$_ExtraData.fromJson;

  @override
  @JsonKey(name: 'banned')
  bool? get isBanned;
  @override
  @JsonKey(name: 'userType')
  UserType? get userType;
  @override
  @JsonKey(ignore: true)
  _$$_ExtraDataCopyWith<_$_ExtraData> get copyWith =>
      throw _privateConstructorUsedError;
}

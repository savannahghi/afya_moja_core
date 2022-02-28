// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'responded_security_questions_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RespondedSecurityQuestionsData _$RespondedSecurityQuestionsDataFromJson(
    Map<String, dynamic> json) {
  return _RespondedSecurityQuestionsData.fromJson(json);
}

/// @nodoc
class _$RespondedSecurityQuestionsDataTearOff {
  const _$RespondedSecurityQuestionsDataTearOff();

  _RespondedSecurityQuestionsData call(
      {@JsonKey(name: 'getUserRespondedSecurityQuestions')
          required List<SecurityQuestion> securityQuestions}) {
    return _RespondedSecurityQuestionsData(
      securityQuestions: securityQuestions,
    );
  }

  RespondedSecurityQuestionsData fromJson(Map<String, Object?> json) {
    return RespondedSecurityQuestionsData.fromJson(json);
  }
}

/// @nodoc
const $RespondedSecurityQuestionsData =
    _$RespondedSecurityQuestionsDataTearOff();

/// @nodoc
mixin _$RespondedSecurityQuestionsData {
  @JsonKey(name: 'getUserRespondedSecurityQuestions')
  List<SecurityQuestion> get securityQuestions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RespondedSecurityQuestionsDataCopyWith<RespondedSecurityQuestionsData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RespondedSecurityQuestionsDataCopyWith<$Res> {
  factory $RespondedSecurityQuestionsDataCopyWith(
          RespondedSecurityQuestionsData value,
          $Res Function(RespondedSecurityQuestionsData) then) =
      _$RespondedSecurityQuestionsDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'getUserRespondedSecurityQuestions')
          List<SecurityQuestion> securityQuestions});
}

/// @nodoc
class _$RespondedSecurityQuestionsDataCopyWithImpl<$Res>
    implements $RespondedSecurityQuestionsDataCopyWith<$Res> {
  _$RespondedSecurityQuestionsDataCopyWithImpl(this._value, this._then);

  final RespondedSecurityQuestionsData _value;
  // ignore: unused_field
  final $Res Function(RespondedSecurityQuestionsData) _then;

  @override
  $Res call({
    Object? securityQuestions = freezed,
  }) {
    return _then(_value.copyWith(
      securityQuestions: securityQuestions == freezed
          ? _value.securityQuestions
          : securityQuestions // ignore: cast_nullable_to_non_nullable
              as List<SecurityQuestion>,
    ));
  }
}

/// @nodoc
abstract class _$RespondedSecurityQuestionsDataCopyWith<$Res>
    implements $RespondedSecurityQuestionsDataCopyWith<$Res> {
  factory _$RespondedSecurityQuestionsDataCopyWith(
          _RespondedSecurityQuestionsData value,
          $Res Function(_RespondedSecurityQuestionsData) then) =
      __$RespondedSecurityQuestionsDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'getUserRespondedSecurityQuestions')
          List<SecurityQuestion> securityQuestions});
}

/// @nodoc
class __$RespondedSecurityQuestionsDataCopyWithImpl<$Res>
    extends _$RespondedSecurityQuestionsDataCopyWithImpl<$Res>
    implements _$RespondedSecurityQuestionsDataCopyWith<$Res> {
  __$RespondedSecurityQuestionsDataCopyWithImpl(
      _RespondedSecurityQuestionsData _value,
      $Res Function(_RespondedSecurityQuestionsData) _then)
      : super(_value, (v) => _then(v as _RespondedSecurityQuestionsData));

  @override
  _RespondedSecurityQuestionsData get _value =>
      super._value as _RespondedSecurityQuestionsData;

  @override
  $Res call({
    Object? securityQuestions = freezed,
  }) {
    return _then(_RespondedSecurityQuestionsData(
      securityQuestions: securityQuestions == freezed
          ? _value.securityQuestions
          : securityQuestions // ignore: cast_nullable_to_non_nullable
              as List<SecurityQuestion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RespondedSecurityQuestionsData
    implements _RespondedSecurityQuestionsData {
  _$_RespondedSecurityQuestionsData(
      {@JsonKey(name: 'getUserRespondedSecurityQuestions')
          required this.securityQuestions});

  factory _$_RespondedSecurityQuestionsData.fromJson(
          Map<String, dynamic> json) =>
      _$$_RespondedSecurityQuestionsDataFromJson(json);

  @override
  @JsonKey(name: 'getUserRespondedSecurityQuestions')
  final List<SecurityQuestion> securityQuestions;

  @override
  String toString() {
    return 'RespondedSecurityQuestionsData(securityQuestions: $securityQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RespondedSecurityQuestionsData &&
            const DeepCollectionEquality()
                .equals(other.securityQuestions, securityQuestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(securityQuestions));

  @JsonKey(ignore: true)
  @override
  _$RespondedSecurityQuestionsDataCopyWith<_RespondedSecurityQuestionsData>
      get copyWith => __$RespondedSecurityQuestionsDataCopyWithImpl<
          _RespondedSecurityQuestionsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RespondedSecurityQuestionsDataToJson(this);
  }
}

abstract class _RespondedSecurityQuestionsData
    implements RespondedSecurityQuestionsData {
  factory _RespondedSecurityQuestionsData(
          {@JsonKey(name: 'getUserRespondedSecurityQuestions')
              required List<SecurityQuestion> securityQuestions}) =
      _$_RespondedSecurityQuestionsData;

  factory _RespondedSecurityQuestionsData.fromJson(Map<String, dynamic> json) =
      _$_RespondedSecurityQuestionsData.fromJson;

  @override
  @JsonKey(name: 'getUserRespondedSecurityQuestions')
  List<SecurityQuestion> get securityQuestions;
  @override
  @JsonKey(ignore: true)
  _$RespondedSecurityQuestionsDataCopyWith<_RespondedSecurityQuestionsData>
      get copyWith => throw _privateConstructorUsedError;
}

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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RespondedSecurityQuestionsData _$RespondedSecurityQuestionsDataFromJson(
    Map<String, dynamic> json) {
  return _RespondedSecurityQuestionsData.fromJson(json);
}

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
      _$RespondedSecurityQuestionsDataCopyWithImpl<$Res,
          RespondedSecurityQuestionsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'getUserRespondedSecurityQuestions')
          List<SecurityQuestion> securityQuestions});
}

/// @nodoc
class _$RespondedSecurityQuestionsDataCopyWithImpl<$Res,
        $Val extends RespondedSecurityQuestionsData>
    implements $RespondedSecurityQuestionsDataCopyWith<$Res> {
  _$RespondedSecurityQuestionsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? securityQuestions = null,
  }) {
    return _then(_value.copyWith(
      securityQuestions: null == securityQuestions
          ? _value.securityQuestions
          : securityQuestions // ignore: cast_nullable_to_non_nullable
              as List<SecurityQuestion>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RespondedSecurityQuestionsDataCopyWith<$Res>
    implements $RespondedSecurityQuestionsDataCopyWith<$Res> {
  factory _$$_RespondedSecurityQuestionsDataCopyWith(
          _$_RespondedSecurityQuestionsData value,
          $Res Function(_$_RespondedSecurityQuestionsData) then) =
      __$$_RespondedSecurityQuestionsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'getUserRespondedSecurityQuestions')
          List<SecurityQuestion> securityQuestions});
}

/// @nodoc
class __$$_RespondedSecurityQuestionsDataCopyWithImpl<$Res>
    extends _$RespondedSecurityQuestionsDataCopyWithImpl<$Res,
        _$_RespondedSecurityQuestionsData>
    implements _$$_RespondedSecurityQuestionsDataCopyWith<$Res> {
  __$$_RespondedSecurityQuestionsDataCopyWithImpl(
      _$_RespondedSecurityQuestionsData _value,
      $Res Function(_$_RespondedSecurityQuestionsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? securityQuestions = null,
  }) {
    return _then(_$_RespondedSecurityQuestionsData(
      securityQuestions: null == securityQuestions
          ? _value._securityQuestions
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
          required final List<SecurityQuestion> securityQuestions})
      : _securityQuestions = securityQuestions;

  factory _$_RespondedSecurityQuestionsData.fromJson(
          Map<String, dynamic> json) =>
      _$$_RespondedSecurityQuestionsDataFromJson(json);

  final List<SecurityQuestion> _securityQuestions;
  @override
  @JsonKey(name: 'getUserRespondedSecurityQuestions')
  List<SecurityQuestion> get securityQuestions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_securityQuestions);
  }

  @override
  String toString() {
    return 'RespondedSecurityQuestionsData(securityQuestions: $securityQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RespondedSecurityQuestionsData &&
            const DeepCollectionEquality()
                .equals(other._securityQuestions, _securityQuestions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_securityQuestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RespondedSecurityQuestionsDataCopyWith<_$_RespondedSecurityQuestionsData>
      get copyWith => __$$_RespondedSecurityQuestionsDataCopyWithImpl<
          _$_RespondedSecurityQuestionsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RespondedSecurityQuestionsDataToJson(
      this,
    );
  }
}

abstract class _RespondedSecurityQuestionsData
    implements RespondedSecurityQuestionsData {
  factory _RespondedSecurityQuestionsData(
          {@JsonKey(name: 'getUserRespondedSecurityQuestions')
              required final List<SecurityQuestion> securityQuestions}) =
      _$_RespondedSecurityQuestionsData;

  factory _RespondedSecurityQuestionsData.fromJson(Map<String, dynamic> json) =
      _$_RespondedSecurityQuestionsData.fromJson;

  @override
  @JsonKey(name: 'getUserRespondedSecurityQuestions')
  List<SecurityQuestion> get securityQuestions;
  @override
  @JsonKey(ignore: true)
  _$$_RespondedSecurityQuestionsDataCopyWith<_$_RespondedSecurityQuestionsData>
      get copyWith => throw _privateConstructorUsedError;
}

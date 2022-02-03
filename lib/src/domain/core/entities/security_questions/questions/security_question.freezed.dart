// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'security_question.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SecurityQuestion _$SecurityQuestionFromJson(Map<String, dynamic> json) {
  return _SecurityQuestion.fromJson(json);
}

/// @nodoc
class _$SecurityQuestionTearOff {
  const _$SecurityQuestionTearOff();

  _SecurityQuestion call(
      {@JsonKey(name: 'SecurityQuestionID')
          String? securityQuestionID,
      @JsonKey(name: 'QuestionStem')
          String? questionStem,
      @JsonKey(name: 'Description')
          String? description,
      @JsonKey(name: 'ResponseType', defaultValue: SecurityQuestionResponseType.UNKNOWN)
          SecurityQuestionResponseType? responseType,
      @JsonKey(name: 'Active')
          bool? active = false}) {
    return _SecurityQuestion(
      securityQuestionID: securityQuestionID,
      questionStem: questionStem,
      description: description,
      responseType: responseType,
      active: active,
    );
  }

  SecurityQuestion fromJson(Map<String, Object> json) {
    return SecurityQuestion.fromJson(json);
  }
}

/// @nodoc
const $SecurityQuestion = _$SecurityQuestionTearOff();

/// @nodoc
mixin _$SecurityQuestion {
  @JsonKey(name: 'SecurityQuestionID')
  String? get securityQuestionID => throw _privateConstructorUsedError;
  @JsonKey(name: 'QuestionStem')
  String? get questionStem => throw _privateConstructorUsedError;
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'ResponseType', defaultValue: SecurityQuestionResponseType.UNKNOWN)
  SecurityQuestionResponseType? get responseType =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'Active')
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecurityQuestionCopyWith<SecurityQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityQuestionCopyWith<$Res> {
  factory $SecurityQuestionCopyWith(
          SecurityQuestion value, $Res Function(SecurityQuestion) then) =
      _$SecurityQuestionCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'SecurityQuestionID')
          String? securityQuestionID,
      @JsonKey(name: 'QuestionStem')
          String? questionStem,
      @JsonKey(name: 'Description')
          String? description,
      @JsonKey(name: 'ResponseType', defaultValue: SecurityQuestionResponseType.UNKNOWN)
          SecurityQuestionResponseType? responseType,
      @JsonKey(name: 'Active')
          bool? active});
}

/// @nodoc
class _$SecurityQuestionCopyWithImpl<$Res>
    implements $SecurityQuestionCopyWith<$Res> {
  _$SecurityQuestionCopyWithImpl(this._value, this._then);

  final SecurityQuestion _value;
  // ignore: unused_field
  final $Res Function(SecurityQuestion) _then;

  @override
  $Res call({
    Object? securityQuestionID = freezed,
    Object? questionStem = freezed,
    Object? description = freezed,
    Object? responseType = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      securityQuestionID: securityQuestionID == freezed
          ? _value.securityQuestionID
          : securityQuestionID // ignore: cast_nullable_to_non_nullable
              as String?,
      questionStem: questionStem == freezed
          ? _value.questionStem
          : questionStem // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      responseType: responseType == freezed
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as SecurityQuestionResponseType?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$SecurityQuestionCopyWith<$Res>
    implements $SecurityQuestionCopyWith<$Res> {
  factory _$SecurityQuestionCopyWith(
          _SecurityQuestion value, $Res Function(_SecurityQuestion) then) =
      __$SecurityQuestionCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'SecurityQuestionID')
          String? securityQuestionID,
      @JsonKey(name: 'QuestionStem')
          String? questionStem,
      @JsonKey(name: 'Description')
          String? description,
      @JsonKey(name: 'ResponseType', defaultValue: SecurityQuestionResponseType.UNKNOWN)
          SecurityQuestionResponseType? responseType,
      @JsonKey(name: 'Active')
          bool? active});
}

/// @nodoc
class __$SecurityQuestionCopyWithImpl<$Res>
    extends _$SecurityQuestionCopyWithImpl<$Res>
    implements _$SecurityQuestionCopyWith<$Res> {
  __$SecurityQuestionCopyWithImpl(
      _SecurityQuestion _value, $Res Function(_SecurityQuestion) _then)
      : super(_value, (v) => _then(v as _SecurityQuestion));

  @override
  _SecurityQuestion get _value => super._value as _SecurityQuestion;

  @override
  $Res call({
    Object? securityQuestionID = freezed,
    Object? questionStem = freezed,
    Object? description = freezed,
    Object? responseType = freezed,
    Object? active = freezed,
  }) {
    return _then(_SecurityQuestion(
      securityQuestionID: securityQuestionID == freezed
          ? _value.securityQuestionID
          : securityQuestionID // ignore: cast_nullable_to_non_nullable
              as String?,
      questionStem: questionStem == freezed
          ? _value.questionStem
          : questionStem // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      responseType: responseType == freezed
          ? _value.responseType
          : responseType // ignore: cast_nullable_to_non_nullable
              as SecurityQuestionResponseType?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SecurityQuestion implements _SecurityQuestion {
  _$_SecurityQuestion(
      {@JsonKey(name: 'SecurityQuestionID')
          this.securityQuestionID,
      @JsonKey(name: 'QuestionStem')
          this.questionStem,
      @JsonKey(name: 'Description')
          this.description,
      @JsonKey(name: 'ResponseType', defaultValue: SecurityQuestionResponseType.UNKNOWN)
          this.responseType,
      @JsonKey(name: 'Active')
          this.active = false});

  factory _$_SecurityQuestion.fromJson(Map<String, dynamic> json) =>
      _$_$_SecurityQuestionFromJson(json);

  @override
  @JsonKey(name: 'SecurityQuestionID')
  final String? securityQuestionID;
  @override
  @JsonKey(name: 'QuestionStem')
  final String? questionStem;
  @override
  @JsonKey(name: 'Description')
  final String? description;
  @override
  @JsonKey(
      name: 'ResponseType', defaultValue: SecurityQuestionResponseType.UNKNOWN)
  final SecurityQuestionResponseType? responseType;
  @override
  @JsonKey(name: 'Active')
  final bool? active;

  @override
  String toString() {
    return 'SecurityQuestion(securityQuestionID: $securityQuestionID, questionStem: $questionStem, description: $description, responseType: $responseType, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SecurityQuestion &&
            (identical(other.securityQuestionID, securityQuestionID) ||
                const DeepCollectionEquality()
                    .equals(other.securityQuestionID, securityQuestionID)) &&
            (identical(other.questionStem, questionStem) ||
                const DeepCollectionEquality()
                    .equals(other.questionStem, questionStem)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.responseType, responseType) ||
                const DeepCollectionEquality()
                    .equals(other.responseType, responseType)) &&
            (identical(other.active, active) ||
                const DeepCollectionEquality().equals(other.active, active)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(securityQuestionID) ^
      const DeepCollectionEquality().hash(questionStem) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(responseType) ^
      const DeepCollectionEquality().hash(active);

  @JsonKey(ignore: true)
  @override
  _$SecurityQuestionCopyWith<_SecurityQuestion> get copyWith =>
      __$SecurityQuestionCopyWithImpl<_SecurityQuestion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SecurityQuestionToJson(this);
  }
}

abstract class _SecurityQuestion implements SecurityQuestion {
  factory _SecurityQuestion(
      {@JsonKey(name: 'SecurityQuestionID')
          String? securityQuestionID,
      @JsonKey(name: 'QuestionStem')
          String? questionStem,
      @JsonKey(name: 'Description')
          String? description,
      @JsonKey(name: 'ResponseType', defaultValue: SecurityQuestionResponseType.UNKNOWN)
          SecurityQuestionResponseType? responseType,
      @JsonKey(name: 'Active')
          bool? active}) = _$_SecurityQuestion;

  factory _SecurityQuestion.fromJson(Map<String, dynamic> json) =
      _$_SecurityQuestion.fromJson;

  @override
  @JsonKey(name: 'SecurityQuestionID')
  String? get securityQuestionID => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'QuestionStem')
  String? get questionStem => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Description')
  String? get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(
      name: 'ResponseType', defaultValue: SecurityQuestionResponseType.UNKNOWN)
  SecurityQuestionResponseType? get responseType =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'Active')
  bool? get active => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SecurityQuestionCopyWith<_SecurityQuestion> get copyWith =>
      throw _privateConstructorUsedError;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'verify_security_question_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerifySecurityQuestionData _$VerifySecurityQuestionDataFromJson(
    Map<String, dynamic> json) {
  return _VerifySecurityQuestionData.fromJson(json);
}

/// @nodoc
class _$VerifySecurityQuestionDataTearOff {
  const _$VerifySecurityQuestionDataTearOff();

  _VerifySecurityQuestionData call(
      {@JsonKey(name: 'questionID') String? questionID,
      @JsonKey(name: 'flavour') String? flavour,
      @JsonKey(name: 'response') String? response,
      @JsonKey(name: 'phoneNumber') String? phoneNumber}) {
    return _VerifySecurityQuestionData(
      questionID: questionID,
      flavour: flavour,
      response: response,
      phoneNumber: phoneNumber,
    );
  }

  VerifySecurityQuestionData fromJson(Map<String, Object> json) {
    return VerifySecurityQuestionData.fromJson(json);
  }
}

/// @nodoc
const $VerifySecurityQuestionData = _$VerifySecurityQuestionDataTearOff();

/// @nodoc
mixin _$VerifySecurityQuestionData {
  @JsonKey(name: 'questionID')
  String? get questionID => throw _privateConstructorUsedError;
  @JsonKey(name: 'flavour')
  String? get flavour => throw _privateConstructorUsedError;
  @JsonKey(name: 'response')
  String? get response => throw _privateConstructorUsedError;
  @JsonKey(name: 'phoneNumber')
  String? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifySecurityQuestionDataCopyWith<VerifySecurityQuestionData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifySecurityQuestionDataCopyWith<$Res> {
  factory $VerifySecurityQuestionDataCopyWith(VerifySecurityQuestionData value,
          $Res Function(VerifySecurityQuestionData) then) =
      _$VerifySecurityQuestionDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'questionID') String? questionID,
      @JsonKey(name: 'flavour') String? flavour,
      @JsonKey(name: 'response') String? response,
      @JsonKey(name: 'phoneNumber') String? phoneNumber});
}

/// @nodoc
class _$VerifySecurityQuestionDataCopyWithImpl<$Res>
    implements $VerifySecurityQuestionDataCopyWith<$Res> {
  _$VerifySecurityQuestionDataCopyWithImpl(this._value, this._then);

  final VerifySecurityQuestionData _value;
  // ignore: unused_field
  final $Res Function(VerifySecurityQuestionData) _then;

  @override
  $Res call({
    Object? questionID = freezed,
    Object? flavour = freezed,
    Object? response = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      questionID: questionID == freezed
          ? _value.questionID
          : questionID // ignore: cast_nullable_to_non_nullable
              as String?,
      flavour: flavour == freezed
          ? _value.flavour
          : flavour // ignore: cast_nullable_to_non_nullable
              as String?,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$VerifySecurityQuestionDataCopyWith<$Res>
    implements $VerifySecurityQuestionDataCopyWith<$Res> {
  factory _$VerifySecurityQuestionDataCopyWith(
          _VerifySecurityQuestionData value,
          $Res Function(_VerifySecurityQuestionData) then) =
      __$VerifySecurityQuestionDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'questionID') String? questionID,
      @JsonKey(name: 'flavour') String? flavour,
      @JsonKey(name: 'response') String? response,
      @JsonKey(name: 'phoneNumber') String? phoneNumber});
}

/// @nodoc
class __$VerifySecurityQuestionDataCopyWithImpl<$Res>
    extends _$VerifySecurityQuestionDataCopyWithImpl<$Res>
    implements _$VerifySecurityQuestionDataCopyWith<$Res> {
  __$VerifySecurityQuestionDataCopyWithImpl(_VerifySecurityQuestionData _value,
      $Res Function(_VerifySecurityQuestionData) _then)
      : super(_value, (v) => _then(v as _VerifySecurityQuestionData));

  @override
  _VerifySecurityQuestionData get _value =>
      super._value as _VerifySecurityQuestionData;

  @override
  $Res call({
    Object? questionID = freezed,
    Object? flavour = freezed,
    Object? response = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_VerifySecurityQuestionData(
      questionID: questionID == freezed
          ? _value.questionID
          : questionID // ignore: cast_nullable_to_non_nullable
              as String?,
      flavour: flavour == freezed
          ? _value.flavour
          : flavour // ignore: cast_nullable_to_non_nullable
              as String?,
      response: response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifySecurityQuestionData implements _VerifySecurityQuestionData {
  _$_VerifySecurityQuestionData(
      {@JsonKey(name: 'questionID') this.questionID,
      @JsonKey(name: 'flavour') this.flavour,
      @JsonKey(name: 'response') this.response,
      @JsonKey(name: 'phoneNumber') this.phoneNumber});

  factory _$_VerifySecurityQuestionData.fromJson(Map<String, dynamic> json) =>
      _$_$_VerifySecurityQuestionDataFromJson(json);

  @override
  @JsonKey(name: 'questionID')
  final String? questionID;
  @override
  @JsonKey(name: 'flavour')
  final String? flavour;
  @override
  @JsonKey(name: 'response')
  final String? response;
  @override
  @JsonKey(name: 'phoneNumber')
  final String? phoneNumber;

  @override
  String toString() {
    return 'VerifySecurityQuestionData(questionID: $questionID, flavour: $flavour, response: $response, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifySecurityQuestionData &&
            (identical(other.questionID, questionID) ||
                const DeepCollectionEquality()
                    .equals(other.questionID, questionID)) &&
            (identical(other.flavour, flavour) ||
                const DeepCollectionEquality()
                    .equals(other.flavour, flavour)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(questionID) ^
      const DeepCollectionEquality().hash(flavour) ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  _$VerifySecurityQuestionDataCopyWith<_VerifySecurityQuestionData>
      get copyWith => __$VerifySecurityQuestionDataCopyWithImpl<
          _VerifySecurityQuestionData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VerifySecurityQuestionDataToJson(this);
  }
}

abstract class _VerifySecurityQuestionData
    implements VerifySecurityQuestionData {
  factory _VerifySecurityQuestionData(
          {@JsonKey(name: 'questionID') String? questionID,
          @JsonKey(name: 'flavour') String? flavour,
          @JsonKey(name: 'response') String? response,
          @JsonKey(name: 'phoneNumber') String? phoneNumber}) =
      _$_VerifySecurityQuestionData;

  factory _VerifySecurityQuestionData.fromJson(Map<String, dynamic> json) =
      _$_VerifySecurityQuestionData.fromJson;

  @override
  @JsonKey(name: 'questionID')
  String? get questionID => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'flavour')
  String? get flavour => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'response')
  String? get response => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'phoneNumber')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VerifySecurityQuestionDataCopyWith<_VerifySecurityQuestionData>
      get copyWith => throw _privateConstructorUsedError;
}

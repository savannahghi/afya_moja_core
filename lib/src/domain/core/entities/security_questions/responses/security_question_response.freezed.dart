// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'security_question_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SecurityQuestionResponse _$SecurityQuestionResponseFromJson(
    Map<String, dynamic> json) {
  return _SecurityQuestionResponse.fromJson(json);
}

/// @nodoc
mixin _$SecurityQuestionResponse {
  @JsonKey(name: 'userID')
  String? get userID => throw _privateConstructorUsedError;
  @JsonKey(name: 'securityQuestionID')
  String? get securityQuestionID => throw _privateConstructorUsedError;
  @JsonKey(name: 'response')
  String? get response => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecurityQuestionResponseCopyWith<SecurityQuestionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityQuestionResponseCopyWith<$Res> {
  factory $SecurityQuestionResponseCopyWith(SecurityQuestionResponse value,
          $Res Function(SecurityQuestionResponse) then) =
      _$SecurityQuestionResponseCopyWithImpl<$Res, SecurityQuestionResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userID') String? userID,
      @JsonKey(name: 'securityQuestionID') String? securityQuestionID,
      @JsonKey(name: 'response') String? response});
}

/// @nodoc
class _$SecurityQuestionResponseCopyWithImpl<$Res,
        $Val extends SecurityQuestionResponse>
    implements $SecurityQuestionResponseCopyWith<$Res> {
  _$SecurityQuestionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
    Object? securityQuestionID = freezed,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      securityQuestionID: freezed == securityQuestionID
          ? _value.securityQuestionID
          : securityQuestionID // ignore: cast_nullable_to_non_nullable
              as String?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SecurityQuestionResponseCopyWith<$Res>
    implements $SecurityQuestionResponseCopyWith<$Res> {
  factory _$$_SecurityQuestionResponseCopyWith(
          _$_SecurityQuestionResponse value,
          $Res Function(_$_SecurityQuestionResponse) then) =
      __$$_SecurityQuestionResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userID') String? userID,
      @JsonKey(name: 'securityQuestionID') String? securityQuestionID,
      @JsonKey(name: 'response') String? response});
}

/// @nodoc
class __$$_SecurityQuestionResponseCopyWithImpl<$Res>
    extends _$SecurityQuestionResponseCopyWithImpl<$Res,
        _$_SecurityQuestionResponse>
    implements _$$_SecurityQuestionResponseCopyWith<$Res> {
  __$$_SecurityQuestionResponseCopyWithImpl(_$_SecurityQuestionResponse _value,
      $Res Function(_$_SecurityQuestionResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = freezed,
    Object? securityQuestionID = freezed,
    Object? response = freezed,
  }) {
    return _then(_$_SecurityQuestionResponse(
      userID: freezed == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String?,
      securityQuestionID: freezed == securityQuestionID
          ? _value.securityQuestionID
          : securityQuestionID // ignore: cast_nullable_to_non_nullable
              as String?,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SecurityQuestionResponse implements _SecurityQuestionResponse {
  _$_SecurityQuestionResponse(
      {@JsonKey(name: 'userID') this.userID,
      @JsonKey(name: 'securityQuestionID') this.securityQuestionID,
      @JsonKey(name: 'response') this.response});

  factory _$_SecurityQuestionResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SecurityQuestionResponseFromJson(json);

  @override
  @JsonKey(name: 'userID')
  final String? userID;
  @override
  @JsonKey(name: 'securityQuestionID')
  final String? securityQuestionID;
  @override
  @JsonKey(name: 'response')
  final String? response;

  @override
  String toString() {
    return 'SecurityQuestionResponse(userID: $userID, securityQuestionID: $securityQuestionID, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecurityQuestionResponse &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.securityQuestionID, securityQuestionID) ||
                other.securityQuestionID == securityQuestionID) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userID, securityQuestionID, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SecurityQuestionResponseCopyWith<_$_SecurityQuestionResponse>
      get copyWith => __$$_SecurityQuestionResponseCopyWithImpl<
          _$_SecurityQuestionResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SecurityQuestionResponseToJson(
      this,
    );
  }
}

abstract class _SecurityQuestionResponse implements SecurityQuestionResponse {
  factory _SecurityQuestionResponse(
          {@JsonKey(name: 'userID') final String? userID,
          @JsonKey(name: 'securityQuestionID') final String? securityQuestionID,
          @JsonKey(name: 'response') final String? response}) =
      _$_SecurityQuestionResponse;

  factory _SecurityQuestionResponse.fromJson(Map<String, dynamic> json) =
      _$_SecurityQuestionResponse.fromJson;

  @override
  @JsonKey(name: 'userID')
  String? get userID;
  @override
  @JsonKey(name: 'securityQuestionID')
  String? get securityQuestionID;
  @override
  @JsonKey(name: 'response')
  String? get response;
  @override
  @JsonKey(ignore: true)
  _$$_SecurityQuestionResponseCopyWith<_$_SecurityQuestionResponse>
      get copyWith => throw _privateConstructorUsedError;
}

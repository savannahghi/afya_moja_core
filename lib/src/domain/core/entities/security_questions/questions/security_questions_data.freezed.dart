// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'security_questions_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SecurityQuestionsData _$SecurityQuestionsDataFromJson(
    Map<String, dynamic> json) {
  return _SecurityQuestionsData.fromJson(json);
}

/// @nodoc
mixin _$SecurityQuestionsData {
  @JsonKey(name: 'getSecurityQuestions')
  List<SecurityQuestion> get securityQuestions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SecurityQuestionsDataCopyWith<SecurityQuestionsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SecurityQuestionsDataCopyWith<$Res> {
  factory $SecurityQuestionsDataCopyWith(SecurityQuestionsData value,
          $Res Function(SecurityQuestionsData) then) =
      _$SecurityQuestionsDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'getSecurityQuestions')
          List<SecurityQuestion> securityQuestions});
}

/// @nodoc
class _$SecurityQuestionsDataCopyWithImpl<$Res>
    implements $SecurityQuestionsDataCopyWith<$Res> {
  _$SecurityQuestionsDataCopyWithImpl(this._value, this._then);

  final SecurityQuestionsData _value;
  // ignore: unused_field
  final $Res Function(SecurityQuestionsData) _then;

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
abstract class _$$_SecurityQuestionsDataCopyWith<$Res>
    implements $SecurityQuestionsDataCopyWith<$Res> {
  factory _$$_SecurityQuestionsDataCopyWith(_$_SecurityQuestionsData value,
          $Res Function(_$_SecurityQuestionsData) then) =
      __$$_SecurityQuestionsDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'getSecurityQuestions')
          List<SecurityQuestion> securityQuestions});
}

/// @nodoc
class __$$_SecurityQuestionsDataCopyWithImpl<$Res>
    extends _$SecurityQuestionsDataCopyWithImpl<$Res>
    implements _$$_SecurityQuestionsDataCopyWith<$Res> {
  __$$_SecurityQuestionsDataCopyWithImpl(_$_SecurityQuestionsData _value,
      $Res Function(_$_SecurityQuestionsData) _then)
      : super(_value, (v) => _then(v as _$_SecurityQuestionsData));

  @override
  _$_SecurityQuestionsData get _value =>
      super._value as _$_SecurityQuestionsData;

  @override
  $Res call({
    Object? securityQuestions = freezed,
  }) {
    return _then(_$_SecurityQuestionsData(
      securityQuestions: securityQuestions == freezed
          ? _value._securityQuestions
          : securityQuestions // ignore: cast_nullable_to_non_nullable
              as List<SecurityQuestion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SecurityQuestionsData implements _SecurityQuestionsData {
  _$_SecurityQuestionsData(
      {@JsonKey(name: 'getSecurityQuestions')
          required final List<SecurityQuestion> securityQuestions})
      : _securityQuestions = securityQuestions;

  factory _$_SecurityQuestionsData.fromJson(Map<String, dynamic> json) =>
      _$$_SecurityQuestionsDataFromJson(json);

  final List<SecurityQuestion> _securityQuestions;
  @override
  @JsonKey(name: 'getSecurityQuestions')
  List<SecurityQuestion> get securityQuestions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_securityQuestions);
  }

  @override
  String toString() {
    return 'SecurityQuestionsData(securityQuestions: $securityQuestions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SecurityQuestionsData &&
            const DeepCollectionEquality()
                .equals(other._securityQuestions, _securityQuestions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_securityQuestions));

  @JsonKey(ignore: true)
  @override
  _$$_SecurityQuestionsDataCopyWith<_$_SecurityQuestionsData> get copyWith =>
      __$$_SecurityQuestionsDataCopyWithImpl<_$_SecurityQuestionsData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SecurityQuestionsDataToJson(
      this,
    );
  }
}

abstract class _SecurityQuestionsData implements SecurityQuestionsData {
  factory _SecurityQuestionsData(
          {@JsonKey(name: 'getSecurityQuestions')
              required final List<SecurityQuestion> securityQuestions}) =
      _$_SecurityQuestionsData;

  factory _SecurityQuestionsData.fromJson(Map<String, dynamic> json) =
      _$_SecurityQuestionsData.fromJson;

  @override
  @JsonKey(name: 'getSecurityQuestions')
  List<SecurityQuestion> get securityQuestions;
  @override
  @JsonKey(ignore: true)
  _$$_SecurityQuestionsDataCopyWith<_$_SecurityQuestionsData> get copyWith =>
      throw _privateConstructorUsedError;
}

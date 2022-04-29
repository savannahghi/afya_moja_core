// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'questions_responses_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionsResponsesData _$QuestionsResponsesDataFromJson(
    Map<String, dynamic> json) {
  return _QuestionsResponsesData.fromJson(json);
}

/// @nodoc
class _$QuestionsResponsesDataTearOff {
  const _$QuestionsResponsesDataTearOff();

  _QuestionsResponsesData call(
      {@JsonKey(name: 'recordSecurityQuestionResponses')
          required List<RecordSecurityQuestionResponse> responses}) {
    return _QuestionsResponsesData(
      responses: responses,
    );
  }

  QuestionsResponsesData fromJson(Map<String, Object?> json) {
    return QuestionsResponsesData.fromJson(json);
  }
}

/// @nodoc
const $QuestionsResponsesData = _$QuestionsResponsesDataTearOff();

/// @nodoc
mixin _$QuestionsResponsesData {
  @JsonKey(name: 'recordSecurityQuestionResponses')
  List<RecordSecurityQuestionResponse> get responses =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionsResponsesDataCopyWith<QuestionsResponsesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsResponsesDataCopyWith<$Res> {
  factory $QuestionsResponsesDataCopyWith(QuestionsResponsesData value,
          $Res Function(QuestionsResponsesData) then) =
      _$QuestionsResponsesDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'recordSecurityQuestionResponses')
          List<RecordSecurityQuestionResponse> responses});
}

/// @nodoc
class _$QuestionsResponsesDataCopyWithImpl<$Res>
    implements $QuestionsResponsesDataCopyWith<$Res> {
  _$QuestionsResponsesDataCopyWithImpl(this._value, this._then);

  final QuestionsResponsesData _value;
  // ignore: unused_field
  final $Res Function(QuestionsResponsesData) _then;

  @override
  $Res call({
    Object? responses = freezed,
  }) {
    return _then(_value.copyWith(
      responses: responses == freezed
          ? _value.responses
          : responses // ignore: cast_nullable_to_non_nullable
              as List<RecordSecurityQuestionResponse>,
    ));
  }
}

/// @nodoc
abstract class _$QuestionsResponsesDataCopyWith<$Res>
    implements $QuestionsResponsesDataCopyWith<$Res> {
  factory _$QuestionsResponsesDataCopyWith(_QuestionsResponsesData value,
          $Res Function(_QuestionsResponsesData) then) =
      __$QuestionsResponsesDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'recordSecurityQuestionResponses')
          List<RecordSecurityQuestionResponse> responses});
}

/// @nodoc
class __$QuestionsResponsesDataCopyWithImpl<$Res>
    extends _$QuestionsResponsesDataCopyWithImpl<$Res>
    implements _$QuestionsResponsesDataCopyWith<$Res> {
  __$QuestionsResponsesDataCopyWithImpl(_QuestionsResponsesData _value,
      $Res Function(_QuestionsResponsesData) _then)
      : super(_value, (v) => _then(v as _QuestionsResponsesData));

  @override
  _QuestionsResponsesData get _value => super._value as _QuestionsResponsesData;

  @override
  $Res call({
    Object? responses = freezed,
  }) {
    return _then(_QuestionsResponsesData(
      responses: responses == freezed
          ? _value.responses
          : responses // ignore: cast_nullable_to_non_nullable
              as List<RecordSecurityQuestionResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionsResponsesData implements _QuestionsResponsesData {
  _$_QuestionsResponsesData(
      {@JsonKey(name: 'recordSecurityQuestionResponses')
          required this.responses});

  factory _$_QuestionsResponsesData.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionsResponsesDataFromJson(json);

  @override
  @JsonKey(name: 'recordSecurityQuestionResponses')
  final List<RecordSecurityQuestionResponse> responses;

  @override
  String toString() {
    return 'QuestionsResponsesData(responses: $responses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QuestionsResponsesData &&
            const DeepCollectionEquality().equals(other.responses, responses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(responses));

  @JsonKey(ignore: true)
  @override
  _$QuestionsResponsesDataCopyWith<_QuestionsResponsesData> get copyWith =>
      __$QuestionsResponsesDataCopyWithImpl<_QuestionsResponsesData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionsResponsesDataToJson(this);
  }
}

abstract class _QuestionsResponsesData implements QuestionsResponsesData {
  factory _QuestionsResponsesData(
          {@JsonKey(name: 'recordSecurityQuestionResponses')
              required List<RecordSecurityQuestionResponse> responses}) =
      _$_QuestionsResponsesData;

  factory _QuestionsResponsesData.fromJson(Map<String, dynamic> json) =
      _$_QuestionsResponsesData.fromJson;

  @override
  @JsonKey(name: 'recordSecurityQuestionResponses')
  List<RecordSecurityQuestionResponse> get responses;
  @override
  @JsonKey(ignore: true)
  _$QuestionsResponsesDataCopyWith<_QuestionsResponsesData> get copyWith =>
      throw _privateConstructorUsedError;
}

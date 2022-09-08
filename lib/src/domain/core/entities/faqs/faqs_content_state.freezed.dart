// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'faqs_content_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FAQsContentState _$FAQsContentStateFromJson(Map<String, dynamic> json) {
  return _FAQsContentState.fromJson(json);
}

/// @nodoc
mixin _$FAQsContentState {
  List<Content?>? get profileFAQs => throw _privateConstructorUsedError;
  bool? get errorFetchingFAQs => throw _privateConstructorUsedError;
  bool? get timeoutFetchingFAQs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FAQsContentStateCopyWith<FAQsContentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FAQsContentStateCopyWith<$Res> {
  factory $FAQsContentStateCopyWith(
          FAQsContentState value, $Res Function(FAQsContentState) then) =
      _$FAQsContentStateCopyWithImpl<$Res>;
  $Res call(
      {List<Content?>? profileFAQs,
      bool? errorFetchingFAQs,
      bool? timeoutFetchingFAQs});
}

/// @nodoc
class _$FAQsContentStateCopyWithImpl<$Res>
    implements $FAQsContentStateCopyWith<$Res> {
  _$FAQsContentStateCopyWithImpl(this._value, this._then);

  final FAQsContentState _value;
  // ignore: unused_field
  final $Res Function(FAQsContentState) _then;

  @override
  $Res call({
    Object? profileFAQs = freezed,
    Object? errorFetchingFAQs = freezed,
    Object? timeoutFetchingFAQs = freezed,
  }) {
    return _then(_value.copyWith(
      profileFAQs: profileFAQs == freezed
          ? _value.profileFAQs
          : profileFAQs // ignore: cast_nullable_to_non_nullable
              as List<Content?>?,
      errorFetchingFAQs: errorFetchingFAQs == freezed
          ? _value.errorFetchingFAQs
          : errorFetchingFAQs // ignore: cast_nullable_to_non_nullable
              as bool?,
      timeoutFetchingFAQs: timeoutFetchingFAQs == freezed
          ? _value.timeoutFetchingFAQs
          : timeoutFetchingFAQs // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_FAQsContentStateCopyWith<$Res>
    implements $FAQsContentStateCopyWith<$Res> {
  factory _$$_FAQsContentStateCopyWith(
          _$_FAQsContentState value, $Res Function(_$_FAQsContentState) then) =
      __$$_FAQsContentStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Content?>? profileFAQs,
      bool? errorFetchingFAQs,
      bool? timeoutFetchingFAQs});
}

/// @nodoc
class __$$_FAQsContentStateCopyWithImpl<$Res>
    extends _$FAQsContentStateCopyWithImpl<$Res>
    implements _$$_FAQsContentStateCopyWith<$Res> {
  __$$_FAQsContentStateCopyWithImpl(
      _$_FAQsContentState _value, $Res Function(_$_FAQsContentState) _then)
      : super(_value, (v) => _then(v as _$_FAQsContentState));

  @override
  _$_FAQsContentState get _value => super._value as _$_FAQsContentState;

  @override
  $Res call({
    Object? profileFAQs = freezed,
    Object? errorFetchingFAQs = freezed,
    Object? timeoutFetchingFAQs = freezed,
  }) {
    return _then(_$_FAQsContentState(
      profileFAQs: profileFAQs == freezed
          ? _value._profileFAQs
          : profileFAQs // ignore: cast_nullable_to_non_nullable
              as List<Content?>?,
      errorFetchingFAQs: errorFetchingFAQs == freezed
          ? _value.errorFetchingFAQs
          : errorFetchingFAQs // ignore: cast_nullable_to_non_nullable
              as bool?,
      timeoutFetchingFAQs: timeoutFetchingFAQs == freezed
          ? _value.timeoutFetchingFAQs
          : timeoutFetchingFAQs // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FAQsContentState implements _FAQsContentState {
  _$_FAQsContentState(
      {final List<Content?>? profileFAQs,
      this.errorFetchingFAQs,
      this.timeoutFetchingFAQs})
      : _profileFAQs = profileFAQs;

  factory _$_FAQsContentState.fromJson(Map<String, dynamic> json) =>
      _$$_FAQsContentStateFromJson(json);

  final List<Content?>? _profileFAQs;
  @override
  List<Content?>? get profileFAQs {
    final value = _profileFAQs;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? errorFetchingFAQs;
  @override
  final bool? timeoutFetchingFAQs;

  @override
  String toString() {
    return 'FAQsContentState(profileFAQs: $profileFAQs, errorFetchingFAQs: $errorFetchingFAQs, timeoutFetchingFAQs: $timeoutFetchingFAQs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FAQsContentState &&
            const DeepCollectionEquality()
                .equals(other._profileFAQs, _profileFAQs) &&
            const DeepCollectionEquality()
                .equals(other.errorFetchingFAQs, errorFetchingFAQs) &&
            const DeepCollectionEquality()
                .equals(other.timeoutFetchingFAQs, timeoutFetchingFAQs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_profileFAQs),
      const DeepCollectionEquality().hash(errorFetchingFAQs),
      const DeepCollectionEquality().hash(timeoutFetchingFAQs));

  @JsonKey(ignore: true)
  @override
  _$$_FAQsContentStateCopyWith<_$_FAQsContentState> get copyWith =>
      __$$_FAQsContentStateCopyWithImpl<_$_FAQsContentState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FAQsContentStateToJson(
      this,
    );
  }
}

abstract class _FAQsContentState implements FAQsContentState {
  factory _FAQsContentState(
      {final List<Content?>? profileFAQs,
      final bool? errorFetchingFAQs,
      final bool? timeoutFetchingFAQs}) = _$_FAQsContentState;

  factory _FAQsContentState.fromJson(Map<String, dynamic> json) =
      _$_FAQsContentState.fromJson;

  @override
  List<Content?>? get profileFAQs;
  @override
  bool? get errorFetchingFAQs;
  @override
  bool? get timeoutFetchingFAQs;
  @override
  @JsonKey(ignore: true)
  _$$_FAQsContentStateCopyWith<_$_FAQsContentState> get copyWith =>
      throw _privateConstructorUsedError;
}

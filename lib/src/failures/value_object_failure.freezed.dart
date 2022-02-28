// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_object_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueObjectFailureTearOff {
  const _$ValueObjectFailureTearOff();

  InvalidEmailAddress<T> invalidEmailAddress<T>({required T failedValue}) {
    return InvalidEmailAddress<T>(
      failedValue: failedValue,
    );
  }

  InvalidPhoneNumber<T> invalidPhoneNumber<T>({required T failedValue}) {
    return InvalidPhoneNumber<T>(
      failedValue: failedValue,
    );
  }

  EmailAddressMustNotBeNull<T> emailAddressMustNotBeNull<T>(
      {required T failedValue}) {
    return EmailAddressMustNotBeNull<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
const $ValueObjectFailure = _$ValueObjectFailureTearOff();

/// @nodoc
mixin _$ValueObjectFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmailAddress,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) emailAddressMustNotBeNull,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmailAddress,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? emailAddressMustNotBeNull,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmailAddress,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? emailAddressMustNotBeNull,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailAddress<T> value) invalidEmailAddress,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(EmailAddressMustNotBeNull<T> value)
        emailAddressMustNotBeNull,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmailAddress<T> value)? invalidEmailAddress,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(EmailAddressMustNotBeNull<T> value)?
        emailAddressMustNotBeNull,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailAddress<T> value)? invalidEmailAddress,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(EmailAddressMustNotBeNull<T> value)?
        emailAddressMustNotBeNull,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueObjectFailureCopyWith<T, ValueObjectFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueObjectFailureCopyWith<T, $Res> {
  factory $ValueObjectFailureCopyWith(ValueObjectFailure<T> value,
          $Res Function(ValueObjectFailure<T>) then) =
      _$ValueObjectFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueObjectFailureCopyWithImpl<T, $Res>
    implements $ValueObjectFailureCopyWith<T, $Res> {
  _$ValueObjectFailureCopyWithImpl(this._value, this._then);

  final ValueObjectFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueObjectFailure<T>) _then;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $InvalidEmailAddressCopyWith<T, $Res>
    implements $ValueObjectFailureCopyWith<T, $Res> {
  factory $InvalidEmailAddressCopyWith(InvalidEmailAddress<T> value,
          $Res Function(InvalidEmailAddress<T>) then) =
      _$InvalidEmailAddressCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidEmailAddressCopyWithImpl<T, $Res>
    extends _$ValueObjectFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailAddressCopyWith<T, $Res> {
  _$InvalidEmailAddressCopyWithImpl(InvalidEmailAddress<T> _value,
      $Res Function(InvalidEmailAddress<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmailAddress<T>));

  @override
  InvalidEmailAddress<T> get _value => super._value as InvalidEmailAddress<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidEmailAddress<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidEmailAddress<T> implements InvalidEmailAddress<T> {
  const _$InvalidEmailAddress({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueObjectFailure<$T>.invalidEmailAddress(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidEmailAddress<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidEmailAddressCopyWith<T, InvalidEmailAddress<T>> get copyWith =>
      _$InvalidEmailAddressCopyWithImpl<T, InvalidEmailAddress<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmailAddress,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) emailAddressMustNotBeNull,
  }) {
    return invalidEmailAddress(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmailAddress,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? emailAddressMustNotBeNull,
  }) {
    return invalidEmailAddress?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmailAddress,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? emailAddressMustNotBeNull,
    required TResult orElse(),
  }) {
    if (invalidEmailAddress != null) {
      return invalidEmailAddress(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailAddress<T> value) invalidEmailAddress,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(EmailAddressMustNotBeNull<T> value)
        emailAddressMustNotBeNull,
  }) {
    return invalidEmailAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmailAddress<T> value)? invalidEmailAddress,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(EmailAddressMustNotBeNull<T> value)?
        emailAddressMustNotBeNull,
  }) {
    return invalidEmailAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailAddress<T> value)? invalidEmailAddress,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(EmailAddressMustNotBeNull<T> value)?
        emailAddressMustNotBeNull,
    required TResult orElse(),
  }) {
    if (invalidEmailAddress != null) {
      return invalidEmailAddress(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAddress<T> implements ValueObjectFailure<T> {
  const factory InvalidEmailAddress({required T failedValue}) =
      _$InvalidEmailAddress<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidEmailAddressCopyWith<T, InvalidEmailAddress<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvalidPhoneNumberCopyWith<T, $Res>
    implements $ValueObjectFailureCopyWith<T, $Res> {
  factory $InvalidPhoneNumberCopyWith(InvalidPhoneNumber<T> value,
          $Res Function(InvalidPhoneNumber<T>) then) =
      _$InvalidPhoneNumberCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$InvalidPhoneNumberCopyWithImpl<T, $Res>
    extends _$ValueObjectFailureCopyWithImpl<T, $Res>
    implements $InvalidPhoneNumberCopyWith<T, $Res> {
  _$InvalidPhoneNumberCopyWithImpl(
      InvalidPhoneNumber<T> _value, $Res Function(InvalidPhoneNumber<T>) _then)
      : super(_value, (v) => _then(v as InvalidPhoneNumber<T>));

  @override
  InvalidPhoneNumber<T> get _value => super._value as InvalidPhoneNumber<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(InvalidPhoneNumber<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidPhoneNumber<T> implements InvalidPhoneNumber<T> {
  const _$InvalidPhoneNumber({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueObjectFailure<$T>.invalidPhoneNumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InvalidPhoneNumber<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $InvalidPhoneNumberCopyWith<T, InvalidPhoneNumber<T>> get copyWith =>
      _$InvalidPhoneNumberCopyWithImpl<T, InvalidPhoneNumber<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmailAddress,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) emailAddressMustNotBeNull,
  }) {
    return invalidPhoneNumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmailAddress,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? emailAddressMustNotBeNull,
  }) {
    return invalidPhoneNumber?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmailAddress,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? emailAddressMustNotBeNull,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailAddress<T> value) invalidEmailAddress,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(EmailAddressMustNotBeNull<T> value)
        emailAddressMustNotBeNull,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmailAddress<T> value)? invalidEmailAddress,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(EmailAddressMustNotBeNull<T> value)?
        emailAddressMustNotBeNull,
  }) {
    return invalidPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailAddress<T> value)? invalidEmailAddress,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(EmailAddressMustNotBeNull<T> value)?
        emailAddressMustNotBeNull,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumber<T> implements ValueObjectFailure<T> {
  const factory InvalidPhoneNumber({required T failedValue}) =
      _$InvalidPhoneNumber<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $InvalidPhoneNumberCopyWith<T, InvalidPhoneNumber<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailAddressMustNotBeNullCopyWith<T, $Res>
    implements $ValueObjectFailureCopyWith<T, $Res> {
  factory $EmailAddressMustNotBeNullCopyWith(EmailAddressMustNotBeNull<T> value,
          $Res Function(EmailAddressMustNotBeNull<T>) then) =
      _$EmailAddressMustNotBeNullCopyWithImpl<T, $Res>;
  @override
  $Res call({T failedValue});
}

/// @nodoc
class _$EmailAddressMustNotBeNullCopyWithImpl<T, $Res>
    extends _$ValueObjectFailureCopyWithImpl<T, $Res>
    implements $EmailAddressMustNotBeNullCopyWith<T, $Res> {
  _$EmailAddressMustNotBeNullCopyWithImpl(EmailAddressMustNotBeNull<T> _value,
      $Res Function(EmailAddressMustNotBeNull<T>) _then)
      : super(_value, (v) => _then(v as EmailAddressMustNotBeNull<T>));

  @override
  EmailAddressMustNotBeNull<T> get _value =>
      super._value as EmailAddressMustNotBeNull<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(EmailAddressMustNotBeNull<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmailAddressMustNotBeNull<T> implements EmailAddressMustNotBeNull<T> {
  const _$EmailAddressMustNotBeNull({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueObjectFailure<$T>.emailAddressMustNotBeNull(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailAddressMustNotBeNull<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  $EmailAddressMustNotBeNullCopyWith<T, EmailAddressMustNotBeNull<T>>
      get copyWith => _$EmailAddressMustNotBeNullCopyWithImpl<T,
          EmailAddressMustNotBeNull<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) invalidEmailAddress,
    required TResult Function(T failedValue) invalidPhoneNumber,
    required TResult Function(T failedValue) emailAddressMustNotBeNull,
  }) {
    return emailAddressMustNotBeNull(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmailAddress,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? emailAddressMustNotBeNull,
  }) {
    return emailAddressMustNotBeNull?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? invalidEmailAddress,
    TResult Function(T failedValue)? invalidPhoneNumber,
    TResult Function(T failedValue)? emailAddressMustNotBeNull,
    required TResult orElse(),
  }) {
    if (emailAddressMustNotBeNull != null) {
      return emailAddressMustNotBeNull(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailAddress<T> value) invalidEmailAddress,
    required TResult Function(InvalidPhoneNumber<T> value) invalidPhoneNumber,
    required TResult Function(EmailAddressMustNotBeNull<T> value)
        emailAddressMustNotBeNull,
  }) {
    return emailAddressMustNotBeNull(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InvalidEmailAddress<T> value)? invalidEmailAddress,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(EmailAddressMustNotBeNull<T> value)?
        emailAddressMustNotBeNull,
  }) {
    return emailAddressMustNotBeNull?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailAddress<T> value)? invalidEmailAddress,
    TResult Function(InvalidPhoneNumber<T> value)? invalidPhoneNumber,
    TResult Function(EmailAddressMustNotBeNull<T> value)?
        emailAddressMustNotBeNull,
    required TResult orElse(),
  }) {
    if (emailAddressMustNotBeNull != null) {
      return emailAddressMustNotBeNull(this);
    }
    return orElse();
  }
}

abstract class EmailAddressMustNotBeNull<T> implements ValueObjectFailure<T> {
  const factory EmailAddressMustNotBeNull({required T failedValue}) =
      _$EmailAddressMustNotBeNull<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  $EmailAddressMustNotBeNullCopyWith<T, EmailAddressMustNotBeNull<T>>
      get copyWith => throw _privateConstructorUsedError;
}

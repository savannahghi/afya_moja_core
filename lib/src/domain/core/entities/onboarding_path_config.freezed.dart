// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'onboarding_path_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OnboardingPathConfig {
// The route to navigate to
  String get route =>
      throw _privateConstructorUsedError; // Any route arguments that may need to be passed while navigating
  dynamic get arguments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OnboardingPathConfigCopyWith<OnboardingPathConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingPathConfigCopyWith<$Res> {
  factory $OnboardingPathConfigCopyWith(OnboardingPathConfig value,
          $Res Function(OnboardingPathConfig) then) =
      _$OnboardingPathConfigCopyWithImpl<$Res>;
  $Res call({String route, dynamic arguments});
}

/// @nodoc
class _$OnboardingPathConfigCopyWithImpl<$Res>
    implements $OnboardingPathConfigCopyWith<$Res> {
  _$OnboardingPathConfigCopyWithImpl(this._value, this._then);

  final OnboardingPathConfig _value;
  // ignore: unused_field
  final $Res Function(OnboardingPathConfig) _then;

  @override
  $Res call({
    Object? route = freezed,
    Object? arguments = freezed,
  }) {
    return _then(_value.copyWith(
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: arguments == freezed
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_OnboardingPathConfigCopyWith<$Res>
    implements $OnboardingPathConfigCopyWith<$Res> {
  factory _$$_OnboardingPathConfigCopyWith(_$_OnboardingPathConfig value,
          $Res Function(_$_OnboardingPathConfig) then) =
      __$$_OnboardingPathConfigCopyWithImpl<$Res>;
  @override
  $Res call({String route, dynamic arguments});
}

/// @nodoc
class __$$_OnboardingPathConfigCopyWithImpl<$Res>
    extends _$OnboardingPathConfigCopyWithImpl<$Res>
    implements _$$_OnboardingPathConfigCopyWith<$Res> {
  __$$_OnboardingPathConfigCopyWithImpl(_$_OnboardingPathConfig _value,
      $Res Function(_$_OnboardingPathConfig) _then)
      : super(_value, (v) => _then(v as _$_OnboardingPathConfig));

  @override
  _$_OnboardingPathConfig get _value => super._value as _$_OnboardingPathConfig;

  @override
  $Res call({
    Object? route = freezed,
    Object? arguments = freezed,
  }) {
    return _then(_$_OnboardingPathConfig(
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: arguments == freezed
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_OnboardingPathConfig implements _OnboardingPathConfig {
  _$_OnboardingPathConfig({required this.route, this.arguments = null});

// The route to navigate to
  @override
  final String route;
// Any route arguments that may need to be passed while navigating
  @override
  @JsonKey()
  final dynamic arguments;

  @override
  String toString() {
    return 'OnboardingPathConfig(route: $route, arguments: $arguments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnboardingPathConfig &&
            const DeepCollectionEquality().equals(other.route, route) &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(route),
      const DeepCollectionEquality().hash(arguments));

  @JsonKey(ignore: true)
  @override
  _$$_OnboardingPathConfigCopyWith<_$_OnboardingPathConfig> get copyWith =>
      __$$_OnboardingPathConfigCopyWithImpl<_$_OnboardingPathConfig>(
          this, _$identity);
}

abstract class _OnboardingPathConfig implements OnboardingPathConfig {
  factory _OnboardingPathConfig(
      {required final String route,
      final dynamic arguments}) = _$_OnboardingPathConfig;

  @override // The route to navigate to
  String get route;
  @override // Any route arguments that may need to be passed while navigating
  dynamic get arguments;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardingPathConfigCopyWith<_$_OnboardingPathConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

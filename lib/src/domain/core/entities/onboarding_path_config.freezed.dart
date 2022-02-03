// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'onboarding_path_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OnboardingPathConfigTearOff {
  const _$OnboardingPathConfigTearOff();

  _OnboardingPathConfig call(
      {required String route, dynamic arguments = null}) {
    return _OnboardingPathConfig(
      route: route,
      arguments: arguments,
    );
  }
}

/// @nodoc
const $OnboardingPathConfig = _$OnboardingPathConfigTearOff();

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
abstract class _$OnboardingPathConfigCopyWith<$Res>
    implements $OnboardingPathConfigCopyWith<$Res> {
  factory _$OnboardingPathConfigCopyWith(_OnboardingPathConfig value,
          $Res Function(_OnboardingPathConfig) then) =
      __$OnboardingPathConfigCopyWithImpl<$Res>;
  @override
  $Res call({String route, dynamic arguments});
}

/// @nodoc
class __$OnboardingPathConfigCopyWithImpl<$Res>
    extends _$OnboardingPathConfigCopyWithImpl<$Res>
    implements _$OnboardingPathConfigCopyWith<$Res> {
  __$OnboardingPathConfigCopyWithImpl(
      _OnboardingPathConfig _value, $Res Function(_OnboardingPathConfig) _then)
      : super(_value, (v) => _then(v as _OnboardingPathConfig));

  @override
  _OnboardingPathConfig get _value => super._value as _OnboardingPathConfig;

  @override
  $Res call({
    Object? route = freezed,
    Object? arguments = freezed,
  }) {
    return _then(_OnboardingPathConfig(
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

  @override // The route to navigate to
  final String route;
  @JsonKey(defaultValue: null)
  @override // Any route arguments that may need to be passed while navigating
  final dynamic arguments;

  @override
  String toString() {
    return 'OnboardingPathConfig(route: $route, arguments: $arguments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OnboardingPathConfig &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)) &&
            (identical(other.arguments, arguments) ||
                const DeepCollectionEquality()
                    .equals(other.arguments, arguments)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(route) ^
      const DeepCollectionEquality().hash(arguments);

  @JsonKey(ignore: true)
  @override
  _$OnboardingPathConfigCopyWith<_OnboardingPathConfig> get copyWith =>
      __$OnboardingPathConfigCopyWithImpl<_OnboardingPathConfig>(
          this, _$identity);
}

abstract class _OnboardingPathConfig implements OnboardingPathConfig {
  factory _OnboardingPathConfig({required String route, dynamic arguments}) =
      _$_OnboardingPathConfig;

  @override // The route to navigate to
  String get route => throw _privateConstructorUsedError;
  @override // Any route arguments that may need to be passed while navigating
  dynamic get arguments => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OnboardingPathConfigCopyWith<_OnboardingPathConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

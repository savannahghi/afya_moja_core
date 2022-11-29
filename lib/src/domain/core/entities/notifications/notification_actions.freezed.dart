// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationActions _$NotificationActionsFromJson(Map<String, dynamic> json) {
  return _NotificationActions.fromJson(json);
}

/// @nodoc
mixin _$NotificationActions {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'route')
  String get route => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon')
  IconDetails get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationActionsCopyWith<NotificationActions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationActionsCopyWith<$Res> {
  factory $NotificationActionsCopyWith(
          NotificationActions value, $Res Function(NotificationActions) then) =
      _$NotificationActionsCopyWithImpl<$Res, NotificationActions>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'route') String route,
      @JsonKey(name: 'icon') IconDetails icon});

  $IconDetailsCopyWith<$Res> get icon;
}

/// @nodoc
class _$NotificationActionsCopyWithImpl<$Res, $Val extends NotificationActions>
    implements $NotificationActionsCopyWith<$Res> {
  _$NotificationActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? route = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconDetails,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IconDetailsCopyWith<$Res> get icon {
    return $IconDetailsCopyWith<$Res>(_value.icon, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NotificationActionsCopyWith<$Res>
    implements $NotificationActionsCopyWith<$Res> {
  factory _$$_NotificationActionsCopyWith(_$_NotificationActions value,
          $Res Function(_$_NotificationActions) then) =
      __$$_NotificationActionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'route') String route,
      @JsonKey(name: 'icon') IconDetails icon});

  @override
  $IconDetailsCopyWith<$Res> get icon;
}

/// @nodoc
class __$$_NotificationActionsCopyWithImpl<$Res>
    extends _$NotificationActionsCopyWithImpl<$Res, _$_NotificationActions>
    implements _$$_NotificationActionsCopyWith<$Res> {
  __$$_NotificationActionsCopyWithImpl(_$_NotificationActions _value,
      $Res Function(_$_NotificationActions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? route = null,
    Object? icon = null,
  }) {
    return _then(_$_NotificationActions(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as IconDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationActions implements _NotificationActions {
  _$_NotificationActions(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'route') required this.route,
      @JsonKey(name: 'icon') required this.icon});

  factory _$_NotificationActions.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationActionsFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'route')
  final String route;
  @override
  @JsonKey(name: 'icon')
  final IconDetails icon;

  @override
  String toString() {
    return 'NotificationActions(name: $name, route: $route, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationActions &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, route, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationActionsCopyWith<_$_NotificationActions> get copyWith =>
      __$$_NotificationActionsCopyWithImpl<_$_NotificationActions>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationActionsToJson(
      this,
    );
  }
}

abstract class _NotificationActions implements NotificationActions {
  factory _NotificationActions(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'route') required final String route,
          @JsonKey(name: 'icon') required final IconDetails icon}) =
      _$_NotificationActions;

  factory _NotificationActions.fromJson(Map<String, dynamic> json) =
      _$_NotificationActions.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'route')
  String get route;
  @override
  @JsonKey(name: 'icon')
  IconDetails get icon;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationActionsCopyWith<_$_NotificationActions> get copyWith =>
      throw _privateConstructorUsedError;
}

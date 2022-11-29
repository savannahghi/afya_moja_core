// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationFilter _$NotificationFilterFromJson(Map<String, dynamic> json) {
  return _NotificationFilter.fromJson(json);
}

/// @nodoc
mixin _$NotificationFilter {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'enum')
  NotificationType? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationFilterCopyWith<NotificationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationFilterCopyWith<$Res> {
  factory $NotificationFilterCopyWith(
          NotificationFilter value, $Res Function(NotificationFilter) then) =
      _$NotificationFilterCopyWithImpl<$Res, NotificationFilter>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'enum') NotificationType? type});
}

/// @nodoc
class _$NotificationFilterCopyWithImpl<$Res, $Val extends NotificationFilter>
    implements $NotificationFilterCopyWith<$Res> {
  _$NotificationFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationFilterCopyWith<$Res>
    implements $NotificationFilterCopyWith<$Res> {
  factory _$$_NotificationFilterCopyWith(_$_NotificationFilter value,
          $Res Function(_$_NotificationFilter) then) =
      __$$_NotificationFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'enum') NotificationType? type});
}

/// @nodoc
class __$$_NotificationFilterCopyWithImpl<$Res>
    extends _$NotificationFilterCopyWithImpl<$Res, _$_NotificationFilter>
    implements _$$_NotificationFilterCopyWith<$Res> {
  __$$_NotificationFilterCopyWithImpl(
      _$_NotificationFilter _value, $Res Function(_$_NotificationFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_NotificationFilter(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationFilter implements _NotificationFilter {
  _$_NotificationFilter(
      {@JsonKey(name: 'name') this.name, @JsonKey(name: 'enum') this.type});

  factory _$_NotificationFilter.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationFilterFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'enum')
  final NotificationType? type;

  @override
  String toString() {
    return 'NotificationFilter(name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationFilter &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationFilterCopyWith<_$_NotificationFilter> get copyWith =>
      __$$_NotificationFilterCopyWithImpl<_$_NotificationFilter>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationFilterToJson(
      this,
    );
  }
}

abstract class _NotificationFilter implements NotificationFilter {
  factory _NotificationFilter(
          {@JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'enum') final NotificationType? type}) =
      _$_NotificationFilter;

  factory _NotificationFilter.fromJson(Map<String, dynamic> json) =
      _$_NotificationFilter.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'enum')
  NotificationType? get type;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationFilterCopyWith<_$_NotificationFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationDetails _$NotificationDetailsFromJson(Map<String, dynamic> json) {
  return _NotificationDetails.fromJson(json);
}

/// @nodoc
mixin _$NotificationDetails {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'type', defaultValue: NotificationType.UNKNOWN)
  NotificationType? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'isRead', defaultValue: false)
  bool? get isRead => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'actions')
  List<NotificationActions>? get actions => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationDetailsCopyWith<NotificationDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationDetailsCopyWith<$Res> {
  factory $NotificationDetailsCopyWith(
          NotificationDetails value, $Res Function(NotificationDetails) then) =
      _$NotificationDetailsCopyWithImpl<$Res, NotificationDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          String? id,
      @JsonKey(name: 'title')
          String? title,
      @JsonKey(name: 'body')
          String? body,
      @JsonKey(name: 'type', defaultValue: NotificationType.UNKNOWN)
          NotificationType? type,
      @JsonKey(name: 'isRead', defaultValue: false)
          bool? isRead,
      @JsonKey(name: 'createdAt')
          String? createdAt,
      @JsonKey(name: 'actions')
          List<NotificationActions>? actions,
      @JsonKey(name: 'status')
          String? status});
}

/// @nodoc
class _$NotificationDetailsCopyWithImpl<$Res, $Val extends NotificationDetails>
    implements $NotificationDetailsCopyWith<$Res> {
  _$NotificationDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? type = freezed,
    Object? isRead = freezed,
    Object? createdAt = freezed,
    Object? actions = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType?,
      isRead: freezed == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: freezed == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<NotificationActions>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationDetailsCopyWith<$Res>
    implements $NotificationDetailsCopyWith<$Res> {
  factory _$$_NotificationDetailsCopyWith(_$_NotificationDetails value,
          $Res Function(_$_NotificationDetails) then) =
      __$$_NotificationDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id')
          String? id,
      @JsonKey(name: 'title')
          String? title,
      @JsonKey(name: 'body')
          String? body,
      @JsonKey(name: 'type', defaultValue: NotificationType.UNKNOWN)
          NotificationType? type,
      @JsonKey(name: 'isRead', defaultValue: false)
          bool? isRead,
      @JsonKey(name: 'createdAt')
          String? createdAt,
      @JsonKey(name: 'actions')
          List<NotificationActions>? actions,
      @JsonKey(name: 'status')
          String? status});
}

/// @nodoc
class __$$_NotificationDetailsCopyWithImpl<$Res>
    extends _$NotificationDetailsCopyWithImpl<$Res, _$_NotificationDetails>
    implements _$$_NotificationDetailsCopyWith<$Res> {
  __$$_NotificationDetailsCopyWithImpl(_$_NotificationDetails _value,
      $Res Function(_$_NotificationDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? type = freezed,
    Object? isRead = freezed,
    Object? createdAt = freezed,
    Object? actions = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_NotificationDetails(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as NotificationType?,
      isRead: freezed == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      actions: freezed == actions
          ? _value._actions
          : actions // ignore: cast_nullable_to_non_nullable
              as List<NotificationActions>?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationDetails implements _NotificationDetails {
  _$_NotificationDetails(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'body') this.body,
      @JsonKey(name: 'type', defaultValue: NotificationType.UNKNOWN) this.type,
      @JsonKey(name: 'isRead', defaultValue: false) this.isRead,
      @JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'actions') final List<NotificationActions>? actions,
      @JsonKey(name: 'status') this.status})
      : _actions = actions;

  factory _$_NotificationDetails.fromJson(Map<String, dynamic> json) =>
      _$$_NotificationDetailsFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'body')
  final String? body;
  @override
  @JsonKey(name: 'type', defaultValue: NotificationType.UNKNOWN)
  final NotificationType? type;
  @override
  @JsonKey(name: 'isRead', defaultValue: false)
  final bool? isRead;
  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  final List<NotificationActions>? _actions;
  @override
  @JsonKey(name: 'actions')
  List<NotificationActions>? get actions {
    final value = _actions;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'status')
  final String? status;

  @override
  String toString() {
    return 'NotificationDetails(id: $id, title: $title, body: $body, type: $type, isRead: $isRead, createdAt: $createdAt, actions: $actions, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationDetails &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isRead, isRead) || other.isRead == isRead) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._actions, _actions) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, body, type, isRead,
      createdAt, const DeepCollectionEquality().hash(_actions), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationDetailsCopyWith<_$_NotificationDetails> get copyWith =>
      __$$_NotificationDetailsCopyWithImpl<_$_NotificationDetails>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotificationDetailsToJson(
      this,
    );
  }
}

abstract class _NotificationDetails implements NotificationDetails {
  factory _NotificationDetails(
      {@JsonKey(name: 'id')
          final String? id,
      @JsonKey(name: 'title')
          final String? title,
      @JsonKey(name: 'body')
          final String? body,
      @JsonKey(name: 'type', defaultValue: NotificationType.UNKNOWN)
          final NotificationType? type,
      @JsonKey(name: 'isRead', defaultValue: false)
          final bool? isRead,
      @JsonKey(name: 'createdAt')
          final String? createdAt,
      @JsonKey(name: 'actions')
          final List<NotificationActions>? actions,
      @JsonKey(name: 'status')
          final String? status}) = _$_NotificationDetails;

  factory _NotificationDetails.fromJson(Map<String, dynamic> json) =
      _$_NotificationDetails.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'body')
  String? get body;
  @override
  @JsonKey(name: 'type', defaultValue: NotificationType.UNKNOWN)
  NotificationType? get type;
  @override
  @JsonKey(name: 'isRead', defaultValue: false)
  bool? get isRead;
  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'actions')
  List<NotificationActions>? get actions;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationDetailsCopyWith<_$_NotificationDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

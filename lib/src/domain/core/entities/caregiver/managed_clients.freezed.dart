// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'managed_clients.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ManagedClients _$ManagedClientsFromJson(Map<String, dynamic> json) {
  return _ManagedClients.fromJson(json);
}

/// @nodoc
mixin _$ManagedClients {
  @JsonKey(name: 'ManagedClients')
  List<ManagedClient>? get clients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ManagedClientsCopyWith<ManagedClients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagedClientsCopyWith<$Res> {
  factory $ManagedClientsCopyWith(
          ManagedClients value, $Res Function(ManagedClients) then) =
      _$ManagedClientsCopyWithImpl<$Res, ManagedClients>;
  @useResult
  $Res call({@JsonKey(name: 'ManagedClients') List<ManagedClient>? clients});
}

/// @nodoc
class _$ManagedClientsCopyWithImpl<$Res, $Val extends ManagedClients>
    implements $ManagedClientsCopyWith<$Res> {
  _$ManagedClientsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clients = freezed,
  }) {
    return _then(_value.copyWith(
      clients: freezed == clients
          ? _value.clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<ManagedClient>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ManagedClientsCopyWith<$Res>
    implements $ManagedClientsCopyWith<$Res> {
  factory _$$_ManagedClientsCopyWith(
          _$_ManagedClients value, $Res Function(_$_ManagedClients) then) =
      __$$_ManagedClientsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'ManagedClients') List<ManagedClient>? clients});
}

/// @nodoc
class __$$_ManagedClientsCopyWithImpl<$Res>
    extends _$ManagedClientsCopyWithImpl<$Res, _$_ManagedClients>
    implements _$$_ManagedClientsCopyWith<$Res> {
  __$$_ManagedClientsCopyWithImpl(
      _$_ManagedClients _value, $Res Function(_$_ManagedClients) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clients = freezed,
  }) {
    return _then(_$_ManagedClients(
      clients: freezed == clients
          ? _value._clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<ManagedClient>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ManagedClients implements _ManagedClients {
  _$_ManagedClients(
      {@JsonKey(name: 'ManagedClients') final List<ManagedClient>? clients})
      : _clients = clients;

  factory _$_ManagedClients.fromJson(Map<String, dynamic> json) =>
      _$$_ManagedClientsFromJson(json);

  final List<ManagedClient>? _clients;
  @override
  @JsonKey(name: 'ManagedClients')
  List<ManagedClient>? get clients {
    final value = _clients;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ManagedClients(clients: $clients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ManagedClients &&
            const DeepCollectionEquality().equals(other._clients, _clients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_clients));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ManagedClientsCopyWith<_$_ManagedClients> get copyWith =>
      __$$_ManagedClientsCopyWithImpl<_$_ManagedClients>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ManagedClientsToJson(
      this,
    );
  }
}

abstract class _ManagedClients implements ManagedClients {
  factory _ManagedClients(
      {@JsonKey(name: 'ManagedClients')
          final List<ManagedClient>? clients}) = _$_ManagedClients;

  factory _ManagedClients.fromJson(Map<String, dynamic> json) =
      _$_ManagedClients.fromJson;

  @override
  @JsonKey(name: 'ManagedClients')
  List<ManagedClient>? get clients;
  @override
  @JsonKey(ignore: true)
  _$$_ManagedClientsCopyWith<_$_ManagedClients> get copyWith =>
      throw _privateConstructorUsedError;
}

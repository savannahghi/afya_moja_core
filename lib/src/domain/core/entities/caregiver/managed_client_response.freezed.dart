// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'managed_client_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ManagedClientsResponse _$ManagedClientsResponseFromJson(
    Map<String, dynamic> json) {
  return _ManagedClientsResponse.fromJson(json);
}

/// @nodoc
mixin _$ManagedClientsResponse {
  @JsonKey(name: 'getCaregiverManagedClients')
  ManagedClients? get managedClients => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ManagedClientsResponseCopyWith<ManagedClientsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagedClientsResponseCopyWith<$Res> {
  factory $ManagedClientsResponseCopyWith(ManagedClientsResponse value,
          $Res Function(ManagedClientsResponse) then) =
      _$ManagedClientsResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'getCaregiverManagedClients')
          ManagedClients? managedClients});

  $ManagedClientsCopyWith<$Res>? get managedClients;
}

/// @nodoc
class _$ManagedClientsResponseCopyWithImpl<$Res>
    implements $ManagedClientsResponseCopyWith<$Res> {
  _$ManagedClientsResponseCopyWithImpl(this._value, this._then);

  final ManagedClientsResponse _value;
  // ignore: unused_field
  final $Res Function(ManagedClientsResponse) _then;

  @override
  $Res call({
    Object? managedClients = freezed,
  }) {
    return _then(_value.copyWith(
      managedClients: managedClients == freezed
          ? _value.managedClients
          : managedClients // ignore: cast_nullable_to_non_nullable
              as ManagedClients?,
    ));
  }

  @override
  $ManagedClientsCopyWith<$Res>? get managedClients {
    if (_value.managedClients == null) {
      return null;
    }

    return $ManagedClientsCopyWith<$Res>(_value.managedClients!, (value) {
      return _then(_value.copyWith(managedClients: value));
    });
  }
}

/// @nodoc
abstract class _$$_ManagedClientsResponseCopyWith<$Res>
    implements $ManagedClientsResponseCopyWith<$Res> {
  factory _$$_ManagedClientsResponseCopyWith(_$_ManagedClientsResponse value,
          $Res Function(_$_ManagedClientsResponse) then) =
      __$$_ManagedClientsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'getCaregiverManagedClients')
          ManagedClients? managedClients});

  @override
  $ManagedClientsCopyWith<$Res>? get managedClients;
}

/// @nodoc
class __$$_ManagedClientsResponseCopyWithImpl<$Res>
    extends _$ManagedClientsResponseCopyWithImpl<$Res>
    implements _$$_ManagedClientsResponseCopyWith<$Res> {
  __$$_ManagedClientsResponseCopyWithImpl(_$_ManagedClientsResponse _value,
      $Res Function(_$_ManagedClientsResponse) _then)
      : super(_value, (v) => _then(v as _$_ManagedClientsResponse));

  @override
  _$_ManagedClientsResponse get _value =>
      super._value as _$_ManagedClientsResponse;

  @override
  $Res call({
    Object? managedClients = freezed,
  }) {
    return _then(_$_ManagedClientsResponse(
      managedClients: managedClients == freezed
          ? _value.managedClients
          : managedClients // ignore: cast_nullable_to_non_nullable
              as ManagedClients?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ManagedClientsResponse implements _ManagedClientsResponse {
  _$_ManagedClientsResponse(
      {@JsonKey(name: 'getCaregiverManagedClients') this.managedClients});

  factory _$_ManagedClientsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ManagedClientsResponseFromJson(json);

  @override
  @JsonKey(name: 'getCaregiverManagedClients')
  final ManagedClients? managedClients;

  @override
  String toString() {
    return 'ManagedClientsResponse(managedClients: $managedClients)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ManagedClientsResponse &&
            const DeepCollectionEquality()
                .equals(other.managedClients, managedClients));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(managedClients));

  @JsonKey(ignore: true)
  @override
  _$$_ManagedClientsResponseCopyWith<_$_ManagedClientsResponse> get copyWith =>
      __$$_ManagedClientsResponseCopyWithImpl<_$_ManagedClientsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ManagedClientsResponseToJson(
      this,
    );
  }
}

abstract class _ManagedClientsResponse implements ManagedClientsResponse {
  factory _ManagedClientsResponse(
      {@JsonKey(name: 'getCaregiverManagedClients')
          final ManagedClients? managedClients}) = _$_ManagedClientsResponse;

  factory _ManagedClientsResponse.fromJson(Map<String, dynamic> json) =
      _$_ManagedClientsResponse.fromJson;

  @override
  @JsonKey(name: 'getCaregiverManagedClients')
  ManagedClients? get managedClients;
  @override
  @JsonKey(ignore: true)
  _$$_ManagedClientsResponseCopyWith<_$_ManagedClientsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

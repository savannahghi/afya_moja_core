// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'managed_client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ManagedClient _$ManagedClientFromJson(Map<String, dynamic> json) {
  return _ManagedClient.fromJson(json);
}

/// @nodoc
mixin _$ManagedClient {
  @JsonKey(name: 'caregiverConsent')
  bool? get caregiverConsent => throw _privateConstructorUsedError;
  @JsonKey(name: 'clientConsent')
  bool? get clientConsent => throw _privateConstructorUsedError;
  @JsonKey(name: 'workStationDetails')
  WorkStationDetails? get workStationDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'clientProfile')
  UserData? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ManagedClientCopyWith<ManagedClient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManagedClientCopyWith<$Res> {
  factory $ManagedClientCopyWith(
          ManagedClient value, $Res Function(ManagedClient) then) =
      _$ManagedClientCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'caregiverConsent')
          bool? caregiverConsent,
      @JsonKey(name: 'clientConsent')
          bool? clientConsent,
      @JsonKey(name: 'workStationDetails')
          WorkStationDetails? workStationDetails,
      @JsonKey(name: 'clientProfile')
          UserData? user});

  $WorkStationDetailsCopyWith<$Res>? get workStationDetails;
  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class _$ManagedClientCopyWithImpl<$Res>
    implements $ManagedClientCopyWith<$Res> {
  _$ManagedClientCopyWithImpl(this._value, this._then);

  final ManagedClient _value;
  // ignore: unused_field
  final $Res Function(ManagedClient) _then;

  @override
  $Res call({
    Object? caregiverConsent = freezed,
    Object? clientConsent = freezed,
    Object? workStationDetails = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      caregiverConsent: caregiverConsent == freezed
          ? _value.caregiverConsent
          : caregiverConsent // ignore: cast_nullable_to_non_nullable
              as bool?,
      clientConsent: clientConsent == freezed
          ? _value.clientConsent
          : clientConsent // ignore: cast_nullable_to_non_nullable
              as bool?,
      workStationDetails: workStationDetails == freezed
          ? _value.workStationDetails
          : workStationDetails // ignore: cast_nullable_to_non_nullable
              as WorkStationDetails?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ));
  }

  @override
  $WorkStationDetailsCopyWith<$Res>? get workStationDetails {
    if (_value.workStationDetails == null) {
      return null;
    }

    return $WorkStationDetailsCopyWith<$Res>(_value.workStationDetails!,
        (value) {
      return _then(_value.copyWith(workStationDetails: value));
    });
  }

  @override
  $UserDataCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDataCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_ManagedClientCopyWith<$Res>
    implements $ManagedClientCopyWith<$Res> {
  factory _$$_ManagedClientCopyWith(
          _$_ManagedClient value, $Res Function(_$_ManagedClient) then) =
      __$$_ManagedClientCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'caregiverConsent')
          bool? caregiverConsent,
      @JsonKey(name: 'clientConsent')
          bool? clientConsent,
      @JsonKey(name: 'workStationDetails')
          WorkStationDetails? workStationDetails,
      @JsonKey(name: 'clientProfile')
          UserData? user});

  @override
  $WorkStationDetailsCopyWith<$Res>? get workStationDetails;
  @override
  $UserDataCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_ManagedClientCopyWithImpl<$Res>
    extends _$ManagedClientCopyWithImpl<$Res>
    implements _$$_ManagedClientCopyWith<$Res> {
  __$$_ManagedClientCopyWithImpl(
      _$_ManagedClient _value, $Res Function(_$_ManagedClient) _then)
      : super(_value, (v) => _then(v as _$_ManagedClient));

  @override
  _$_ManagedClient get _value => super._value as _$_ManagedClient;

  @override
  $Res call({
    Object? caregiverConsent = freezed,
    Object? clientConsent = freezed,
    Object? workStationDetails = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_ManagedClient(
      caregiverConsent: caregiverConsent == freezed
          ? _value.caregiverConsent
          : caregiverConsent // ignore: cast_nullable_to_non_nullable
              as bool?,
      clientConsent: clientConsent == freezed
          ? _value.clientConsent
          : clientConsent // ignore: cast_nullable_to_non_nullable
              as bool?,
      workStationDetails: workStationDetails == freezed
          ? _value.workStationDetails
          : workStationDetails // ignore: cast_nullable_to_non_nullable
              as WorkStationDetails?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ManagedClient implements _ManagedClient {
  _$_ManagedClient(
      {@JsonKey(name: 'caregiverConsent') this.caregiverConsent,
      @JsonKey(name: 'clientConsent') this.clientConsent,
      @JsonKey(name: 'workStationDetails') this.workStationDetails,
      @JsonKey(name: 'clientProfile') this.user});

  factory _$_ManagedClient.fromJson(Map<String, dynamic> json) =>
      _$$_ManagedClientFromJson(json);

  @override
  @JsonKey(name: 'caregiverConsent')
  final bool? caregiverConsent;
  @override
  @JsonKey(name: 'clientConsent')
  final bool? clientConsent;
  @override
  @JsonKey(name: 'workStationDetails')
  final WorkStationDetails? workStationDetails;
  @override
  @JsonKey(name: 'clientProfile')
  final UserData? user;

  @override
  String toString() {
    return 'ManagedClient(caregiverConsent: $caregiverConsent, clientConsent: $clientConsent, workStationDetails: $workStationDetails, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ManagedClient &&
            const DeepCollectionEquality()
                .equals(other.caregiverConsent, caregiverConsent) &&
            const DeepCollectionEquality()
                .equals(other.clientConsent, clientConsent) &&
            const DeepCollectionEquality()
                .equals(other.workStationDetails, workStationDetails) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(caregiverConsent),
      const DeepCollectionEquality().hash(clientConsent),
      const DeepCollectionEquality().hash(workStationDetails),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_ManagedClientCopyWith<_$_ManagedClient> get copyWith =>
      __$$_ManagedClientCopyWithImpl<_$_ManagedClient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ManagedClientToJson(
      this,
    );
  }
}

abstract class _ManagedClient implements ManagedClient {
  factory _ManagedClient(
      {@JsonKey(name: 'caregiverConsent')
          final bool? caregiverConsent,
      @JsonKey(name: 'clientConsent')
          final bool? clientConsent,
      @JsonKey(name: 'workStationDetails')
          final WorkStationDetails? workStationDetails,
      @JsonKey(name: 'clientProfile')
          final UserData? user}) = _$_ManagedClient;

  factory _ManagedClient.fromJson(Map<String, dynamic> json) =
      _$_ManagedClient.fromJson;

  @override
  @JsonKey(name: 'caregiverConsent')
  bool? get caregiverConsent;
  @override
  @JsonKey(name: 'clientConsent')
  bool? get clientConsent;
  @override
  @JsonKey(name: 'workStationDetails')
  WorkStationDetails? get workStationDetails;
  @override
  @JsonKey(name: 'clientProfile')
  UserData? get user;
  @override
  @JsonKey(ignore: true)
  _$$_ManagedClientCopyWith<_$_ManagedClient> get copyWith =>
      throw _privateConstructorUsedError;
}

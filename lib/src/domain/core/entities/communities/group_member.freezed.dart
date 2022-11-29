// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group_member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GroupMember _$GroupMemberFromJson(Map<String, dynamic> json) {
  return _GroupMember.fromJson(json);
}

/// @nodoc
mixin _$GroupMember {
  @JsonKey(name: 'user')
  Member? get memberDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'isModerator')
  bool get isModerator => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupMemberCopyWith<GroupMember> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupMemberCopyWith<$Res> {
  factory $GroupMemberCopyWith(
          GroupMember value, $Res Function(GroupMember) then) =
      _$GroupMemberCopyWithImpl<$Res, GroupMember>;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') Member? memberDetails,
      @JsonKey(name: 'isModerator') bool isModerator});

  $MemberCopyWith<$Res>? get memberDetails;
}

/// @nodoc
class _$GroupMemberCopyWithImpl<$Res, $Val extends GroupMember>
    implements $GroupMemberCopyWith<$Res> {
  _$GroupMemberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberDetails = freezed,
    Object? isModerator = null,
  }) {
    return _then(_value.copyWith(
      memberDetails: freezed == memberDetails
          ? _value.memberDetails
          : memberDetails // ignore: cast_nullable_to_non_nullable
              as Member?,
      isModerator: null == isModerator
          ? _value.isModerator
          : isModerator // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MemberCopyWith<$Res>? get memberDetails {
    if (_value.memberDetails == null) {
      return null;
    }

    return $MemberCopyWith<$Res>(_value.memberDetails!, (value) {
      return _then(_value.copyWith(memberDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GroupMemberCopyWith<$Res>
    implements $GroupMemberCopyWith<$Res> {
  factory _$$_GroupMemberCopyWith(
          _$_GroupMember value, $Res Function(_$_GroupMember) then) =
      __$$_GroupMemberCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') Member? memberDetails,
      @JsonKey(name: 'isModerator') bool isModerator});

  @override
  $MemberCopyWith<$Res>? get memberDetails;
}

/// @nodoc
class __$$_GroupMemberCopyWithImpl<$Res>
    extends _$GroupMemberCopyWithImpl<$Res, _$_GroupMember>
    implements _$$_GroupMemberCopyWith<$Res> {
  __$$_GroupMemberCopyWithImpl(
      _$_GroupMember _value, $Res Function(_$_GroupMember) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? memberDetails = freezed,
    Object? isModerator = null,
  }) {
    return _then(_$_GroupMember(
      memberDetails: freezed == memberDetails
          ? _value.memberDetails
          : memberDetails // ignore: cast_nullable_to_non_nullable
              as Member?,
      isModerator: null == isModerator
          ? _value.isModerator
          : isModerator // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GroupMember implements _GroupMember {
  _$_GroupMember(
      {@JsonKey(name: 'user') this.memberDetails,
      @JsonKey(name: 'isModerator') this.isModerator = false});

  factory _$_GroupMember.fromJson(Map<String, dynamic> json) =>
      _$$_GroupMemberFromJson(json);

  @override
  @JsonKey(name: 'user')
  final Member? memberDetails;
  @override
  @JsonKey(name: 'isModerator')
  final bool isModerator;

  @override
  String toString() {
    return 'GroupMember(memberDetails: $memberDetails, isModerator: $isModerator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupMember &&
            (identical(other.memberDetails, memberDetails) ||
                other.memberDetails == memberDetails) &&
            (identical(other.isModerator, isModerator) ||
                other.isModerator == isModerator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, memberDetails, isModerator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupMemberCopyWith<_$_GroupMember> get copyWith =>
      __$$_GroupMemberCopyWithImpl<_$_GroupMember>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupMemberToJson(
      this,
    );
  }
}

abstract class _GroupMember implements GroupMember {
  factory _GroupMember(
      {@JsonKey(name: 'user') final Member? memberDetails,
      @JsonKey(name: 'isModerator') final bool isModerator}) = _$_GroupMember;

  factory _GroupMember.fromJson(Map<String, dynamic> json) =
      _$_GroupMember.fromJson;

  @override
  @JsonKey(name: 'user')
  Member? get memberDetails;
  @override
  @JsonKey(name: 'isModerator')
  bool get isModerator;
  @override
  @JsonKey(ignore: true)
  _$$_GroupMemberCopyWith<_$_GroupMember> get copyWith =>
      throw _privateConstructorUsedError;
}

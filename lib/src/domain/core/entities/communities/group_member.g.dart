// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupMember _$$_GroupMemberFromJson(Map<String, dynamic> json) =>
    _$_GroupMember(
      memberDetails: json['user'] == null
          ? null
          : Member.fromJson(json['user'] as Map<String, dynamic>),
      isModerator: json['isModerator'] as bool? ?? false,
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']) ??
          UserType.UNKNOWN,
    );

Map<String, dynamic> _$$_GroupMemberToJson(_$_GroupMember instance) =>
    <String, dynamic>{
      'user': instance.memberDetails,
      'isModerator': instance.isModerator,
      'userType': _$UserTypeEnumMap[instance.userType],
    };

const _$UserTypeEnumMap = {
  UserType.CLIENT: 'CLIENT',
  UserType.STAFF: 'STAFF',
  UserType.UNKNOWN: 'UNKNOWN',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extra_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExtraData _$$_ExtraDataFromJson(Map<String, dynamic> json) => _$_ExtraData(
      isBanned: json['banned'] as bool?,
      userType: $enumDecodeNullable(_$UserTypeEnumMap, json['userType']) ??
          UserType.UNKNOWN,
    );

Map<String, dynamic> _$$_ExtraDataToJson(_$_ExtraData instance) =>
    <String, dynamic>{
      'banned': instance.isBanned,
      'userType': _$UserTypeEnumMap[instance.userType],
    };

const _$UserTypeEnumMap = {
  UserType.CLIENT: 'CLIENT',
  UserType.STAFF: 'STAFF',
  UserType.UNKNOWN: 'UNKNOWN',
};

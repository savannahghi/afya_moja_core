// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationFilter _$$_NotificationFilterFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationFilter(
      name: json['name'] as String?,
      type: $enumDecodeNullable(_$NotificationTypeEnumMap, json['enum']),
    );

Map<String, dynamic> _$$_NotificationFilterToJson(
        _$_NotificationFilter instance) =>
    <String, dynamic>{
      'name': instance.name,
      'enum': _$NotificationTypeEnumMap[instance.type],
    };

const _$NotificationTypeEnumMap = {
  NotificationType.APPOINTMENT: 'APPOINTMENT',
  NotificationType.SERVICE_REQUEST: 'SERVICE_REQUEST',
  NotificationType.COMMUNITIES: 'COMMUNITIES',
  NotificationType.SURVEYS: 'SURVEYS',
  NotificationType.ROLE_ASSIGNMENT: 'ROLE_ASSIGNMENT',
  NotificationType.ROLE_REVOCATION: 'ROLE_REVOCATION',
  NotificationType.DEMOTE_MODERATOR: 'DEMOTE_MODERATOR',
  NotificationType.PROMOTE_TO_MODERATOR: 'PROMOTE_TO_MODERATOR',
  NotificationType.UNKNOWN: 'UNKNOWN',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_actions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NotificationActions _$$_NotificationActionsFromJson(
        Map<String, dynamic> json) =>
    _$_NotificationActions(
      name: json['name'] as String,
      route: json['route'] as String,
      icon: IconDetails.fromJson(json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NotificationActionsToJson(
        _$_NotificationActions instance) =>
    <String, dynamic>{
      'name': instance.name,
      'route': instance.route,
      'icon': instance.icon,
    };

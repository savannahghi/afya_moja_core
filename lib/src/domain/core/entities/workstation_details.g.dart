// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workstation_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkStationDetails _$$_WorkStationDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_WorkStationDetails(
      notifications: json['Notifications'] as int?,
      messages: json['Messages'] as int?,
      surveys: json['Surveys'] as int?,
      articles: json['Articles'] as int?,
      serviceRequests: json['ServiceRequests'] as int?,
    );

Map<String, dynamic> _$$_WorkStationDetailsToJson(
        _$_WorkStationDetails instance) =>
    <String, dynamic>{
      'Notifications': instance.notifications,
      'Messages': instance.messages,
      'Surveys': instance.surveys,
      'Articles': instance.articles,
      'ServiceRequests': instance.serviceRequests,
    };

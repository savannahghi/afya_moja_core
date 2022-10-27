// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'managed_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ManagedClient _$$_ManagedClientFromJson(Map<String, dynamic> json) =>
    _$_ManagedClient(
      caregiverConsent: json['caregiverConsent'] as bool?,
      clientConsent: json['clientConsent'] as bool?,
      workStationDetails: json['workStationDetails'] == null
          ? null
          : WorkStationDetails.fromJson(
              json['workStationDetails'] as Map<String, dynamic>),
      user: json['clientProfile'] == null
          ? null
          : UserData.fromJson(json['clientProfile'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ManagedClientToJson(_$_ManagedClient instance) =>
    <String, dynamic>{
      'caregiverConsent': instance.caregiverConsent,
      'clientConsent': instance.clientConsent,
      'workStationDetails': instance.workStationDetails,
      'clientProfile': instance.user,
    };

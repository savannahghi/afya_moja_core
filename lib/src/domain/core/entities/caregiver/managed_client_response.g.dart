// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'managed_client_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ManagedClientsResponse _$$_ManagedClientsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ManagedClientsResponse(
      managedClients: json['getCaregiverManagedClients'] == null
          ? null
          : ManagedClients.fromJson(
              json['getCaregiverManagedClients'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ManagedClientsResponseToJson(
        _$_ManagedClientsResponse instance) =>
    <String, dynamic>{
      'getCaregiverManagedClients': instance.managedClients,
    };

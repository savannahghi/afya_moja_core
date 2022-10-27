// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'managed_clients.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ManagedClients _$$_ManagedClientsFromJson(Map<String, dynamic> json) =>
    _$_ManagedClients(
      clients: (json['ManagedClients'] as List<dynamic>?)
          ?.map((e) => ManagedClient.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ManagedClientsToJson(_$_ManagedClients instance) =>
    <String, dynamic>{
      'ManagedClients': instance.clients,
    };

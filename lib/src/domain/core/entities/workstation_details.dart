import 'package:freezed_annotation/freezed_annotation.dart';

part 'workstation_details.freezed.dart';
part 'workstation_details.g.dart';

@freezed
class WorkStationDetails with _$WorkStationDetails {
  factory WorkStationDetails({
    @JsonKey(name: 'Notifications') int? notifications,
    @JsonKey(name: 'Messages') int? messages,
    @JsonKey(name: 'Surveys') int? surveys,
    @JsonKey(name: 'Articles') int? articles,
    @JsonKey(name: 'ServiceRequests') int? serviceRequests,
  }) = _WorkStationDetails;

  factory WorkStationDetails.fromJson(Map<String, dynamic> json) =>
      _$WorkStationDetailsFromJson(json);

  factory WorkStationDetails.initial() => WorkStationDetails(
        notifications: 0,
        messages: 0,
        surveys: 0,
        articles: 0,
        serviceRequests: 0,
      );
}

// Package imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_filter.freezed.dart';
part 'notification_filter.g.dart';

@freezed
class NotificationFilter with _$NotificationFilter {
  factory NotificationFilter({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'enum', defaultValue: NotificationType.UNKNOWN)
        NotificationType? type,
  }) = _NotificationFilter;

  factory NotificationFilter.fromJson(Map<String, dynamic> json) =>
      _$NotificationFilterFromJson(json);

  factory NotificationFilter.initial() => NotificationFilter(
        name: UNKNOWN,
        type: NotificationType.UNKNOWN,
      );
}

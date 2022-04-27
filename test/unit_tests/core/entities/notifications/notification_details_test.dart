// Package imports:
import 'package:afya_moja_core/src/domain/core/entities/notifications/notification_details.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NotificationDetails', () {
    test('expects to convert NotificationDetails from json', () {
      final Map<String, dynamic> mockNotification = <String, dynamic>{
        'description':
            'Your Teleconsult with Dr Tibu for 11am has been set. Click this link to join ',
        'date': 'July 21 2021',
        'type': 'APPOINTMENT',
        'status': 'Missed'
      };
      expect(NotificationDetails.initial(), isA<NotificationDetails>());
      final NotificationDetails mockNotificationDetails =
          NotificationDetails.fromJson(mockNotification);
      expect(mockNotificationDetails, isA<NotificationDetails>());
    });
  });
}

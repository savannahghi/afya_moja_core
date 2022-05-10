import 'package:afya_moja_core/src/domain/core/entities/notifications/notification_action_info.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NotificationActionInfo', () {
    test('expects to convert NotificationActionInfo from json', () {
      
      final NotificationActionInfo notificationActionInfo =
          NotificationActionInfo(actionTitle: 'test', route: '/');
      expect(notificationActionInfo.actionTitle, 'test');
      expect(notificationActionInfo.route, '/');
      expect(notificationActionInfo.arguments, null);
    });
  });
}

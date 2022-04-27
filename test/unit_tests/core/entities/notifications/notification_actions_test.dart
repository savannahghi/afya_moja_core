import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NotificationAction', () {
    test('expects to convert NotificationAction from json', () {
      const String testAssetString = 'assets/icons/calendar_icon.svg';

      final Map<String, dynamic> mockNotificationActions = <String, dynamic>{
        'name': 'Calendar',
        'route': ' ',
        'icon': <String, dynamic>{'url': testAssetString}
      };
      final NotificationActions notificationActions =
          NotificationActions.fromJson(mockNotificationActions);
      expect(notificationActions, isA<NotificationActions>());
    });
  });
}

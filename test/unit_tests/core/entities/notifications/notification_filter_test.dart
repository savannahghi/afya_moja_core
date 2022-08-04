import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NotificationFilter', () {
    test('Serialization works correctly', () {
      final NotificationFilter notificationFilter =
          NotificationFilter.initial();
      expect(notificationFilter.name, UNKNOWN);

      final Map<String, dynamic> map = <String, dynamic>{
        'name': 'Communities',
        'enum': 'COMMUNITIES'
      };
      final NotificationFilter filter = NotificationFilter.fromJson(map);
      expect(filter.name, 'Communities');
    });
  });
}

import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('enums', () {
    test('expects get enum names in uppercase', () {
      expect(Flavour.consumer.name, 'CONSUMER');
      expect(
        RoleValue.SYSTEM_ADMINISTRATOR.name,
        'SYSTEM ADMINISTRATOR',
      );
      expect(
        UserType.CLIENT.name,
        'CLIENT',
      );

      expect(
        RoleValue.CLIENT_MANAGEMENT.name,
        'CLIENT MANAGEMENT',
      );
      expect(
        RoleValue.COMMUNITY_MANAGEMENT.name,
        'COMMUNITY MANAGEMENT',
      );
      expect(
        RoleValue.CONTENT_MANAGEMENT.name,
        'CONTENT MANAGEMENT',
      );
    });
    test('expects get enum names in lowercase', () {
      expect(
        CaregiverType.HEALTHCARE_PROFESSIONAL.name,
        'Healthcare professional',
      );
    });

    test('expects notification filters names', () {
      expect(
        NotificationType.APPOINTMENT.name,
        'APPOINTMENT',
      );
    });
  });
}

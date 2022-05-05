import 'package:afya_moja_core/src/domain/core/entities/role.dart';
import 'package:afya_moja_core/src/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Role', () {
    test('fromJson', () {
      expect(
        Role.fromJson(<String, dynamic>{
          'name': 'SYSTEM_ADMINISTRATOR',
          'active': true,
        }),
        Role(
          active: true,
          name: RoleValue.SYSTEM_ADMINISTRATOR,
        ),
      );
    });
  });
}

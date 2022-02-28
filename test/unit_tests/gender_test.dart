import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Gender', () {
    test('name extension work correctly', () {
      expect(Gender.male.name, 'male');
    });
  });
}

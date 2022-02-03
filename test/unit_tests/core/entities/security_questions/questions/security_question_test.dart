// Package imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import '../../../../../mocks/mocks.dart';

void main() {
  group('SecurityQuestion', () {
    test('expects to convert SecurityQuestion from json', () {
      final SecurityQuestion mockQuestion =
          SecurityQuestion.fromJson(mockSecurityQuestion);
      expect(mockQuestion, isA<SecurityQuestion>());
      expect(SecurityQuestion.initial(), isA<SecurityQuestion>());
    });
  });
}

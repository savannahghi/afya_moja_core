// Package imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import '../../../../../mocks/mocks.dart';

void main() {
  group('RecordSecurityQuestionResponse', () {
    test('expects to convert RecordSecurityQuestionResponse from json', () {
      final RecordSecurityQuestionResponse mockRecordQuestion =
          RecordSecurityQuestionResponse.fromJson(
        mockRecordSecurityQuestionResponse,
      );
      expect(mockRecordQuestion, isA<RecordSecurityQuestionResponse>());
      expect(
        RecordSecurityQuestionResponse.initial(),
        isA<RecordSecurityQuestionResponse>(),
      );
    });
  });
}

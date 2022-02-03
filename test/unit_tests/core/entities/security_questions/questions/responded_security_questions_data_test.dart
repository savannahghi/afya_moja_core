// Package imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import '../../../../../mocks/mocks.dart';

void main() {
  group('RespondedSecurityQuestionsData', () {
    test('expects to convert SecurityQuestionData from json', () {
      final RespondedSecurityQuestionsData mockRecordedQuestionsData =
          RespondedSecurityQuestionsData.fromJson(
        mockRecordedSecurityQuestionsData,
      );
      expect(mockRecordedQuestionsData, isA<RespondedSecurityQuestionsData>());
    });
  });
}

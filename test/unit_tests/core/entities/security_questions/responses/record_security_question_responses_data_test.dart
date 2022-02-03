// Package imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import '../../../../../mocks/mocks.dart';

void main() {
  group('RecordSecurityQuestionResponsesData', () {
    test('expects to convert SRecordSecurityQuestionResponsesData from json',
        () {
      final RecordSecurityQuestionResponsesData mockQuestionsResponsesData =
          RecordSecurityQuestionResponsesData.fromJson(
        mockRecordSecurityQuestionResponses,
      );
      expect(
        mockQuestionsResponsesData,
        isA<RecordSecurityQuestionResponsesData>(),
      );
    });
  });
}

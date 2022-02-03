// Package imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import '../../../../../mocks/mocks.dart';

void main() {
  group('SecurityQuestionsData', () {
    test('expects to convert SecurityQuestionData from json', () {
      final SecurityQuestionsData mockQuestionsData =
          SecurityQuestionsData.fromJson(mockSecurityQuestionsData);
      expect(mockQuestionsData, isA<SecurityQuestionsData>());
    });
  });
}

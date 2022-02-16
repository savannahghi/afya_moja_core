// Package imports:
import 'package:afya_moja_core/src/domain/core/entities/faqs/faq_content.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:

import '../../../../mocks/mocks.dart';

void main() {
  group('FAQContentResponse', () {
    test('expects to convert FAQContentResponse from json', () {
      final FAQContent mockResponse = FAQContent.fromJson(mockFAQContent);
      expect(mockResponse, isA<FAQContent>());
      expect(FAQContent.initial(), isA<FAQContent>());
    });
  });
}

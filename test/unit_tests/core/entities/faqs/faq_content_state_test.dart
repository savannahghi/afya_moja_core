// Package imports:
import 'package:afya_moja_core/src/domain/core/entities/faqs/faqs_content_state.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:

import '../../../../mocks/mocks.dart';

void main() {
  group('FAQContentState', () {
    test('expects to convert FAQContentState from json', () {
      final FAQsContentState mockResponse =
          FAQsContentState.fromJson(mockFAQContentState);
      expect(mockResponse, isA<FAQsContentState>());
      expect(FAQsContentState.initial(), isA<FAQsContentState>());
    });
  });
}

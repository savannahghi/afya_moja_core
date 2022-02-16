// Package imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:

import '../../../../mocks/mocks.dart';

void main() {
  group('FAQContentResponse', () {
    test('expects to convert FAQContentResponse from json', () {
      final FAQContentResponse mockResponse =
          FAQContentResponse.fromJson(mockFAQContentResponse);
      expect(mockResponse, isA<FAQContentResponse>());
    });
  });
}

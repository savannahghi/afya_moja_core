// Package imports:
import 'package:afya_moja_core/src/domain/core/entities/content/faq_content.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../../mocks/mocks.dart';

void main() {
  test('FAQContent fromJson', () {
    expect(
      FAQContent.fromJson(mockFeedContent),
      isA<FAQContent>(),
    );
  });
}

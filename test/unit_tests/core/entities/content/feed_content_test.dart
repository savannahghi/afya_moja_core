// Package imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';
import '../../../../mocks/mocks.dart';

void main() {
  test('FeedContent fromJson', () {
    expect(
      FeedContent.fromJson(mockFeedContent),
      isA<FeedContent>(),
    );
  });
}

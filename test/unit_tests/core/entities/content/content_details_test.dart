import 'package:afya_moja_core/src/domain/core/entities/content/content_details.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks/mocks.dart';

void main() {
  test('ContentDetails fromJson', () {
    expect(
      ContentDetails.fromJson(mockContentDetails),
      isA<ContentDetails>(),
    );
  });
}

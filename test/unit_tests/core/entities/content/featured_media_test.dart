// Package imports:

import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/domain/core/entities/content/featured_media.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Featured Media initial is set', () {
    final FeaturedMedia featuredMedia = FeaturedMedia.initial();

    expect(
      featuredMedia.id,
      0,
    );
    expect(
      featuredMedia.title,
      UNKNOWN,
    );
  });
}

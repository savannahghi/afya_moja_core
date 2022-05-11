import 'package:afya_moja_core/src/domain/core/entities/content/gallery_image.dart';
import 'package:afya_moja_core/src/domain/core/entities/content/image_detail.dart';
import 'package:afya_moja_core/src/domain/core/entities/content/image_meta.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks/mocks.dart';

void main() {
  group('GalleryImage', () {
    test('fromJson works correctly', () {
      expect(
        GalleryImage.fromJson(mockGalleryImage),
        GalleryImage(
          id: 2,
          image: ImageDetail(
            title: 'mockImage',
            meta: ImageMeta(imageDownloadUrl: 'testImage'),
          ),
        ),
      );
    });
  });
}

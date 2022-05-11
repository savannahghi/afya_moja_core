// Package imports:
import 'package:afya_moja_core/src/domain/core/entities/content/content_category.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('ContentCategory fromJson', () {
    expect(
      ContentCategory.fromJson(<String, dynamic>{
        'ID': 1,
        'categoryName': '1',
        'categoryIcon': '1',
      }),
      isA<ContentCategory>(),
    );
  });

  test('ContentCategory initial is set', () {
    final ContentCategory initialAddress = ContentCategory.initial();

    expect(
      initialAddress.id,
      0,
    );
    expect(
      initialAddress.name,
      'all',
    );
  });
}

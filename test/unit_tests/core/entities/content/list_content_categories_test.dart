import 'package:afya_moja_core/src/domain/core/entities/content/list_content_categories.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('ListContentCategory fromJson', () {
    expect(
      ListContentCategory.fromJson(<String, dynamic>{
        'listContentCategories': <dynamic>[
          <String, dynamic>{'id': 0, 'name': 'test', 'iconUrl': 'test'}
        ],
        'errorFetchingContentCategories': true,
        'timeoutFetchingContentCategories': false,
      }),
      isA<ListContentCategory>(),
    );
  });

  test('ListContentCategory initial is set', () {
    final ListContentCategory listContentCategory =
        ListContentCategory.initial();

    expect(
      listContentCategory.errorFetchingContentCategories,
      false,
    );
    expect(
      listContentCategory.timeoutFetchingContentCategories,
      false,
    );
  });
}

// Package imports:
import 'package:afya_moja_core/src/domain/core/entities/content/content.dart';
import 'package:afya_moja_core/src/domain/core/entities/faqs/faqs_content_state.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import '../../../../mocks/mocks.dart';
void main() {
  test('FAQsContentState fromJson', () {
    expect(
      FAQsContentState.fromJson(<String, dynamic>{
        'items': <dynamic>[contentMock.first]
      }),
      isA<FAQsContentState>(),
    );
  });

  test('FAQsContentState initial is set', () {
    final FAQsContentState initialSavedContentState =
        FAQsContentState.initial();

    expect(
      initialSavedContentState,
      FAQsContentState(
        profileFAQs: <Content>[],
        errorFetchingFAQs: false,
        timeoutFetchingFAQs: false,
      ),
    );
  });
}

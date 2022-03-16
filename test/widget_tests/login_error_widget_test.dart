// Flutter imports:
import 'package:afya_moja_core/src/presentation/buttons.dart';
import 'package:afya_moja_core/src/presentation/login_error_widget.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:

void main() {
  testWidgets('error container should be rendered properly',
      (WidgetTester tester) async {
    const String errorMsgText = 'some error message ';
    late bool test;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: LoginErrorWidget(
            title: 'attempts',
            message: errorMsgText,
            actionText: 'test',
            actionCallback: () {
              test = true;
            },
          ),
        ),
      ),
    );

    final Finder button = find.byType(MyAfyaHubPrimaryButton);

    expect(button, findsOneWidget);

    await tester.tap(button);
    await tester.pumpAndSettle();
    expect(test, true);
  });
}

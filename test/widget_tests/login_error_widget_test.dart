// Flutter imports:
import 'package:afya_moja_core/src/presentation/login_error_widget.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
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
            timerAction: (bool disable) {
              test = disable;
            },
            retryTimeout: 30,
          ),
        ),
      ),
    );

    await tester.pump(const Duration(seconds: 18));

    expect(find.byKey(errorAlertBoxKey), findsOneWidget);
    expect(find.byType(RichText), findsNWidgets(2));
    expect(test, true);

    await tester.pump(const Duration(seconds: 40));
    expect(test, false);
  });
}

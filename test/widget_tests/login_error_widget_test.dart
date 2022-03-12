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
    const String actionSpanText = 'or some other error message';

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: LoginErrorWidget(
            title: 'test',
            message: errorMsgText,
            spannedText: actionSpanText,
          ),
        ),
      ),
    );

    expect(find.byKey(errorAlertBoxKey), findsOneWidget);
    expect(find.byType(RichText), findsNWidgets(2));

    final Finder widgetFinder = find.byKey(errorAlertBoxKey);
    final Finder richTextFinder =
        find.descendant(of: widgetFinder, matching: find.byType(RichText));
    final RichText errorSpanTextWidget =
        richTextFinder.evaluate().last.widget as RichText;
    final String errorSpanText = errorSpanTextWidget.text.toPlainText();
    expect(errorSpanText, errorMsgText + actionSpanText);
  });
}

import 'package:afya_moja_core/src/app_asset_strings.dart';
import 'package:afya_moja_core/src/presentation/pin_request_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('PINResetRequestScaffold should be rendered properly',
      (WidgetTester tester) async {
    String test = '';
    const Key testKey = Key('test');

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PINRequestScaffold(
            iconSvgPath: tooManyAttemptsIconSvgPath,
            title: test,
            message: test,
            actionText: test,
            actionCallback: () {
              test = 'button';
            },
            actionKey: testKey,
          ),
        ),
      ),
    );

    final Finder button = find.byKey(testKey);

    expect(button, findsOneWidget);

    await tester.tap(button);
    await tester.pumpAndSettle();
    expect(test, 'button');
  });
}

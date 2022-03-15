import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/presentation/login_counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('LoginCounterPage should be rendered properly',
      (WidgetTester tester) async {
    late String test;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: LoginCounterPage(
            retryTimeout: 20,
            actionText: 'test',
            onButtonTapped: () {
              test = 'button';
            },
            onTimerEnded: () {
              test = 'timer ended';
            },
          ),
        ),
      ),
    );
    await tester.pump(const Duration(seconds: 23));

    final Finder button = find.byType(MyAfyaHubPrimaryButton);

    expect(button, findsOneWidget);
    expect(test, 'timer ended');

    await tester.tap(button);
    await tester.pumpAndSettle();
    expect(test, 'button');
  });
  testWidgets(
      'LoginCounterPage should call onTimerEnded when retryTimeout is zero',
      (WidgetTester tester) async {
    late String test;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: LoginCounterPage(
            retryTimeout: -1,
            onTimerEnded: () {
              test = 'timer ended';
            },
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    expect(test, 'timer ended');
  });
}

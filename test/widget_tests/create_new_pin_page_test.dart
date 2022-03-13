// Package imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
void main() {
  group('CreateNewPINWidget', () {
    testWidgets('PIN field and confirm PIN validates correctly', (WidgetTester tester) async {
      String testString = 'test';
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return CreateNewPINWidget(
                    title: 'test',
                    loading: false,
                    onContinue: (String PIN, String confirmPIN) {
                      if (PIN == confirmPIN) {
                        testString = PIN;
                      }
                    },
                  );
                },
              ),
            ),
          ),
        ),
      );

      final Finder pinInputField = find.byKey(pinInputKey);

      final Finder confirmPinInputField = find.byKey(confirmPinInputKey);
      final Finder saveAndContinueButton =
          find.byKey(createPINContinueButtonKey);

      expect(pinInputField, findsOneWidget);
      expect(confirmPinInputField, findsOneWidget);
      expect(saveAndContinueButton, findsOneWidget);

      await tester.ensureVisible(saveAndContinueButton);
      await tester.tap(saveAndContinueButton);
      await tester.pumpAndSettle();
      expect(find.text('A PIN is required'), findsNWidgets(2));


      await tester.showKeyboard(pinInputField);
      await tester.enterText(pinInputField, '1234');
      await tester.showKeyboard(confirmPinInputField);
      await tester.enterText(confirmPinInputField, '1243');
      await tester.ensureVisible(saveAndContinueButton);

      await tester.tap(saveAndContinueButton);
      await tester.pump(const Duration(seconds: 1));
      expect(find.text(pinMustMatchString), findsOneWidget);

      await tester.showKeyboard(pinInputField);
      await tester.enterText(pinInputField, '0000');
      await tester.showKeyboard(confirmPinInputField);
      await tester.enterText(confirmPinInputField, '0000');
      await tester.ensureVisible(saveAndContinueButton);
      await tester.tap(saveAndContinueButton);
      await tester.pumpAndSettle();
      expect(testString, '0000');
    });

    testWidgets('should render PlatformLoader', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return const CreateNewPINWidget(
                    title: 'test',
                    loading: true,
                  );
                },
              ),
            ),
          ),
        ),
      );
      expect(find.byType(PlatformLoader), findsOneWidget);
    });
  });
}

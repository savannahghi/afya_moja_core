import 'package:afya_moja_core/src/custom_confirm_dialog.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CustomConfirmDialog', () {
    const String testString = 'testing';

    late String testString2 = '';

    testWidgets('should render correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (BuildContext context) {
                return CustomConfirmDialog(
                  header: const SizedBox(),
                  body: const SizedBox(
                    height: 200,
                  ),
                  onTapConfirm: () {
                    testString2 = testString;
                  },
                );
              },
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      final Finder dialogConfirmButton = find.byKey(dialogConfirmButtonKey);
      final Finder dialogCancelButton = find.byKey(dialogCancelButtonKey);
      expect(dialogConfirmButton, findsOneWidget);

      await tester.tap(dialogConfirmButton);
      await tester.pumpAndSettle();
      expect(testString2, testString);

      await tester.tap(dialogCancelButton);
      await tester.pumpAndSettle();
      expect(dialogConfirmButton, findsNothing);
    });
    testWidgets('should render correctly when activateConfirmButton is false',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (BuildContext context) {
                return CustomConfirmDialog(
                  header: const SizedBox(),
                  body: const SizedBox(
                    height: 200,
                  ),
                  onTapConfirm: () {
                    testString2 = testString;
                  },
                  activateConfirmButton: false,
                );
              },
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      final Finder dialogConfirmButton = find.byKey(dialogConfirmButtonKey);
      expect(dialogConfirmButton, findsOneWidget);
    });
  });
}

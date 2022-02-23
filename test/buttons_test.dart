// Flutter imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SILPrimaryButton', () {
    testWidgets('should render correctly', (WidgetTester tester) async {
      bool isActionTapped = false;
      bool isLongPressed = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return MyAfyaHubPrimaryButton(
                    onPressed: () {
                      isActionTapped = true;
                    },
                    onLongPress: () {
                      isLongPressed = true;
                    },
                  );
                },
              ),
            ),
          ),
        ),
      );

      expect(find.byType(RawMaterialButton), findsOneWidget);

      await tester.tap(find.byType(MyAfyaHubPrimaryButton));
      await tester.pumpAndSettle();
      expect(isActionTapped, true);

      await tester.longPress(find.byType(MyAfyaHubPrimaryButton));
      await tester.pumpAndSettle();
      expect(isLongPressed, true);
    });
  });
  group('SILNoBorderButton', () {
    testWidgets('should render correctly', (WidgetTester tester) async {
      bool isActionTapped = false;
      bool isLongPressed = false;

      const Key buttonKey = Key('button_key');

      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: Center(
            child: Builder(builder: (BuildContext context) {
              return MyAfyaHubNoBorderButton(
                  buttonKey: buttonKey,
                  onPressed: () {
                    isActionTapped = true;
                  },
                  onLongPress: () {
                    isLongPressed = true;
                  },
                  text: 'Next',);
            },),
          ),
        ),
      ),);

      expect(find.byType(TextButton), findsOneWidget);

      await tester.tap(find.byKey(buttonKey));
      await tester.pumpAndSettle();
      expect(isActionTapped, true);

      await tester.longPress(find.byKey(buttonKey));
      await tester.pumpAndSettle();
      expect(isLongPressed, true);
    });

    testWidgets('should show assertion error', (WidgetTester tester) async {
      expect(() => MyAfyaHubNoBorderButton(onPressed: null, text: null),
          throwsAssertionError,);
    });
  });
}

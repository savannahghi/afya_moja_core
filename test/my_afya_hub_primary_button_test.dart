// Flutter imports:
import 'package:afya_moja_core/src/my_afya_hub_primary_button.dart';
import 'package:flutter/cupertino.dart';
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
}

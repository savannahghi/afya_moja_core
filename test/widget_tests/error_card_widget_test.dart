import 'package:afya_moja_core/src/presentation/buttons.dart';
import 'package:afya_moja_core/src/presentation/error_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ErrorCardWidget', () {
    bool isTapped = false;
    testWidgets('should render correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return ErrorCardWidget(
                    callBackFunction: () => 
                    isTapped = true,
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
      expect(isTapped, true);
    });
  });
}

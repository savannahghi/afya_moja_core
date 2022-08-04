import 'package:afya_moja_core/src/helpers.dart';
import 'package:afya_moja_core/src/presentation/inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

void main() {
  String testString = 'test';
  testWidgets('PINInputField should render correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PINInputField(
            maxLength: null,
            onDone: (String val) => testString = val,
            onTextChanged: (String val) {},
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.showKeyboard(find.byType(PINInputField));
    await tester.enterText(find.byType(PINInputField), '123456');

    await tester.pumpAndSettle();

    final Finder pinCodeTextField = find.byType(PinCodeTextField);
    expect(pinCodeTextField, findsOneWidget);
    expect(testString, '123456');
  });

  testWidgets('headsUpNotification renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      OverlaySupport(
        child: MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (BuildContext context) {
                return Center(
                  child: MaterialButton(
                    onPressed: () =>
                        headsUpNotification('testTitle', 'testBody'),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    final Finder button = find.byType(MaterialButton);
    await tester.tap(button);
    await tester.pump(const Duration(seconds: 4));

    expect(find.text('testTitle'), findsOneWidget);
  });
}

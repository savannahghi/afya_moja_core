import 'package:afya_moja_core/src/presentation/inputs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
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
}

import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MyAfyaHubPhoneInput', () {
    String formatPhoneNumber({
      required String countryCode,
      required String phoneNumber,
    }) {
      if (!countryCode.startsWith('+')) {
        return '+$countryCode';
      }
      if (countryCode == '+1') {
        return '$countryCode$phoneNumber';
      }
      if (phoneNumber.startsWith('0')) {
        return phoneNumber.substring(1);
      }
      return '$countryCode$phoneNumber';
    }

    testWidgets(
      'renders correctly and updates the relevant controller and value',
      (WidgetTester tester) async {
        const Key phoneNumberInput = Key('text_form_field_key');

        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: MyAfyaHubPhoneInput(
                showBorder: true,
                textFormFieldKey: phoneNumberInput,
                controller: TextEditingController(),
                onChanged: (String? value) {},
                phoneNumberFormatter: formatPhoneNumber,
              ),
            ),
          ),
        );

        await tester.pumpAndSettle();

        expect(find.byKey(const Key('countrySelectedKey')), findsOneWidget);

        expect(find.text('+254'), findsOneWidget);

        await tester.tap(find.byKey(phoneNumberInput));
        await tester.enterText(find.byKey(phoneNumberInput), '0712345678');
        await tester.pumpAndSettle();

        expect(find.byType(MyAfyaHubCountryPicker), findsOneWidget);
        await tester.tap(find.byType(MyAfyaHubCountryPicker));
        await tester.pumpAndSettle();

        expect(find.byType(ListTile), findsNWidgets(7));
        await tester.tap(find.byType(ListTile).first);
        await tester.pumpAndSettle();

        // confirm phone number was entered
        expect(find.text('0712345678'), findsOneWidget);
        await tester.pumpAndSettle();

        // enter a valid US phone number value
        await tester.tap(find.byKey(phoneNumberInput));
        await tester.enterText(find.byKey(phoneNumberInput), '728101710');
        await tester.pumpAndSettle();

        // confirm phone number was entered
        expect(find.text('728101710'), findsOneWidget);
        expect(find.text('+254'), findsOneWidget);
        await tester.pumpAndSettle();
      },
    );

    testWidgets('throws assertion error for incorrect parameters',
        (WidgetTester tester) async {
      expect(
        () async {
          await tester.pumpWidget(
            MyAfyaHubPhoneInput(
              initialValue: '',
              controller: TextEditingController(),
              onChanged: (_) {},
              phoneNumberFormatter: formatPhoneNumber,
            ),
          );
        },
        throwsAssertionError,
      );
    });

    testWidgets('returns correct errors', (WidgetTester tester) async {
      const Key formField = Key('form_field_key');

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: MyAfyaHubPhoneInput(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              textFormFieldKey: formField,
              onChanged: (_) {},
              phoneNumberFormatter: formatPhoneNumber,
            ),
          ),
        ),
      );

      final Finder formFieldFinder = find.byKey(formField);

      await tester.tap(formFieldFinder);
      await tester.pumpAndSettle();

      await tester.enterText(formFieldFinder, 'test');
      await tester.pump();

      await tester.enterText(find.byKey(formField), '');
      await tester.pump();

      expect(find.text(phoneNumberRequiredText), findsOneWidget);

      await tester.enterText(formFieldFinder, '0798');
      await tester.pump();

      expect(find.text(validPhoneNumberText), findsOneWidget);
    });
  });
}

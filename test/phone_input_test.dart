import 'package:afya_moja_core/phone_input.dart';
import 'package:afya_moja_core/src/country_code_picker.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MyAfyaHubPhoneInput', () {
    testWidgets(
      'renders correctly and updates the relevant controller and value',
      (WidgetTester tester) async {
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

        final TextEditingController phoneNumberInputController =
            TextEditingController();
        await tester.pumpWidget(
          MaterialApp(
            home: Builder(
              builder: (BuildContext context) {
                return Scaffold(
                  body: SizedBox(
                    child: MyAfyaHubPhoneInput(
                      autoValidate: true,
                      inputController: phoneNumberInputController,
                      labelText: 'x',
                      suffixIcon: const SizedBox(),
                      onChanged: (String? value) {},
                      phoneNumberFormatter: formatPhoneNumber,
                    ),
                  ),
                );
              },
            ),
          ),
        );

        await tester.pumpAndSettle();

        expect(find.byKey(const Key('countrySelectedKey')), findsOneWidget);

        expect(find.text('+254'), findsOneWidget);

        await tester.tap(find.byKey(textFormFieldKey));
        await tester.enterText(find.byKey(textFormFieldKey), '0712345678');
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
        await tester.tap(find.byKey(textFormFieldKey));
        await tester.enterText(find.byKey(textFormFieldKey), '728101710');
        await tester.pumpAndSettle();

        // confirm phone number was entered
        expect(find.text('728101710'), findsOneWidget);
        expect(find.text('+254'), findsOneWidget);
        await tester.pumpAndSettle();
      },
    );
  });
}

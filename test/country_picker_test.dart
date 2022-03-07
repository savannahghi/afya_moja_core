// Flutter imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MyAfyaHubCountryPicker', () {
    testWidgets('should render CountryPicker ', (WidgetTester tester) async {
      const Key selectCountryKey = Key('select_country_key');

      final Widget testWidget = MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return Scaffold(
              body: SizedBox(
                child: MyAfyaHubCountryPicker(
                  selectCountryKey: selectCountryKey,
                  onChanged: (String val) {},
                ),
              ),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);
      final Finder countryPicker = find.byType(MyAfyaHubCountryPicker);
      final Finder detector = find.byType(GestureDetector);
      final Finder selectCountry = find.byKey(selectCountryKey);

      await tester.pumpAndSettle();
      expect(countryPicker, findsOneWidget);
      expect(detector, findsOneWidget);
      expect(selectCountry, findsOneWidget);

      await tester.tapAt(const Offset(400, 27));
      await tester.pumpAndSettle();
    });
  });
}

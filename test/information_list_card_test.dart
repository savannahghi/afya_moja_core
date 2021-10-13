import 'package:afya_moja_core/src/information_list_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TermsAndConditionsPage', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: InformationListCard(title: Text('title')),
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('title'), findsOneWidget);
    });

    testWidgets('should show Icon', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: InformationListCard(
              title: Text('title'),
              leadingIcon: Icon(
                Icons.access_alarm,
                size: 32,
                color: Color.fromARGB(255, 22, 20, 74),
              ),
            ),
          ),
        ),
      );

      expect(find.text('title'), findsOneWidget);
      expect(find.byIcon(Icons.access_alarm), findsOneWidget);
    });

    testWidgets('should show alternateLeadingIcon',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: InformationListCard(
              title: Text('title'),
              alternateLeadingIcon: Icon(
                Icons.access_alarm,
                size: 32,
                color: Color.fromARGB(255, 22, 20, 74),
              ),
            ),
          ),
        ),
      );

      expect(find.text('title'), findsOneWidget);
      expect(find.byIcon(Icons.access_alarm), findsOneWidget);
    });
  });
}

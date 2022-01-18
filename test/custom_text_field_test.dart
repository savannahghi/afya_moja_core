import 'package:afya_moja_core/src/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CustomTextField', () {
    testWidgets('should show field label', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: CustomTextField(
              formFieldKey: Key('formFieldKey'),
              fieldLabel: 'Example field',
            ),
          ),
        ),
      );

      expect(find.text('Example field'), findsOneWidget);
    });

    testWidgets(
        'should show field label with red asterisk if field is required',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: CustomTextField(
              isRequired: true,
              formFieldKey: Key('formFieldKey'),
              fieldLabel: 'Example field',
            ),
          ),
        ),
      );

      expect(find.text('Example field'), findsOneWidget);
      expect(find.text('*'), findsOneWidget);
      expect(
        (tester.widget(find.text('*')) as Text).style?.color,
        Colors.redAccent,
      );
    });
  });
}

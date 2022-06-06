// Flutter imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

void main() {
  group('ExpandableQuestion', () {
    const String question = 'Where do you live ?';
    const String hintText = 'Answer here';
    testWidgets(
      'should render correctly if not of date type',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Builder(
              builder: (BuildContext context) {
                return Material(
                  child: ExpandableQuestion(
                    question: question,
                    hintText: hintText,
                    onChanged: (String? value) {},
                    dateController: TextEditingController(),
                  ),
                );
              },
            ),
          ),
        );
        expect(find.text(question), findsWidgets);
        final Finder expansionTile = find.byType(ExpansionTile);
        expect(expansionTile, findsOneWidget);

        await tester.tap(expansionTile);
        await tester.pumpAndSettle();

        final Finder textFormField = find.byType(TextFormField);
        expect(textFormField, findsOneWidget);
        await tester.showKeyboard(textFormField);
        await tester.enterText(textFormField, 'text');
        await tester.pumpAndSettle();
      },
    );

    testWidgets(
      'should render correctly if its of date type',
      (WidgetTester tester) async {
        await tester.pumpWidget(
          MaterialApp(
            home: Builder(
              builder: (BuildContext context) {
                return Material(
                  child: ExpandableQuestion(
                    question: question,
                    hintText: hintText,
                    onChanged: (String? value) {},
                    dateController: TextEditingController(),
                    isDateType: true,
                  ),
                );
              },
            ),
          ),
        );
        expect(find.text(question), findsWidgets);
        final Finder expansionTile = find.byType(ExpansionTile);
        expect(expansionTile, findsOneWidget);

        await tester.tap(expansionTile);
        await tester.pumpAndSettle();

        final Finder datePickerField = find.byType(DatePickerField);
        expect(datePickerField, findsOneWidget);
      },
    );

    testWidgets(
        'should throw assertion error if both controller and initialValue'
        ' are not null', (WidgetTester tester) async {
      final TextEditingController controller = TextEditingController();

      Future<void> pump() async {
        await tester.pumpWidget(
          Material(
            child: ExpandableQuestion(
              question: question,
              hintText: hintText,
              onChanged: (String? value) {},
              controller: controller,
              initialValue: '',
              dateController: TextEditingController(),
            ),
          ),
        );
      }

      expect(pump(), throwsAssertionError);
    });

    testWidgets('should have grey fill color if form is not enabled',
        (WidgetTester tester) async {
      const Key fieldKey = Key('field-key');
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ExpandableQuestion(
              enabled: false,
              fieldKey: fieldKey,
              initialValue: '',
              onChanged: (String? value) {},
              question: question,
              dateController: TextEditingController(),
            ),
          ),
        ),
      );

      final Finder expansionTile = find.byType(ExpansionTile);
      expect(expansionTile, findsOneWidget);

      await tester.tap(expansionTile);
      await tester.pumpAndSettle();

      final TextField formField =
          tester.widget<TextField>(find.byType(TextField));
      expect(formField.decoration?.fillColor, Colors.grey[200]);
    });
  });

  group('VerifyOTPInput', () {
    testWidgets('VerifyOTPInput should render correctly',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: VerifyOTPInput(
              maxLength: null,
              onDone: (String val) {},
              onTextChanged: (String val) {},
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      await tester.showKeyboard(find.byType(VerifyOTPInput));
      await tester.enterText(find.byType(VerifyOTPInput), '1234');
      await tester.pumpAndSettle();

      final Finder pinCodeTextField = find.byType(PinCodeTextField);
      expect(pinCodeTextField, findsOneWidget);
    });
  });

  group('EditInformationDropDown', () {
    testWidgets('EditInformationDropDown should render correctly',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: EditInformationDropDown(
              items: const <String>['Test', 'Trial'],
              value: 'Test',
              onChange: (String? value) {},
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(EditInformationDropDown), findsOneWidget);
    });

    testWidgets('EditInformationDropDown displays dropdown list',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: EditInformationDropDown(
              items: const <String>['Test', 'Trial'],
              value: 'Test',
              onChange: (String? value) {},
            ),
          ),
        ),
      );

      await tester.tap(
        find.byType(EditInformationDropDown),
      );
      await tester.pumpAndSettle();

      expect(find.text('Trial').first, findsOneWidget);
    });

    testWidgets('EditInformationDropDown onChange on tap',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              return Scaffold(
                body: EditInformationDropDown(
                  items: const <String>['Test', 'Trial'],
                  value: 'Test',
                  onChange: (String? value) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(value!),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      );

      await tester.tap(
        find.byType(EditInformationDropDown),
      );
      await tester.pumpAndSettle();

      await tester.tap(
        find.text('Test').last,
      );

      expect(find.byType(ScaffoldMessenger), findsOneWidget);
    });
  });
}

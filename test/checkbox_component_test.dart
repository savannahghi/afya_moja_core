import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CheckBoxComponent', () {
    testWidgets('should render correctly when a child widget is passed',
        (WidgetTester tester) async {
      bool counter = false;
      bool onTap = false;
      const String checkBoxActionText = 'Action';
      final Widget testWidget = MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return Scaffold(
              body: CheckBoxComponent(
                text: '',
                value: true,
                onChanged: (bool? value) {
                  counter = value!;
                },
                onTap: () {
                  onTap = true;
                },
                child: RichText(
                  text: TextSpan(
                    text: '',
                    style: Theme.of(context).textTheme.bodyText1,
                    children: <TextSpan>[
                      TextSpan(
                        text: checkBoxActionText,
                        style: const TextStyle(color: Colors.white),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // navigate to desired screen
                            onTap = true;
                          },
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);

      await tester.pumpAndSettle();

      // verify SILCheckbox renders correctly
      expect(find.byType(RichText), findsOneWidget);
      expect(
        find.byWidgetPredicate(
          (Widget widget) =>
              widget is RichText &&
              widget.text.toPlainText().startsWith(checkBoxActionText),
        ),
        findsOneWidget,
      );

      expect(find.byType(Checkbox), findsOneWidget);
      expect(tester.getSize(find.byType(Checkbox)), const Size(48.0, 48.0));

      await tester.tap(find.byType(Checkbox));
      await tester.pump();

      expect(counter, false);

      await tester.tap(
        find.byWidgetPredicate(
          (Widget widget) =>
              widget is RichText &&
              widget.text.toPlainText().startsWith(checkBoxActionText),
        ),
      );
      await tester.pumpAndSettle();

      expect(onTap, true);
    });

    testWidgets('should render correctly when no child widget is passed',
        (WidgetTester tester) async {
      bool counter = false;
      const String checkBoxActionText = 'Action';
      final Widget testWidget = MaterialApp(
        home: Scaffold(
          body: CheckBoxComponent(
            text: checkBoxActionText,
            value: counter,
            onChanged: (bool? value) {
              counter = value!;
            },
          ),
        ),
      );
      await tester.pumpWidget(testWidget);

      await tester.pumpAndSettle();

      expect(find.byType(Checkbox), findsOneWidget);
      expect(tester.getSize(find.byType(Checkbox)), const Size(48.0, 48.0));
      expect(find.text(checkBoxActionText), findsOneWidget);

      await tester.tap(find.byType(Checkbox));
      await tester.pump();

      expect(counter, true);
    });

    testWidgets('tapping the text should also activate the checkbox',
        (WidgetTester tester) async {
      bool counter = false;
      const String checkBoxActionText = 'Action';
      final Widget testWidget = MaterialApp(
        home: Scaffold(
          body: CheckBoxComponent(
            text: checkBoxActionText,
            value: counter,
            onChanged: (bool? value) {
              counter = value!;
            },
          ),
        ),
      );
      await tester.pumpWidget(testWidget);

      await tester.pumpAndSettle();

      final Finder actionTextFinder = find.text(checkBoxActionText);
      expect(actionTextFinder, findsOneWidget);
      await tester.tap(actionTextFinder);
      await tester.pumpAndSettle();

      expect(counter, true);
    });
  });
}

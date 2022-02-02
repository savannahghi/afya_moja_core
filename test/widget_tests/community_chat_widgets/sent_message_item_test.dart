// Flutter imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SentMessageItem', () {
    testWidgets('should render correctly ', (WidgetTester tester) async {
      final Widget testWidget = MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return const Scaffold(
              body: SentMessageItem(
                message: 'Test',
                time: '12.00',
              ),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);

      expect(find.byType(SentMessageItem), findsOneWidget);
    });
  });
}

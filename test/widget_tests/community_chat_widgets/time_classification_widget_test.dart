import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('TimeClassificationWidget', () {
    testWidgets('should render correctly ', (WidgetTester tester) async {
      final Widget testWidget = MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return const Scaffold(
              body: TimeClassificationWidget(
                time: '12.00',
              ),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);

      expect(find.byType(TimeClassificationWidget), findsOneWidget);
    });
  });
}

// Flutter imports:
import 'package:afya_moja_core/src/community_chat_widgets/quoted_message_widget.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('QuotedMessageWidget', () {
    testWidgets('should render correctly ', (WidgetTester tester) async {
      final Widget testWidget = MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return const Scaffold(
              body: QuotedMessageWidget(
                message: 'Test',
                senderName: 'Test',
              ),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);

      expect(find.byType(QuotedMessageWidget), findsOneWidget);
    });
  });
}

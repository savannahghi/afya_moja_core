// Flutter imports:
import 'package:afya_moja_core/src/community_chat_widgets/awaiting_moderation_widget.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AwaitingModerationWidget', () {
    testWidgets('should render correctly ', (WidgetTester tester) async {
      final Widget testWidget = MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return const SizedBox(
              child: AwaitingModerationWidget(),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);

      expect(find.byType(AwaitingModerationWidget), findsOneWidget);
    });
  });
}

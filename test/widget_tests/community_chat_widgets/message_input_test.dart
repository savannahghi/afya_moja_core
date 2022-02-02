// Flutter imports:

import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MessageInput', () {
    testWidgets('should render correctly ', (WidgetTester tester) async {
      final Widget testWidget = MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return Scaffold(
              body: MessageInput(
                onChanged: (String test) {},
              ),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);

      expect(find.byType(MessageInput), findsOneWidget);
    });

    testWidgets('Attach button is clickable', (WidgetTester tester) async {
      final Widget testWidget = MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return Scaffold(
              body: MessageInput(
                onChanged: (String test) {},
              ),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);

      final Finder attachFileButton = find.byKey(messageInputAttachFileKey);
      await tester.tap(attachFileButton);
      await tester.pumpAndSettle();
      expect(find.text(comingSoonText), findsOneWidget);

      final Finder sendMessageButton = find.byKey(messageInputSendMessageKey);
      await tester.tap(sendMessageButton);
      await tester.pumpAndSettle();
      expect(find.text(comingSoonText), findsOneWidget);

      expect(find.byType(MessageInput), findsOneWidget);
    });
  });
}

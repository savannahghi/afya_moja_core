// Flutter imports:
import 'dart:io';

import 'package:afya_moja_core/src/app_asset_strings.dart';
import 'package:afya_moja_core/src/community_chat_widgets/sender_type_widget.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

import '../../mock_image_http_client.dart';

void main() {
  group('SenderTypeWidget', () {
    setUpAll(() {
      HttpOverrides.global = TestHttpOverrides();
    });
    testWidgets('should render correctly ', (WidgetTester tester) async {
      final Widget testWidget = MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return const Scaffold(
              body: SenderTypeWidget(
                senderTitle: 'Test',
                senderIcon: sendTextIcon,
              ),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);

      expect(find.byType(SenderTypeWidget), findsOneWidget);
    });
  });
}

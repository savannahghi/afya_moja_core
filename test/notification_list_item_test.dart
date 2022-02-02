// Project imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/domain/core/entities/icon_details.dart';
import 'package:afya_moja_core/domain/core/entities/notification_actions.dart';

// Flutter imports
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('NotificationListItem', () {
    const String testAssetString = 'assets/icons/calendar_icon.svg';
    testWidgets('should render NotificationListItem without calendar',
        (WidgetTester tester) async {
      final Widget testWidget = MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return Scaffold(
              body: NotificationListItem(
                status: 'Missed',
                icon: IconDetails(
                  iconUrlSvgPath: testAssetString,
                ),
                description:
                    'Your Teleconsult with Dr Tibu for 11am has been set. Click this link to join ',
                date: 'July 12 2021',
              ),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);

      await tester.pumpAndSettle();

      // verify Notification List Item renders correctly
      expect(find.byType(NotificationListItem), findsOneWidget);

      expect(find.text('Add to Calendar'), findsNothing);
    });

    testWidgets('should render NotificationListItem with calendar',
        (WidgetTester tester) async {
      final Widget testWidget = MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return Scaffold(
              body: NotificationListItem(
                icon: IconDetails(
                  iconUrlSvgPath: testAssetString,
                ),
                description:
                    'Your Teleconsult with Dr Tibu for 11am has been set. Click this link to join ',
                date: 'July 12 2021',
                actions: <NotificationActions>[
                  NotificationActions(
                    icon: IconDetails(
                      iconUrlSvgPath: testAssetString,
                    ),
                    name: 'Add to Calendar',
                    route: '',
                  )
                ],
              ),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);

      await tester.pumpAndSettle();

      // verify Notification List Item renders correctly
      expect(find.byType(NotificationListItem), findsOneWidget);

      expect(find.text('Add to Calendar'), findsOneWidget);
    });
  });
}

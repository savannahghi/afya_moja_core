// Project imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
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
                notificationDetails:
                    NotificationDetails.fromJson(<String, dynamic>{
                  'id': 'some-id',
                  'title': 'Teleconsult with Dr Tibu for 11am has been set.',
                  'type': 'APPOINTMENT',
                  'body':
                      'Your Teleconsult with Dr Tibu for 11am has been set. Click this link to join ',
                  'isRead': false,
                  'createdAt': '2022-05-09T07:00:20Z',
                  'actions': <dynamic>[],
                  'status': 'Missed'
                }),
                notificationInfo:
                    NotificationActionInfo(actionTitle: '', route: ''),
              ),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);

      await tester.pumpAndSettle();

      // verify Notification List Item renders correctly
      expect(find.byType(NotificationListItem), findsOneWidget);

      expect(find.text('Calendar'), findsNothing);
    });

    testWidgets('should render NotificationListItem with calendar',
        (WidgetTester tester) async {
      final Widget testWidget = MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return Scaffold(
              body: NotificationListItem(
                notificationDetails: NotificationDetails(
                  title: 'Teleconsult with Dr Tibu for 11am has been set.',
                  id: 'some-id',
                  type: NotificationType.APPOINTMENT,
                  body:
                      'Your Teleconsult with Dr Tibu for 11am has been set. Click this link to join ',
                  isRead: false,
                  createdAt: '2022-05-09T07:00:20Z',
                  status: 'Missed',
                  actions: <NotificationActions>[
                    NotificationActions(
                      name: 'Calendar',
                      icon: IconDetails(iconUrlSvgPath: testAssetString),
                      route: '',
                    )
                  ],
                ),
                notificationInfo:
                    NotificationActionInfo(actionTitle: 'Calendar', route: '/'),
              ),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);

      await tester.pumpAndSettle();

      // verify Notification List Item renders correctly
      expect(find.byType(NotificationListItem), findsOneWidget);

      expect(find.text('Calendar'), findsOneWidget);

      await tester.tap(find.byKey(notificationItemActionKey));
      await tester.pumpAndSettle();

      expect(find.byType(NotificationListItem), findsOneWidget);
    });
  });
}

import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/notification_utils.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications_platform_interface/flutter_local_notifications_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'notification_utils_test.mocks.dart';

import '../mocks/mocks.dart';

@GenerateMocks(<Type>[StreamChatClient])
void main() {
  testWidgets('headsUpNotification renders correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      OverlaySupport(
        child: MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (BuildContext context) {
                return Center(
                  child: MaterialButton(
                    onPressed: () =>
                        headsUpNotification('testTitle', 'testBody'),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    final Finder button = find.byType(MaterialButton);
    await tester.tap(button);
    await tester.pump(const Duration(seconds: 4));

    expect(find.text('testTitle'), findsOneWidget);
  });

  group('handleNotifications', () {
    testWidgets('works correctly', (WidgetTester tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.android;

      const MethodChannel('dexterous.com/flutter/local_notifications')
          .setMockMethodCallHandler((MethodCall call) {
        if (call.method == 'initialize') {
          return Future<bool>.value(true);
        }

        return null;
      });

      final MockFlutterLocalNotificationsPlugin mock =
          MockFlutterLocalNotificationsPlugin();

      FlutterLocalNotificationsPlatform.instance = mock;

      final MockStreamChatClient mockStreamChatClient = MockStreamChatClient();
      when(mockStreamChatClient.getMessage(any)).thenAnswer(
        (_) => Future<GetMessageResponse>.value(
          GetMessageResponse.fromJson(<String, dynamic>{
            'channel': <String, dynamic>{
              'id': 'channel_id',
              'type': 'messaging',
              'extraData': <String, dynamic>{'Name': 'test group'},
            },
            'message': <String, dynamic>{
              'id': 'test',
              'text': 'test',
              'user': <String, dynamic>{'id': 'test', 'name': 'test user'}
            }
          }),
        ),
      );
      await tester.pumpWidget(
        OverlaySupport(
          child: MaterialApp(
            home: Scaffold(
              body: Builder(
                builder: (BuildContext context) {
                  return Center(
                    child: MaterialButton(
                      onPressed: () => handleNotification(
                        RemoteMessage.fromMap(<String, dynamic>{
                          'data': <String, dynamic>{
                            'id': 'test',
                            'type': 'message.new'
                          }
                        }),
                        mockStreamChatClient,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      final Finder button = find.byType(MaterialButton);
      await tester.tap(button);
      await tester.pump(const Duration(seconds: 4));

      verify(mockStreamChatClient.getMessage('test')).called(1);

      debugDefaultTargetPlatformOverride = null;
    });
    testWidgets('works correctly for other notifications',
        (WidgetTester tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.android;

      const MethodChannel('dexterous.com/flutter/local_notifications')
          .setMockMethodCallHandler((MethodCall call) {
        if (call.method == 'initialize') {
          return Future<bool>.value(true);
        }

        return null;
      });

      final MockFlutterLocalNotificationsPlugin mock =
          MockFlutterLocalNotificationsPlugin();

      FlutterLocalNotificationsPlatform.instance = mock;

      final MockStreamChatClient mockStreamChatClient = MockStreamChatClient();
      when(mockStreamChatClient.getMessage(any)).thenAnswer(
        (_) => Future<GetMessageResponse>.value(
          GetMessageResponse.fromJson(<String, dynamic>{
            'channel': <String, dynamic>{
              'id': 'channel_id',
            },
            'message': <String, dynamic>{
              'id': 'test',
              'text': 'test',
              'user': <String, dynamic>{'id': 'test', 'name': 'test user'}
            }
          }),
        ),
      );
      await tester.pumpWidget(
        OverlaySupport(
          child: MaterialApp(
            home: Scaffold(
              body: Builder(
                builder: (BuildContext context) {
                  return Center(
                    child: MaterialButton(
                      onPressed: () => handleNotification(
                        RemoteMessage.fromMap(<String, dynamic>{
                          'data': <String, dynamic>{
                            'id': 'test',
                            'type': '',
                          },
                          'notification': <String, dynamic>{
                            'title': 'testTitle',
                            'body': 'testBody',
                          }
                        }),
                        mockStreamChatClient,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      final Finder button = find.byType(MaterialButton);
      await tester.tap(button);
      await tester.pump(const Duration(seconds: 4));

      expect(find.text('testTitle'), findsOneWidget);

      debugDefaultTargetPlatformOverride = null;
    });

    testWidgets('works correctly when notification details is not provided',
        (WidgetTester tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.android;

      const MethodChannel('dexterous.com/flutter/local_notifications')
          .setMockMethodCallHandler((MethodCall call) {
        if (call.method == 'initialize') {
          return Future<bool>.value(true);
        }

        return null;
      });

      final MockFlutterLocalNotificationsPlugin mock =
          MockFlutterLocalNotificationsPlugin();

      FlutterLocalNotificationsPlatform.instance = mock;

      final MockStreamChatClient mockStreamChatClient = MockStreamChatClient();
      when(mockStreamChatClient.getMessage(any)).thenAnswer(
        (_) => Future<GetMessageResponse>.value(
          GetMessageResponse.fromJson(<String, dynamic>{
            'channel': <String, dynamic>{
              'id': 'channel_id',
            },
            'message': <String, dynamic>{
              'id': 'test',
              'text': 'test',
              'user': <String, dynamic>{'id': 'test', 'name': 'test user'}
            }
          }),
        ),
      );
      await tester.pumpWidget(
        OverlaySupport(
          child: MaterialApp(
            home: Scaffold(
              body: Builder(
                builder: (BuildContext context) {
                  return Center(
                    child: MaterialButton(
                      onPressed: () => handleNotification(
                        RemoteMessage.fromMap(<String, dynamic>{
                          'data': <String, dynamic>{
                            'id': 'test',
                            'type': '',
                          },
                          'notification': <String, dynamic>{}
                        }),
                        mockStreamChatClient,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      final Finder button = find.byType(MaterialButton);
      await tester.tap(button);
      await tester.pump(const Duration(seconds: 4));

      expect(find.text(newNotificationTitleString), findsOneWidget);
      expect(find.text(newNotificationMessageString), findsOneWidget);

      debugDefaultTargetPlatformOverride = null;
    });
  });

  group('backgroundMessageHandler', () {
    setupFirebaseMessagingMocks();

    testWidgets('works correctly', (WidgetTester tester) async {
      final Map<String, Object> values = <String, Object>{
        'streamToken': 'test-stream-token',
        'clientId': 'test-client-id',
      };
      SharedPreferences.setMockInitialValues(values);

      final MockStreamChatClient mockStreamChatClient = MockStreamChatClient();
      when(
        mockStreamChatClient.connectUser(
          User(id: 'test-client-id'),
          'test-stream-token',
          connectWebSocket: false,
        ),
      ).thenAnswer((_) {
        return Future<OwnUser>.value(
          OwnUser.fromJson(const <String, dynamic>{
            'id': 'test',
            'name': 'test user',
            'avatar': 'test',
            'extraData': <String, dynamic>{}
          }),
        );
      });

      when(mockStreamChatClient.getMessage(any)).thenAnswer(
        (_) => Future<GetMessageResponse>.value(
          GetMessageResponse.fromJson(<String, dynamic>{
            'channel': <String, dynamic>{
              'id': 'channel_id',
              'type': 'messaging',
              'extraData': <String, dynamic>{'Name': 'test group'},
            },
            'message': <String, dynamic>{
              'id': 'test',
              'text': 'test',
              'user': <String, dynamic>{'id': 'test', 'name': 'test user'}
            }
          }),
        ),
      );

      await tester.pumpWidget(
        OverlaySupport(
          child: MaterialApp(
            home: Scaffold(
              body: Builder(
                builder: (BuildContext context) {
                  return Center(
                    child: MaterialButton(
                      onPressed: () => backgroundMessageHandler(
                        RemoteMessage.fromMap(<String, dynamic>{
                          'data': <String, dynamic>{
                            'id': 'test',
                            'type': 'message.new'
                          }
                        }),
                        testChatClient: mockStreamChatClient,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      final Finder button = find.byType(MaterialButton);
      await tester.tap(button);
      await tester.pump(const Duration(seconds: 4));

      verify(
        mockStreamChatClient.connectUser(
          User(id: 'test-client-id'),
          'test-stream-token',
          connectWebSocket: false,
        ),
      ).called(1);
    });
  });
}

import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/helpers.dart';
import 'package:afya_moja_core/src/presentation/inputs.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications_platform_interface/flutter_local_notifications_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart' as stream;
import 'helpers_test.mocks.dart';

import '../mocks/mocks.dart';

@GenerateMocks(<Type>[stream.StreamChatClient])
void main() {
  String testString = 'test';
  testWidgets('PINInputField should render correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PINInputField(
            maxLength: null,
            onDone: (String val) => testString = val,
            onTextChanged: (String val) {},
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.showKeyboard(find.byType(PINInputField));
    await tester.enterText(find.byType(PINInputField), '123456');

    await tester.pumpAndSettle();

    final Finder pinCodeTextField = find.byType(PinCodeTextField);
    expect(pinCodeTextField, findsOneWidget);
    expect(testString, '123456');
  });

  testWidgets('headsUpNotification renders correctly', (WidgetTester tester) async {
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
        (_) => Future<stream.GetMessageResponse>.value(
          stream.GetMessageResponse.fromJson(<String, dynamic>{
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
        (_) => Future<stream.GetMessageResponse>.value(
          stream.GetMessageResponse.fromJson(<String, dynamic>{
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
        (_) => Future<stream.GetMessageResponse>.value(
          stream.GetMessageResponse.fromJson(<String, dynamic>{
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

      expect(find.text(newNotificationTitleString), findsOneWidget);
      expect(find.text(newNotificationMessageString), findsOneWidget);

      debugDefaultTargetPlatformOverride = null;
    });

  });

}

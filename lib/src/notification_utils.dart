import 'package:afya_moja_core/src/app_asset_strings.dart';
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/presentation/colors.dart';
import 'package:afya_moja_core/src/presentation/text_themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

OverlaySupportEntry headsUpNotification(String? title, String? body) {
  return showOverlayNotification(
    (BuildContext context) {
      return SafeArea(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: <Widget>[
              Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(10.0),
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: SvgPicture.asset(
                  notificationIcon,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Expanded(
                child: DefaultTextStyle(
                  style: normalSize13Text(greyTextColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title ?? '',
                        style: boldSize15Text(blackColor),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text(
                        body ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
    duration: const Duration(seconds: 5),
  );
}

Future<void> handleNotification(
  RemoteMessage message,
  StreamChatClient chatClient,
) async {
  final Map<String, dynamic> data = message.data;
  final FlutterLocalNotificationsPlugin
      flutterLocalNotificationsPlugin = await setupLocalNotifications();
  const NotificationDetails notificationDetails =
      NotificationDetails(
    android: AndroidNotificationDetails(
      'new_message',
      'New message notifications channel',
    ),
  );

  if (data['type'] == 'message.new') {
    final String messageId = data['id'] as String;
    final GetMessageResponse response =
        await chatClient.getMessage(messageId);

    final String? channelName = response.channel?.extraData['Name'] as String?;

    flutterLocalNotificationsPlugin.show(
      1,
      newChatMessageTitle(
        response.message.user?.name,
        channelName,
      ),
      response.message.text,
      notificationDetails,
    );
    headsUpNotification(
      newChatMessageTitle(
        response.message.user?.name,
        channelName,
      ),
      response.message.text,
    );
  } else {
    final RemoteNotification? notification = message.notification;
    if (notification != null) {
      flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification.title ?? newNotificationTitleString,
        notification.body ?? newNotificationMessageString,
        notificationDetails,
      );
      headsUpNotification(
        notification.title ?? newNotificationTitleString,
        notification.body ?? newNotificationMessageString,
      );
    }
  }
}

String newChatMessageTitle(String? username, String? channelName) {
  String baseMessage = 'New message';

  if (username != null) {
    baseMessage = '$baseMessage from $username';
  }

  if (channelName != null) {
    baseMessage = '$baseMessage in $channelName';
  }

  return baseMessage;
}

Future<FlutterLocalNotificationsPlugin> setupLocalNotifications() async {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  const IOSInitializationSettings initializationSettingsIOS =
      IOSInitializationSettings();

  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('app_icon');

  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsIOS,
  );
  await flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
  );

  return flutterLocalNotificationsPlugin;
}

Future<void> backgroundMessageHandler(
  RemoteMessage message, {
  @visibleForTesting StreamChatClient? testChatClient,
}) async {
  await Firebase.initializeApp();

  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final String streamToken = prefs.getString('streamToken') ?? '';
  final String clientId = prefs.getString('clientId') ?? '';
  final String streamAPIKey = prefs.getString('streamApiKey') ?? '';

  late StreamChatClient streamClient;

  if (testChatClient != null) {
    streamClient = testChatClient;
  } else {
    streamClient = StreamChatClient(
      streamAPIKey,
      logLevel: Level.ALL,
    );
  }

  streamClient.connectUser(
    User(id: clientId),
    streamToken,
    connectWebSocket: false,
  );

  handleNotification(message, streamClient);
}

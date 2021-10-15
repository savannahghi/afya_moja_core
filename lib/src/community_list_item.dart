// Flutter imports:
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:shared_themes/text_themes.dart';
import 'package:unicons/unicons.dart';

// Project imports:

/// List items used within the coummunity page to show incoming messages.
class CommunityListItem extends StatelessWidget {
  /// [CommunityListItem] is used within the [CommunityPage] to show incoming messages.
  ///
  /// [title], [message], [avatarImage] and [lastMessageDate] are all required.
  ///
  /// [isGroupMessage] is used to determine whether the message belongs to a group.
  ///
  /// If [unreadNotificationCount] is provided, it must be an integer greater
  /// than or equal to zero.
  const CommunityListItem({
    bool? isGroupMessage,
    this.unreadNotificationCount,
    this.avatarImage,
    this.onTap,
    this.textColor,
    required this.title,
    required this.message,
    required this.lastMessageDate,
  })  : isGroupMessage = isGroupMessage ?? false,
        assert(unreadNotificationCount == null || unreadNotificationCount >= 0);

  final int? unreadNotificationCount;
  final String title;
  final bool isGroupMessage;
  final String message;
  final ImageProvider? avatarImage;
  final String lastMessageDate;
  final VoidCallback? onTap;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final bool hasUnreadNotifications =
        unreadNotificationCount != null && unreadNotificationCount! > 0;

    CircleAvatar circleAvatar;
    if (avatarImage != null) {
      circleAvatar = CircleAvatar(
        backgroundImage: avatarImage,
        radius: 30,
      );
    } else {
      circleAvatar = CircleAvatar(
        radius: 30,
        backgroundColor: Colors.grey,
        child: Icon(
          UniconsLine.user_square,
          color: Colors.grey.shade300,
          size: 30,
        ),
      );
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: hasUnreadNotifications ? Colors.grey.shade200 : null,
        padding:
            const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 16),
        child: Row(
          children: <Widget>[
            // pic
            Expanded(
              child: circleAvatar,
            ),

            const SizedBox(width: 10),

            Expanded(
              flex: 4,
              child: Column(
                children: <Widget>[
                  // group and date
                  Row(
                    mainAxisAlignment: isGroupMessage
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.end,
                    children: <Widget>[
                      if (isGroupMessage)
                        Text(
                          groupText,
                          style: TextThemes.normalSize10Text(
                            textColor ?? Colors.grey.shade600,
                          ),
                        ),
                      Text(
                        lastMessageDate,
                        style: TextThemes.normalSize10Text(
                          textColor ?? Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // Chat title
                          Text(
                            title,
                            style: TextThemes.boldSize14Text(
                              Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          const SizedBox(height: 4),
                          // message
                          Text(
                            message,
                            style: TextThemes.normalSize10Text(
                              Colors.grey.shade600,
                            ),
                          )
                        ],
                      ),

                      // Notification count
                      if (hasUnreadNotifications)
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: CircleAvatar(
                            backgroundColor:
                                Theme.of(context).colorScheme.secondary,
                            radius: 15,
                            child: Text(
                              '$unreadNotificationCount',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Flutter imports:
import 'package:afya_moja_core/src/community_chat_widgets/awaiting_moderation_widget.dart';
import 'package:afya_moja_core/src/text_themes.dart';
import 'package:flutter/material.dart';
// Package imports:
import 'package:misc_utilities/number_constants.dart';
import 'package:shared_themes/spaces.dart';

// Project imports:

import '../../colors.dart';
import 'quoted_message_widget.dart';

/// [SentMessageItem] used within the community chat screen to show sent messages.
class SentMessageItem extends StatelessWidget {
  /// [SentMessageItem] used within the community chat screen to show sent messages.
  ///
  /// [message] and [time] are all required.
  ///
  /// [senderType] shows whether user is i.e. Moderator or Doctor.
  ///
  /// [isAwaitingModeratio] used to show whether sent message is awaiting moderation.
  ///
  /// [highlightedMessage] adds a highlighted message.
  ///
  const SentMessageItem({
    required this.message,
    required this.time,
    this.isAwaitingModeration = false,
    this.highlightedMessage,
  });

  final String message;
  final String time;
  final bool isAwaitingModeration;
  final QuotedMessageWidget? highlightedMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: number50),
      child: Column(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                topRight: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0),
              ),
              color: userDetailsCardBackgroundColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: <Widget>[
                  highlightedMessage ?? smallVerticalSizedBox,
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      message,
                      style: normalSize12Text().copyWith(color: whiteColor),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      time,
                      style:
                          normalSize10Text().copyWith(color: userInitialsColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isAwaitingModeration) const AwaitingModerationWidget(),
        ],
      ),
    );
  }
}

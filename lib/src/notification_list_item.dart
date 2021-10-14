// Project imports:
import 'package:afya_moja_core/domain/core/entities/icon_details.dart';
import 'package:afya_moja_core/domain/core/entities/notification_actions.dart';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/svg.dart';
import 'package:shared_themes/spaces.dart';
import 'package:shared_themes/text_themes.dart';

/// [NotificationListItem] Displays the notifications with Icons and
/// a short description
class NotificationListItem extends StatelessWidget {
  /// [NotificationListItem] Displays the notifications with Icons and
  /// a short description
  const NotificationListItem({
    required this.icon,
    required this.description,
    required this.date,
    this.actions,
    this.status,
  });

  final List<NotificationActions>? actions;
  final String date;
  final String description;
  final IconDetails icon;
  final String? status;

  @override
  Widget build(BuildContext context) {
    final String iconString = icon.iconUrlSvgPath;
    const Color warningColor = Color(0xFFE09B2D);

    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 70,
            height: 70,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Center(
              child: SvgPicture.asset(
                iconString,
                width: 30,
                height: 30,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          mediumHorizontalSizedBox,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                if (status != null && status!.isNotEmpty)
                  Transform(
                    transform: Matrix4.identity()..scale(0.8),
                    child: Chip(
                      backgroundColor: warningColor.withOpacity(0.2),
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      label: SizedBox(
                        width: 70,
                        child: Center(
                          child: Text(
                            status!,
                            style: TextThemes.normalSize12Text(
                              warningColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                // verySmallVerticalSizedBox,
                Text(
                  description,
                  style: TextThemes.normalSize14Text(
                    Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  date,
                  style: TextThemes.normalSize12Text(Colors.grey),
                ),
                const SizedBox(height: 5),
                if (actions != null && actions!.isNotEmpty)
                  IntrinsicWidth(
                    child: Row(
                      children: actions!
                          .map(
                            (NotificationActions notificationActions) =>
                                Expanded(
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                width: 120,
                                height: 27.5,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(7),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Row(
                                    children: <Widget>[
                                      SvgPicture.asset(
                                        notificationActions.icon.iconUrlSvgPath,
                                        width: 15,
                                        height: 15,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                      ),
                                      smallHorizontalSizedBox,
                                      Expanded(
                                        child: Text(
                                          notificationActions.name,
                                          style: TextThemes.normalSize11Text(
                                            Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}

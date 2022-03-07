// Project imports:
import 'package:afya_moja_core/src/presentation/text_themes.dart';
// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_svg/svg.dart';
import 'package:shared_themes/spaces.dart';

import '../../afya_moja_core.dart';

/// [NotificationListItem] Displays the notifications with Icons and
/// a short description
class NotificationListItem extends StatelessWidget {
  /// [NotificationListItem] Displays the notifications with Icons and
  /// a short description
  const NotificationListItem({
    required this.icon,
    required this.description,
    required this.date,
    this.descriptionColor,
    this.actions,
    this.status,
  });

  final List<NotificationActions>? actions;
  final String date;
  final String description;
  final Color? descriptionColor;
  final IconDetails icon;
  final String? status;

  @override
  Widget build(BuildContext context) {
    final String iconString = icon.iconUrlSvgPath;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // The leading icon
        Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: SvgPicture.asset(
            iconString,
            height: 18,
            width: 18,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        smallHorizontalSizedBox,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 6),
              // The status indicator badge
              if (status != null && status!.isNotEmpty)
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                  margin: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    status!,
                    style: boldSize12Text(Colors.red),
                  ),
                ),
              Text(
                description,
                style: normalSize12Text(
                  descriptionColor ?? Theme.of(context).colorScheme.secondary,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                date,
                style: normalSize12Text(Colors.grey),
              ),
              const SizedBox(height: 10),
              if (actions != null && actions!.isNotEmpty)
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: actions!
                      .map(
                        (NotificationActions notificationActions) => Container(
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: <Widget>[
                                SvgPicture.asset(
                                  notificationActions.icon.iconUrlSvgPath,
                                  width: 15,
                                  height: 15,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                                smallHorizontalSizedBox,
                                Text(
                                  notificationActions.name,
                                  style: normalSize11Text(
                                    Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                      .toList(),
                )
            ],
          ),
        )
      ],
    );
  }
}

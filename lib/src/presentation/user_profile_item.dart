// Project imports:
// Flutter imports:
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_svg/svg.dart';

import '../../afya_moja_core.dart';

/// [UserProfileItem] Displays the user profile item with Icons and
/// a title
class UserProfileItem extends StatelessWidget {
  /// [UserProfileItem] Displays the user profile item with Icons and
  /// a title
  const UserProfileItem({
    required this.iconPath,
    required this.title,
    required this.routeName,
    this.itemBackgroundColor,
  });

  final String iconPath;
  final String title;
  final String routeName;
  final Color? itemBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: GestureDetector(
        onTap: () {
          if (routeName.isNotEmpty) {
            Navigator.pushNamed(context, routeName);
          }
        },
        child: InformationListCard(
          title: Text(
            title,
            maxLines: 2,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          iconBackgroundColor:
              itemBackgroundColor ?? Theme.of(context).colorScheme.background,
          leadingIcon: Container(
            width: 25,
            decoration: BoxDecoration(
              color: itemBackgroundColor ??
                  Theme.of(context).colorScheme.background,
              borderRadius: BorderRadius.circular(8),
            ),
            child: SvgPicture.asset(
              iconPath,
              width: 20,
              height: 20,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ),
    );
  }
}

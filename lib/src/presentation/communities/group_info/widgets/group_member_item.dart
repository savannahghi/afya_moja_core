import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:flutter/material.dart';

class GroupMemberItem extends StatelessWidget {
  const GroupMemberItem({
    required this.userName,
    required this.memberID,
    required this.communityId,
    required this.communityName,
    required this.userType,
    this.isModerator = false,
    this.canModerate = false,
    this.isBanned = false,
    this.itemKey,
    this.onTap,
    this.onLongPress,
  });

  final String userName;
  final String memberID;
  final String communityId;
  final String communityName;
  final String userType;
  final bool isModerator;
  final bool canModerate;
  final bool isBanned;
  final Key? itemKey;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: itemKey,
      onTap: onTap,
      onLongPress: onLongPress,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 38,
                  width: 38,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: galleryColor,
                  ),
                  child: Center(
                    child: Text(
                      userName.isNotEmpty
                          ? userName.trim()[0].toUpperCase()
                          : 'U',
                      style: boldSize14Text(Theme.of(context).primaryColor),
                    ),
                  ),
                ),
                size15HorizontalSizedBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      userName.isNotEmpty ? userName : UNKNOWN,
                      style: boldSize14Text(
                        isBanned ? lightGrey.withOpacity(0.6) : null,
                      ),
                    ),
                    if (userType == 'STAFF')
                      Text(
                        staffMemberText,
                        style: boldSize12Text().copyWith(
                          color: greyTextColor.withOpacity(0.6),
                          fontSize: 10,
                        ),
                      ),
                  ],
                ),
              ],
            ),
            if (isModerator)
              const GroupMemberBadge(
                text: moderatorText,
                color: greenHappyColor,
              )
            else if (isBanned)
              const GroupMemberBadge(
                text: bannedString,
                color: warningColor,
              )
          ],
        ),
      ),
    );
  }
}

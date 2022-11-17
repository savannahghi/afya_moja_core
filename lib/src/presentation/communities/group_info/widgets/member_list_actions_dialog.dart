import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';

class MemberListActionsDialog extends StatelessWidget {
  const MemberListActionsDialog({
    required this.memberID,
    required this.communityId,
    required this.communityName,
    required this.memberName,
    this.isBanned = false,
    this.isModerator = false,
    this.isPromoting = false,
    this.isBanning = false,
    this.isRemoving = false,
    this.onPromoteTapped,
    this.onBanTapped,
    this.onRemoveTapped,
  });

  final String memberID;
  final String communityId;
  final String communityName;
  final String memberName;
  final bool isBanned;
  final bool isModerator;
  final bool isPromoting;
  final bool isBanning;
  final bool isRemoving;
  final VoidCallback? onPromoteTapped;
  final VoidCallback? onBanTapped;
  final VoidCallback? onRemoveTapped;

  @override
  Widget build(BuildContext context) {
    Widget promotionButton;
    Widget banButton;
    Widget removeButton;

    if (isPromoting) {
      promotionButton = const PlatformLoader();
    } else {
      promotionButton = OutlinedButton(
        onPressed: onPromoteTapped,
        key: promoteButtonKey,
        style: OutlinedButton.styleFrom(
          foregroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
            side: BorderSide(
              color: Theme.of(context).primaryColor.withOpacity(0.3),
            ),
          ),
        ),
        child: Text(
          isModerator ? demoteUserText : promoteToModeratorText,
          style: const TextStyle(color: blackColor, fontSize: 14),
        ),
      );
    }

    if (isBanning) {
      banButton = const PlatformLoader();
    } else {
      banButton = MyAfyaHubPrimaryButton(
        onPressed: onBanTapped,
        buttonKey: banButtonKey,
        text: isBanned ? unBanUserText : banUserText,
        buttonColor: lightRedColor.withOpacity(0.6),
        textColor: blackColor,
        borderColor: lightRedColor.withOpacity(0.9),
        textStyle: boldSize14Text(bannedColor),
      );
    }

    if (isRemoving) {
      removeButton = const PlatformLoader();
    } else {
      removeButton = MyAfyaHubPrimaryButton(
        buttonColor: lightRedColor.withOpacity(0.6),
        borderColor: lightRedColor.withOpacity(0.9),
        buttonKey: removeButtonKey,
        text: removeFromGroupText,
        textStyle: boldSize14Text(redColor),
        onPressed: onRemoveTapped,
      );
    }

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 1,
      backgroundColor: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              actionsText,
              style: boldSize20Text(blackColor),
            ),
            smallVerticalSizedBox,
            if (onPromoteTapped != null)
              SizedBox(
                width: double.infinity,
                height: 48,
                child: promotionButton,
              ),
            smallVerticalSizedBox,
            SizedBox(
              width: double.infinity,
              height: 48,
              child: banButton,
            ),
            smallVerticalSizedBox,
            SizedBox(
              width: double.infinity,
              height: 48,
              child: removeButton,
            ),
          ],
        ),
      ),
    );
  }
}

// Flutter imports:
// Project imports:
import 'package:afya_moja_core/src/app_asset_strings.dart';
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/colors.dart';
import 'package:afya_moja_core/src/text_themes.dart';
import 'package:flutter/material.dart';
// Package imports:
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_themes/spaces.dart';

/// [AwaitingModerationWidget] used within [SentMessageItem] to show messages awaiting moderation.
class AwaitingModerationWidget extends StatelessWidget {
  /// [AwaitingModerationWidget] used within [SentMessageItem] to show messages awaiting moderation.
  ///
  const AwaitingModerationWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text(
          awaitingModerationString,
          style: normalSize12Text().copyWith(color: darkGreyTextColor),
        ),
        verySmallHorizontalSizedBox,
        SvgPicture.asset(
          awaitingModerationIcon,
          color: darkGreyTextColor,
          width: 18,
          height: 18,
        ),
      ],
    );
  }
}

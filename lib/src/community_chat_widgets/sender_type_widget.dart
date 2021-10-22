// Flutter imports:
import 'package:afya_moja_core/colors.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:shared_themes/spaces.dart';
import 'package:shared_themes/text_themes.dart';

// Project imports:

class SenderTypeWidget extends StatelessWidget {
  /// [SenderTypeWidget] used within [ReceivedMessageItem] to the type of sender
  ///  i.e. moderator or doctor.
  ///
  /// [senderTitle] and [senderIcon] are all required.
  ///
  const SenderTypeWidget({
    required this.senderTitle,
    required this.senderIcon,
  });

  final String senderTitle;
  final String senderIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Image.network(
          senderIcon,
          color: whiteColor,
          width: 16,
          height: 16,
        ),
        verySmallHorizontalSizedBox,
        Text(
          senderTitle,
          style: TextThemes.normalSize10Text().copyWith(color: whiteColor),
        ),
      ],
    );
  }
}

// Flutter imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:shared_themes/spaces.dart';

class LoginErrorWidget extends StatelessWidget {
  const LoginErrorWidget({
    required this.message,
    this.spannedText,
    required this.title,
  });

  final String? spannedText;
  final String message;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: errorAlertBoxKey,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: const BoxDecoration(
        color: lightRedColor,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: heavySize16Text(redColor),
          ),
          smallVerticalSizedBox,
          RichText(
            key: errorAlertBoxTextKey,
            text: TextSpan(
              style: normalSize14Text(
                darkGreyTextColor,
              ),
              children: <TextSpan>[
                TextSpan(text: message),
                if (spannedText != null)
                  TextSpan(
                    text: spannedText,
                    style: heavySize14Text(
                      darkGreyTextColor,
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

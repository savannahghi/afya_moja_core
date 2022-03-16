import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:shared_themes/spaces.dart';

class LoginErrorWidget extends StatelessWidget {
  const LoginErrorWidget({
    required this.message,
    required this.title,
    this.actionCallback,
    this.actionText,
    this.actionKey,
  });

  final String message;
  final String title;
  final VoidCallback? actionCallback;
  final String? actionText;
  final Key? actionKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: errorAlertBoxKey,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(
        color: redColor.withOpacity(0.3),
        borderRadius: const BorderRadius.all(Radius.circular(4)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: heavySize16Text(redColor),
          ),
          smallVerticalSizedBox,
          Text(
            message,
            style: normalSize14Text(
              darkGreyTextColor,
            ),
          ),
          if (actionText != null)
            SizedBox(
              width: double.infinity,
              child: MyAfyaHubPrimaryButton(
                buttonKey: actionKey,
                text: actionText,
                textColor: Theme.of(context).primaryColor,
                buttonColor: Theme.of(context).primaryColor.withOpacity(0.3),
                onPressed: () => actionCallback?.call(),
              ),
            ),
        ],
      ),
    );
  }
}

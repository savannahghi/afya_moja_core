import 'package:afya_moja_core/src/presentation/buttons.dart';
import 'package:afya_moja_core/src/presentation/colors.dart';
import 'package:afya_moja_core/src/presentation/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_themes/spaces.dart';

class PINRequestScaffold extends StatelessWidget {
  final String title;
  final String? message;
  final String? actionText;
  final Key? actionKey;
  final VoidCallback? actionCallback;
  final String iconSvgPath;

  const PINRequestScaffold({
    required this.title,
    this.message,
    this.actionText,
    this.actionKey,
    this.actionCallback,
    required this.iconSvgPath,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              veryLargeVerticalSizedBox,
              SvgPicture.asset(
                iconSvgPath,
              ),
              largeVerticalSizedBox,
              Text(
                title,
                style: heavySize20Text(),
                textAlign: TextAlign.center,
              ),
              smallVerticalSizedBox,
              Text(
                message ?? '',
                style: normalSize14Text(
                  darkGreyTextColor,
                ),
                textAlign: TextAlign.center,
              ),
              mediumVerticalSizedBox,
              if (actionText != null)
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: MyAfyaHubPrimaryButton(
                    buttonKey: actionKey,
                    text: actionText,
                    onPressed: () {
                      actionCallback?.call();
                    },
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}

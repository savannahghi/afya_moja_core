import 'package:afya_moja_core/src/app_asset_strings.dart';
import 'package:afya_moja_core/src/helpers.dart';
import 'package:afya_moja_core/src/presentation/text_themes.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_themes/spaces.dart';
import 'package:shared_ui_components/buttons.dart';

/// [GenericTimeoutWidget] is called when a timeout has occurred when fetching data from the
/// API. It's purpose is to communicate a specific message, the server could not return a response in time
class GenericTimeoutWidget extends StatelessWidget {
  const GenericTimeoutWidget({
    Key? key,
    this.route,
    this.payload,
    required this.action,
    this.recoverCallback,
    this.recoverActionText,
    required this.buttonColor,
  }) : super(key: key);

  final String action;
  final Map<String, dynamic>? payload;
  final String? recoverActionText;

  /// [recoverCallback] action to undertake to recover from the error
  final Function? recoverCallback;

  /// [route] the route to go back to when recovering from the timeout. This should be
  /// provided if [recoverCallback] is not provided otherwise an exception will be
  /// thrown
  final String? route;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        key: genericListViewKey,
        shrinkWrap: true,
        children: <Widget>[
          SvgPicture.asset(noDataImgUrl),
          smallVerticalSizedBox,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              getErrorMessage(action),
              textAlign: TextAlign.center,
              style: normalSize14Text(Colors.black),
            ),
          ),
          smallVerticalSizedBox,
          SILPrimaryButton(
            buttonKey: genericRetryButtonKey,
            buttonColor: buttonColor,
            onPressed: recoverCallback != null
                ? recoverCallback as void Function()?
                : route != null
                    ? () async {
                        await Navigator.pushNamed(
                          context,
                          route!,
                          arguments: payload,
                        );
                      }
                    : () {},
            text: recoverActionText ?? 'Retry',
          ),
        ],
      ),
    );
  }
}

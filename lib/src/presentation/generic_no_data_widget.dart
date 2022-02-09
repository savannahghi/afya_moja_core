import 'package:afya_moja_core/src/app_asset_strings.dart';
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/presentation/colors.dart';
import 'package:afya_moja_core/src/presentation/text_themes.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_themes/spaces.dart';
import 'package:shared_ui_components/buttons.dart';

enum GenericNoDataTypes { absentData, errorInData }

/// [GenericNoData] is a generic used to purposefully communicate that
/// the value of the data received from the API was [null] or it missed
/// key properties that are of a valid response.
/// Because of it;s generic natures, this widget handles the following types
/// of error defined under [GenericNoDataTypes] enum
///
/// - AbsentData -> no data completely
/// - ErrorInData -> there was an error in the received data or the API returned with an error attribute
///
/// When the errorType is of type [ErrorInData] a specific illustration will be shown in place of the default
/// one.
///
/// Always, a [recoverCallback] can be defined to offset the user a way out
class GenericNoData extends StatelessWidget {
  const GenericNoData({
    Key? key,
    required this.recoverCallback,
    this.messageTitle,
    this.messageBody,
    this.type,
    this.height,
    this.actionText,
    this.align,
  }) : super(key: key);

  /// [actionText]
  final String? actionText;

  /// [align] where the error widget should align
  final MainAxisAlignment? align;

  /// [height] of the container
  final double? height;

  /// [messageTitle] to show in the body, in place of the default one
  final String? messageBody;

  /// [messageTitle] to show on the title, in place of the default one
  final String? messageTitle;

  /// [recoverCallback] the function to be called to recover from the error. Default to [null]
  final Function recoverCallback;

  /// [type] the type of error. Defaults to [AbsentData]
  final GenericNoDataTypes? type;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: align ?? MainAxisAlignment.center,
              children: <Widget>[
                largeVerticalSizedBox,
                SvgPicture.asset(
                errorPageImage,
                  height: MediaQuery.of(context).size.height / 3,
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: messageTitle ?? genericErrorOccurred,
                              style: veryBoldSize20Text(),
                            ),
                            const TextSpan(text: '\n\n'),
                            TextSpan(
                              text: this.messageBody ?? genericTryAgain,
                              style: normalSize16Text(
                                greyTextColor,
                              ),
                            )
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      mediumVerticalSizedBox,
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: SILPrimaryButton(
                          buttonKey: genericNoDataButtonKey,
                          buttonColor: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          onPressed: this.recoverCallback as void Function()?,
                          text: actionText ?? genericVerifyPhoneNumber,
                        ),
                      ),
                      largeVerticalSizedBox,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Flutter imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/app_asset_strings.dart';
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_themes/spaces.dart';

enum GenericNoDataTypes { noData, error }

/// [GenericErrorWidget] is a generic used to purposefully communicate that
/// the value of the data received from the API was [null] or it missed
/// key properties that are of a valid response.
/// Because of it;s generic natures, this widget handles the following types
/// of error defined under [GenericNoDataTypes] enum
///
/// - AbsentData -> no data completely
/// - ErrorInData -> there was an error in the received data or the API
/// returned with an error attribute
///
/// When the errorType is of type [ErrorInData] a specific illustration will
/// be shown in place of the default one.
///
/// Always, a [recoverCallback] can be defined to offset the user a way out
class GenericErrorWidget extends StatelessWidget {
  const GenericErrorWidget({
    Key? key,
    required this.recoverCallback,
    this.messageTitle,
    this.messageBody,
    this.actionText = retryString,
    this.align,
    this.type = GenericNoDataTypes.error,
    this.headerIconSvgUrl,
    this.padding,
    this.actionKey,
  }) : super(key: key);

  /// [actionText]
  final String actionText;

  /// [align] where the error widget should align
  final MainAxisAlignment? align;

  /// [messageTitle] to show in the body, in place of the default one
  final List<TextSpan>? messageBody;

  /// [messageTitle] to show on the title, in place of the default one
  final String? messageTitle;

  /// [recoverCallback] the function to be called to recover from the error.
  /// Default to [null]
  final VoidCallback? recoverCallback;

  /// [type] the type of error. Defaults to [noData]
  final GenericNoDataTypes type;

  final String? headerIconSvgUrl;

  final EdgeInsets? padding;

  final Key? actionKey;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: padding ?? const EdgeInsets.all(18.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: align ?? MainAxisAlignment.center,
              children: <Widget>[
                largeVerticalSizedBox,
                if (type == GenericNoDataTypes.error)
                  SvgPicture.asset(
                    headerIconSvgUrl ?? errorPageImageSvgPath,
                    height: MediaQuery.of(context).size.height / 3,
                  ),
                Center(
                  child: Column(
                    children: <Widget>[
                      Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: messageTitle ?? getErrorMessage(),
                              style: veryBoldSize20Text(),
                            ),
                            const TextSpan(text: '\n\n'),
                            ...messageBody ??
                                <TextSpan>[
                                  TextSpan(
                                    text: defaultUserFriendlyMessage,
                                    style: normalSize16Text(
                                      const Color(0xff707070),
                                    ),
                                  )
                                ]
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      mediumVerticalSizedBox,
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        child: MyAfyaHubPrimaryButton(
                          customRadius: 8.0,
                          buttonKey: actionKey,
                          buttonColor: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          onPressed: recoverCallback,
                          text: actionText,
                        ),
                      ),
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

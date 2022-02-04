import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/helpers.dart';
import 'package:afya_moja_core/src/presentation/buttons.dart';
import 'package:afya_moja_core/src/presentation/colors.dart';
import 'package:afya_moja_core/src/presentation/inputs.dart';
import 'package:afya_moja_core/src/presentation/text_themes.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:shared_themes/spaces.dart';
import 'package:shared_ui_components/src/animated_count.dart';
import 'package:sms_autofill/sms_autofill.dart';

class VerifyOtpWidget extends StatefulWidget {
  const VerifyOtpWidget({
    Key? key,
    required this.phoneNumber,
    required this.loader,
    required this.onTimeOut,
    required this.canResendOTP,
    required this.isResetPin,
    required this.otp,
    required this.nextPageRoute,
    required this.onWrongCodeEntered,
    required this.failedToSendOTP,
    this.secondaryColor = myAfyaHubSecondaryColor,
    this.waitingForResendOTPFlag = false,
    required this.onPrimaryButtonPressed,
  }) : super(key: key);

  final String phoneNumber;
  final String otp;
  final Widget loader;
  final VoidCallback onTimeOut;
  final VoidCallback onWrongCodeEntered;
  final VoidCallback onPrimaryButtonPressed;
  final bool canResendOTP;
  final bool isResetPin;
  final bool failedToSendOTP;
  final bool waitingForResendOTPFlag;
  final VoidCallback nextPageRoute;
  final Color secondaryColor;

  @override
  VerifyOtpWidgetState createState() => VerifyOtpWidgetState();
}

class VerifyOtpWidgetState extends State<VerifyOtpWidget>
    with SingleTickerProviderStateMixin, CodeAutoFill {
  Animation<double>? animation;
  int resendTimeout = 60;
  String testCode = '1234';
  TextEditingController textEditingController = TextEditingController();

  late AnimationController _controller;

  @override
  void codeUpdated() {
    setState(() {
      // update the controller with the detected code
      textEditingController.text = code ?? testCode;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // listen for otp code sent via sms
    listenForCode();
    _controller =
        AnimationController(duration: const Duration(seconds: 60), vsync: this);
    animation = Tween<double>(begin: resendTimeout.toDouble(), end: 0)
        .animate(_controller)
      ..addListener(() {
        if (resendTimeout == 0) {
          widget.onTimeOut();
        }
        setState(() {
          resendTimeout = int.parse(animation!.value.toStringAsFixed(0));
        });
      });
    _controller.forward();
    super.initState();
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return verifyOTPState;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        smallVerticalSizedBox,
        PINInputField(
          maxLength: 6,
          onDone: (String enteredCode) async {
            if (enteredCode == widget.otp) {
              if (widget.isResetPin) {
                widget.nextPageRoute();
              } else {
                widget.onWrongCodeEntered();
              }
              return;
            } else {
              showFeedbackBottomSheet(
                context: context,
                modalContent: invalidCode,
              );
            }
          },
        ),
        largeVerticalSizedBox,
        if (!widget.canResendOTP && !widget.failedToSendOTP)
          Column(
            children: <Widget>[
              Text(
                anOtpHasBeenSentText(widget.phoneNumber),
                style: normalSize14Text(widget.secondaryColor),
              ),
              smallVerticalSizedBox,
              AnimatedCount(count: resendTimeout, duration: Duration.zero),
            ],
          ),

        ///Column should not be rendered in case of an error while sending the OTP
        if (widget.canResendOTP && !widget.failedToSendOTP)
          Column(
            children: <Widget>[
              Text(
                didNotReceiveOTPString,
                style: normalSize14Text(widget.secondaryColor),
              ),
              verySmallVerticalSizedBox,
              if (!widget.waitingForResendOTPFlag)
                MyAfyaHubPrimaryButton(
                  buttonKey: resendOtpButtonKey,
                  customRadius: 4,
                  text: resendOTP,
                  textColor: whiteColor,
                  buttonColor: widget.secondaryColor,
                  borderColor: widget.secondaryColor,
                  onPressed: () async {
                    widget.onPrimaryButtonPressed();
                  },
                )
              else ...<Widget>[
                smallVerticalSizedBox,
                widget.loader,
              ]
            ],
          ),
      ],
    );
  }
}

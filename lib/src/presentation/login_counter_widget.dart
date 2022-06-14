import 'dart:async';

import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/app_asset_strings.dart';
import 'package:afya_moja_core/src/presentation/buttons.dart';
import 'package:afya_moja_core/src/presentation/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_themes/spaces.dart';

class LoginCounterWidget extends StatefulWidget {
  const LoginCounterWidget({
    this.retryTimeout,
    this.actionText,
    this.onButtonTapped,
    this.onTimerEnded,
    this.actionKey,
    required this.title,
    required this.subtitle,
    required this.requestForAssistanceSubtitle,
  });

  final Key? actionKey;
  final String? actionText;
  final VoidCallback? onButtonTapped;
  final VoidCallback? onTimerEnded;
  final String requestForAssistanceSubtitle;
  final int? retryTimeout;
  final String subtitle;
  final String title;

  @override
  State<LoginCounterWidget> createState() => _LoginCounterWidgetState();
}

class _LoginCounterWidgetState extends State<LoginCounterWidget> {
  late Timer timer;
  bool timerRunning = false;

  late int _start = widget.retryTimeout ?? 0;

  @override
  void initState() {
    if (widget.retryTimeout != null) {
      if (widget.retryTimeout! < 1) {
        widget.onTimerEnded?.call();
      } else {
        _startTimer();
      }
    }

    super.initState();
  }

  void _startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (_start == 0) {
          timer.cancel();
          widget.onTimerEnded?.call();
          setState(() {
            timerRunning = false;
            return;
          });
        } else {
          setState(() {
            _start--;
            timerRunning = true;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                veryLargeVerticalSizedBox,
                SvgPicture.asset(
                  tooManyAttemptsIconSvgPath,
                ),
                largeVerticalSizedBox,
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: heavySize20Text(redColor),
                ),
                smallVerticalSizedBox,
                Text(
                  widget.subtitle,
                  style: normalSize14Text(
                    darkGreyTextColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                if (widget.retryTimeout != null)
                  Text(
                    '$_start seconds',
                    style: heavySize14Text(
                      Theme.of(context).primaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                smallVerticalSizedBox,
                Text(
                  widget.requestForAssistanceSubtitle,
                  style: normalSize14Text(
                    darkGreyTextColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                largeVerticalSizedBox,
                if (widget.actionText != null)
                  SizedBox(
                    width: double.infinity,
                    child: MyAfyaHubPrimaryButton(
                      buttonKey: widget.actionKey,
                      text: widget.actionText,
                      onPressed: () {
                        if (widget.retryTimeout != null) {
                          timer.cancel();
                        }
                        widget.onButtonTapped?.call();
                      },
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

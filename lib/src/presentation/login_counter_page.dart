import 'dart:async';

import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/app_asset_strings.dart';
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/presentation/buttons.dart';
import 'package:afya_moja_core/src/presentation/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_themes/spaces.dart';

class LoginCounterPage extends StatefulWidget {
  const LoginCounterPage({
    required this.retryTimeout,
    this.buttonText,
    this.onButtonTapped,
    this.onTimerEnded,
  });
  final int retryTimeout;
  final String? buttonText;
  final VoidCallback? onButtonTapped;
  final VoidCallback? onTimerEnded;

  @override
  State<LoginCounterPage> createState() => _LoginCounterPageState();
}

class _LoginCounterPageState extends State<LoginCounterPage> {
  late Timer timer;
  late int _start = widget.retryTimeout;
  bool timerRunning = false;

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
  void initState() {
    if (widget.retryTimeout < 1) {
      widget.onTimerEnded?.call();
    } else {
      _startTimer();
    }
    super.initState();
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
                  tooManyAttemptsString,
                  style: heavySize20Text(redColor),
                ),
                smallVerticalSizedBox,
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: normalSize14Text(
                      darkGreyTextColor,
                    ),
                    children: <TextSpan>[
                      const TextSpan(text: tooManyAttemptsMessageString),
                      TextSpan(
                        text: '$_start seconds',
                        style: heavySize14Text(
                          Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
                smallVerticalSizedBox,
                Text(
                  requestForAssistanceMessageString,
                  style: normalSize14Text(
                    darkGreyTextColor,
                  ),
                  textAlign: TextAlign.center,
                ),
                largeVerticalSizedBox,
                if (widget.buttonText != null)
                  SizedBox(
                    width: double.infinity,
                    child: MyAfyaHubPrimaryButton(
                      text: widget.buttonText,
                      onPressed: () {
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

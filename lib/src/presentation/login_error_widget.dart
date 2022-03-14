// Flutter imports:
import 'dart:async';

import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:shared_themes/spaces.dart';

class LoginErrorWidget extends StatefulWidget {
  const LoginErrorWidget({
    required this.message,
    required this.title,
    this.retryTimeout,
    this.timerAction,
  });

  final String message;
  final String title;
  final int? retryTimeout;
  final void Function(bool disable)? timerAction;

  @override
  State<LoginErrorWidget> createState() => _LoginErrorWidgetState();
}

class _LoginErrorWidgetState extends State<LoginErrorWidget>
    with SingleTickerProviderStateMixin {
  late Timer timer;
  late int _start = widget.retryTimeout ?? 0;
  bool timerRunning = false;

  void _startTimer() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        if (_start == 0) {
          timer.cancel();
          widget.timerAction?.call(false);
          setState(() {
            timerRunning = false;
            return;
          });
        } else {
          setState(() {
            _start--;
            timerRunning = true;

            widget.timerAction?.call(true);
          });
        }
      },
    );
  }

  @override
  void initState() {
    if (widget.retryTimeout != null && widget.retryTimeout! > 0) {
      _startTimer();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return timerRunning ||
            widget.retryTimeout == null
        ? Container(
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
                  widget.title,
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
                      TextSpan(text: widget.message),
                      if (widget.retryTimeout != null)
                        TextSpan(
                          text: '$_start seconds',
                          style: heavySize14Text(
                            darkGreyTextColor,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          )
        : const SizedBox();
  }
}

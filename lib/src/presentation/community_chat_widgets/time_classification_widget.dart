// Flutter imports:
// Project imports:
import 'package:afya_moja_core/src/presentation/text_themes.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class TimeClassificationWidget extends StatelessWidget {
  /// [TimeClassificationWidget] used within the community chat screen to classify
  ///  messages in reverse chronological order of time.
  ///
  /// [time] is required.
  ///
  const TimeClassificationWidget({
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: const BorderRadius.all(
          Radius.circular(5.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 2.0,
          bottom: 2.0,
          left: 8.0,
          right: 8.0,
        ),
        child: Text(
          time,
          style: normalSize14Text().copyWith(color: darkGreyTextColor),
        ),
      ),
    );
  }
}

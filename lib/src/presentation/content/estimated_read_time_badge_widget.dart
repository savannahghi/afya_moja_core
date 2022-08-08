import 'package:afya_moja_core/src/enums.dart';
import 'package:afya_moja_core/src/helpers.dart';
import 'package:afya_moja_core/src/presentation/colors.dart';
import 'package:afya_moja_core/src/presentation/text_themes.dart';
import 'package:flutter/material.dart';

class EstimatedReadTimeBadge extends StatelessWidget {
  const EstimatedReadTimeBadge({
    Key? key,
    required this.contentType,
    required this.estimateReadTime,
    this.videoDuration,
    this.isAudio = false,
  }) : super(key: key);

  final ContentType contentType;
  final int estimateReadTime;
  final bool isAudio;
  final int? videoDuration;

  @override
  Widget build(BuildContext context) {
    final String time;
    if (contentType == ContentType.AUDIO_VIDEO && isAudio) {
      time = audioTime(estimateReadTime);
    } else {
      if (contentType == ContentType.AUDIO_VIDEO) {
        time = contentAudioVideoDuration(videoDuration ?? 0);
      } else {
        time = contentReadDuration(estimateReadTime);
      }
    }

    return time.startsWith('0')
        ? const SizedBox()
        : Container(
            padding: const EdgeInsets.all(6.0),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(6.0),
              ),
              color: readTimeBackgroundColor,
            ),
            child: Text(
              time,
              style: mediumSize14Text(Colors.white).copyWith(fontSize: 12),
            ),
          );
  }
}

// Flutter imports:
import 'dart:math';
import 'package:afya_moja_core/src/app_asset_strings.dart';
import 'package:afya_moja_core/src/constants.dart';
import 'package:afya_moja_core/src/domain/core/entities/content/audio_position_data.dart';
import 'package:afya_moja_core/src/domain/core/entities/content/content.dart';
import 'package:afya_moja_core/src/enums.dart';
import 'package:afya_moja_core/src/helpers.dart';
import 'package:afya_moja_core/src/presentation/audio_player/audio_content_controls.dart';
import 'package:afya_moja_core/src/presentation/audio_player/audio_custom_track_shape.dart';
import 'package:afya_moja_core/src/presentation/audio_player/audio_hidden_thumb_widget_shape.dart';
import 'package:afya_moja_core/src/presentation/colors.dart';
import 'package:afya_moja_core/src/presentation/content/estimated_read_time_badge_widget.dart';
import 'package:afya_moja_core/src/presentation/content/reaction_item.dart';
import 'package:afya_moja_core/src/presentation/spaces.dart';
import 'package:afya_moja_core/src/presentation/text_themes.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';

class AudioContent extends StatefulWidget {
  const AudioContent({
    required this.contentDetails,
    this.audioPlayer,
  });

  final Content contentDetails;
  final AudioPlayer? audioPlayer;

  @override
  State<AudioContent> createState() => _AudioContentState();
}

class _AudioContentState extends State<AudioContent>
    with WidgetsBindingObserver {
  late AudioPlayer _player;

  @override
  void initState() {
    super.initState();
    _player = widget.audioPlayer ?? AudioPlayer();
    WidgetsBinding.instance?.addObserver(this);
    _init();
  }

  Future<void> _init() async {
    // Try to load audio from a source
    final String audioUrl =
        widget.contentDetails.featuredMedia?[0]?.mediaUrl ?? '';
    await _player.setAudioSource(
      AudioSource.uri(
        Uri.parse(
          audioUrl,
        ),
      ),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    _player.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      // Release the player's resources when not in use. We use "stop" so that
      // if the app resumes later, it will still remember what position to
      // resume from.
      _player.stop();
    }
  }

  /// Collects the data useful for displaying in a seek bar, using a handy
  /// feature of rx_dart to combine the 3 streams of interest into one.
  Stream<AudioPositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, AudioPositionData>(
        _player.positionStream,
        _player.bufferedPositionStream,
        _player.durationStream,
        (Duration position, Duration bufferedPosition, Duration? duration) {
          final int durationInt =
              widget.contentDetails.featuredMedia?.first?.duration ?? 0;
          return AudioPositionData(
            position,
            bufferedPosition,
            duration ??
                Duration(
                  seconds: durationInt,
                ),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    double? _dragValue;
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 100,
            width: 100,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: AudioContentControls(
                  player: _player,
                ),
              ),
            ),
          ),
          size15HorizontalSizedBox,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      child: Text(
                        widget.contentDetails.title ?? UNKNOWN,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: boldSize16Text(
                          myAfyaHubSecondaryColor,
                        ),
                      ),
                    ),
                    StreamBuilder<AudioPositionData>(
                      stream: _positionDataStream,
                      builder: (
                        BuildContext context,
                        AsyncSnapshot<AudioPositionData> snapshot,
                      ) {
                        final AudioPositionData positionData = snapshot.data ??
                            AudioPositionData(
                              snapshot.data?.duration ?? Duration.zero,
                              snapshot.data?.bufferedPosition ?? Duration.zero,
                              Duration.zero,
                            );

                        return EstimatedReadTimeBadge(
                          estimateReadTime: positionData.duration.inSeconds -
                              positionData.position.inSeconds,
                          contentType: ContentType.AUDIO_VIDEO,
                          isAudio: true,
                        );
                      },
                    )
                  ],
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    if (widget.contentDetails.authorName != null)
                      Text(
                        widget.contentDetails.authorName!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: boldSize14Text(
                          greyTextColor,
                        ),
                      ),
                    smallHorizontalSizedBox,
                    humanizeDate(
                      dateTextStyle: normalSize12Text(
                        greyTextColor,
                      ),
                      loadedDate: widget.contentDetails.metadata?.createdAt ??
                          DateTime.now().toIso8601String(),
                    ),
                  ],
                ),

                StreamBuilder<AudioPositionData>(
                  stream: _positionDataStream,
                  builder: (
                    BuildContext context,
                    AsyncSnapshot<AudioPositionData> snapshot,
                  ) {
                    final AudioPositionData positionData = snapshot.data ??
                        AudioPositionData(
                          snapshot.data?.duration ?? Duration.zero,
                          snapshot.data?.bufferedPosition ?? Duration.zero,
                          Duration.zero,
                        );
                    final SliderThemeData _sliderThemeData =
                        SliderTheme.of(context).copyWith(
                      //Sets the track height
                      trackHeight: 2.5,
                      trackShape: AudioCustomTrackShape(),
                    );
                    // Slider
                    return Stack(
                      children: <Widget>[
                        SliderTheme(
                          data: _sliderThemeData.copyWith(
                            thumbShape: AudioHiddenThumbWidgetShape(),
                            activeTrackColor: Colors.grey.shade400,
                            inactiveTrackColor: Colors.white,
                          ),
                          child: Slider(
                            max:
                                positionData.duration.inMilliseconds.toDouble(),
                            value: min(
                              positionData.bufferedPosition.inMilliseconds
                                  .toDouble(),
                              positionData.duration.inMilliseconds.toDouble(),
                            ),
                            onChanged: (double value) {},
                          ),
                        ),
                        SliderTheme(
                          data: _sliderThemeData.copyWith(
                            thumbShape: const RoundSliderThumbShape(
                              enabledThumbRadius: 7.0,
                            ),
                            thumbColor: myAfyaHubSecondaryColor,
                            activeTrackColor: myAfyaHubSecondaryColor,
                            inactiveTrackColor: Colors.transparent,
                          ),
                          child: Slider(
                            max:
                                positionData.duration.inMilliseconds.toDouble(),
                            value: min(
                              _dragValue ??
                                  positionData.position.inMilliseconds
                                      .toDouble(),
                              positionData.duration.inMilliseconds.toDouble(),
                            ),
                            onChanged: (double value) {
                              setState(() {
                                _dragValue = value;
                              });
                            },
                            onChangeEnd: (double value) {
                              _player.seek(
                                Duration(
                                  milliseconds: value.round(),
                                ),
                              );
                              _dragValue = null;
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ),

                // Reactions
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      ReactionItem(
                        iconUrl: heartIconUrl,
                        count: widget.contentDetails.likeCount,
                      ),
                      ReactionItem(
                        iconUrl: shareIconUrl,
                        count: widget.contentDetails.shareCount,
                      ),
                      ReactionItem(
                        iconUrl: saveIconUrl,
                        count: widget.contentDetails.bookmarkCount,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

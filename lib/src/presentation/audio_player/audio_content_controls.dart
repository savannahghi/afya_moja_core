import 'package:afya_moja_core/src/presentation/platform_loader.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class AudioContentControls extends StatelessWidget {
  const AudioContentControls({
    required this.player,
    this.onPlayTapped,
  });

  final AudioPlayer player;
  final VoidCallback? onPlayTapped;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<PlayerState>(
      stream: player.playerStateStream,
      builder: (
        BuildContext context,
        AsyncSnapshot<PlayerState> snapshot,
      ) {
        final PlayerState? playerState = snapshot.data;
        final ProcessingState? processingState = playerState?.processingState;
        final bool? playing = playerState?.playing;

        ///Display while loading
        if (processingState == ProcessingState.loading ||
            processingState == ProcessingState.buffering) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: const BorderRadius.all(Radius.circular(400)),
            ),
            width: 50.0,
            height: 50.0,
            child: const PlatformLoader(
              color: Colors.white,
            ),
          );
        } else if (playing != true) {
          ///Display while audio is playing
          return DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: const BorderRadius.all(Radius.circular(50)),
            ),
            child: IconButton(
              color: Colors.white,
              icon: const Icon(Icons.play_arrow),
              iconSize: 32.0,
              onPressed: () {
                player.play();
                onPlayTapped?.call();
              },
            ),
          );
        } else if (processingState != ProcessingState.completed) {
          ///Display while audio is paused
          return DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: const BorderRadius.all(Radius.circular(400)),
            ),
            child: IconButton(
              color: Colors.white,
              icon: const Icon(Icons.pause),
              iconSize: 32.0,
              onPressed: player.pause,
            ),
          );
        } else {
          return DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: const BorderRadius.all(Radius.circular(400)),
            ),
            child: IconButton(
              color: Colors.white,
              icon: const Icon(Icons.replay),
              iconSize: 32.0,
              onPressed: () => player.seek(Duration.zero),
            ),
          );
        }
      },
    );
  }
}

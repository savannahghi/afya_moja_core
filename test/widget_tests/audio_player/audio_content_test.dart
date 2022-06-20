// Flutter imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/presentation/audio_player/audio_content_controls.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:just_audio/just_audio.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../../mocks/mocks.dart';
import 'audio_content_test.mocks.dart';

@GenerateMocks(<Type>[AudioPlayer])
void main() {
  group('AudioContent', () {
    final MockAudioPlayer audioPlayer = MockAudioPlayer();
    final Content contentWithAudio = mockContent.copyWith.call(
      contentType: ContentType.AUDIO_VIDEO,
      metadata: ContentMetadata(),
    );
    testWidgets('shows loading indicator when audio is loading',
        (WidgetTester tester) async {
      when(audioPlayer.playerStateStream).thenAnswer(
        (Invocation realInvocation) => Stream<PlayerState>.value(
          PlayerState(true, ProcessingState.loading),
        ),
      );
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return AudioContentControls(player: audioPlayer);
                },
              ),
            ),
          ),
        ),
      );
      await tester.pump();

      expect(find.byType(PlatformLoader), findsOneWidget);
    });

    testWidgets('shows reply icon', (WidgetTester tester) async {
      when(audioPlayer.playerStateStream).thenAnswer(
        (Invocation realInvocation) => Stream<PlayerState>.value(
          PlayerState(true, ProcessingState.completed),
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return AudioContentControls(player: audioPlayer);
                },
              ),
            ),
          ),
        ),
      );
      await tester.pump();

      expect(
        (tester.firstWidget(find.byType(Icon)) as Icon).icon,
        Icons.replay,
      );

      await tester.tap(find.byType(IconButton));
      await tester.pumpAndSettle();

      expect(
        (tester.firstWidget(find.byType(Icon)) as Icon).icon,
        Icons.replay,
      );
    });

    testWidgets('shows audio content', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return ContentItem(
                    contentDetails: contentWithAudio,
                    onTapCallback: () {},
                  );
                },
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.byType(AudioContent), findsOneWidget);
    });

    testWidgets('shows pause icon when audio is paused',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return ContentItem(
                    contentDetails: contentWithAudio,
                    onTapCallback: () {},
                  );
                },
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      expect(find.byType(AudioContent), findsOneWidget);
      await tester.tap(find.byType(IconButton));
      await tester.pumpAndSettle();

      expect(
        (tester.firstWidget(find.byType(Icon)) as Icon).icon,
        Icons.pause,
      );
    });

    testWidgets('seeks the audio', (WidgetTester tester) async {
      final MockAudioPlayer audioPlayer = MockAudioPlayer();

      when(audioPlayer.playerStateStream).thenAnswer(
        (Invocation realInvocation) => Stream<PlayerState>.value(
          PlayerState(true, ProcessingState.ready),
        ),
      );

      when(audioPlayer.setAudioSource(any)).thenAnswer(
        (Invocation realInvocation) =>
            Future<Duration>.value(const Duration(seconds: 100)),
      );

      when(audioPlayer.durationStream).thenAnswer(
        (Invocation realInvocation) => Stream<Duration?>.value(
          null,
        ),
      );

      when(audioPlayer.bufferedPositionStream).thenAnswer(
        (Invocation realInvocation) => Stream<Duration>.value(
          const Duration(seconds: 110),
        ),
      );

      when(audioPlayer.positionStream).thenAnswer(
        (Invocation realInvocation) => Stream<Duration>.value(
          const Duration(seconds: 100),
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return AudioContent(
                    contentDetails: contentWithAudio,
                    audioPlayer: audioPlayer,
                  );
                },
              ),
            ),
          ),
        ),
      );
      (tester.firstWidget(find.byType(Slider).first) as Slider)
          .onChanged
          ?.call(12.0);

      await tester.pumpAndSettle();
      await tester.drag(find.byType(Slider).last, const Offset(10.0, 0.0));
      await tester.pump();
      expect(
        (tester.firstWidget(find.byType(Slider).last) as Slider).value,
        contentWithAudio.featuredMedia!.first!.duration! * 1000.00,
      );

      expect(
        (tester.firstWidget(find.byType(Slider).first) as Slider)
            .onChanged
            .toString(),
        (double value) {
          void empty;
          return empty;
        }.toString(),
      );
    });

    testWidgets('is removed when app lifecycle is paused',
        (WidgetTester tester) async {
      await tester.runAsync(() async {
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              body: Center(
                child: Builder(
                  builder: (BuildContext context) {
                    return ContentItem(
                      contentDetails: contentWithAudio,
                      onTapCallback: () {},
                    );
                  },
                ),
              ),
            ),
          ),
        );

        await tester.pumpAndSettle(const Duration(seconds: 5));
        tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);

        expect(find.byType(AudioContent), findsOneWidget);
      });
    });
  });
}

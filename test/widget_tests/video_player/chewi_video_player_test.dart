// Flutter imports:
import 'package:afya_moja_core/src/presentation/video_player/chewie_video_player.dart';
import 'package:afya_moja_core/src/services/video_player_initializer.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import '../../mocks/mocks.dart';

void main() {
  group('ChewiVideoPlayer', () {
    testWidgets(
      'should show chewi videos',
      (WidgetTester tester) async {
        await mockNetworkImages(() async {
          final MockVideoPlayerController controller =
              MockVideoPlayerController();

          controller.value = controller.value.copyWith(
            duration: const Duration(milliseconds: 100),
            isInitialized: true,
          );

          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: Center(
                  child: Builder(
                    builder: (BuildContext context) {
                      return ChewieVideoPlayer(
                        chewieController:
                            VideoPlayerInitializer().initializePlayer(
                          videoPlayerController: controller,
                          autoPlay: true,
                        ),
                        thumbnail: 'https://127.0.0.1',
                      );
                    },
                  ),
                ),
              ),
            ),
          );

          await tester.pump(const Duration(seconds: 1));
          await tester.pumpAndSettle();

          expect(find.byType(Chewie), findsOneWidget);
          expect(find.byType(CircularProgressIndicator), findsNothing);
        });
      },
    );

    testWidgets('should show loader when controller is not initialized',
        (WidgetTester tester) async {
      await mockNetworkImages(
        () async {
          final MockVideoPlayerController controller =
              MockVideoPlayerController();

          controller.value = controller.value.copyWith(
            duration: const Duration(milliseconds: 100),
            isInitialized: false,
          );
          await tester.pumpWidget(
            MaterialApp(
              home: Scaffold(
                body: Center(
                  child: Builder(
                    builder: (BuildContext context) {
                      return ChewieVideoPlayer(
                        chewieController:
                            VideoPlayerInitializer().initializePlayer(
                          videoPlayerController: controller,
                          autoPlay: true,
                        ),
                        thumbnail: 'https://127.0.0.1',
                      );
                    },
                  ),
                ),
              ),
            ),
          );

          await tester.pump(const Duration(seconds: 1));

          expect(find.byType(Chewie), findsNothing);
          expect(find.byType(CircularProgressIndicator), findsOneWidget);
        },
      );
    });
  });
}

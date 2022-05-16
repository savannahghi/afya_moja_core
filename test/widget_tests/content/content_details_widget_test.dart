import 'dart:io';

// Package imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/presentation/content/gallery_image_widget.dart';
import 'package:afya_moja_core/src/presentation/generic_empty_data_widget.dart';
import 'package:afya_moja_core/src/presentation/video_player/chewie_video_player.dart';
import 'package:afya_moja_core/src/services/video_player_initializer.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';

import '../../mock_image_http_client.dart';
import '../../mocks/mocks.dart';

void main() {
  group('ContentDetailWidget', () {
    setUp(() {
      HttpOverrides.global = TestHttpOverrides();
    });

    testWidgets('renders correctly with the correct content data',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return ContentDetailWidget(
                    payload: ContentDetails(
                      content: mockContent.copyWith(
                        metadata: ContentMetadata.initial(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );

      final Finder cancelButton = find.byKey(cancelButtonKey);
      await tester.pumpAndSettle();

      expect(cancelButton, findsOneWidget);
      await tester.tap(cancelButton);
      await tester.pumpAndSettle();
      expect(cancelButton, findsNothing);
    });

    testWidgets('renders correctly with the correct video content data',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return ContentDetailWidget(
                    payload: ContentDetails(
                      content: mockVideoContent,
                      contentDisplayedType: ContentDisplayedType.BOOKMARK,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      );

      expect(find.byType(ChewieVideoPlayer), findsOneWidget);
    });

    testWidgets('chewie video player disposes correctly',
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
                    return ContentDetailWidget(
                      payload: ContentDetails(
                        content: mockVideoContent,
                        contentDisplayedType: ContentDisplayedType.BOOKMARK,
                      ),
                      chewieVideoPlayer: ChewieVideoPlayer(
                        chewieController:
                            VideoPlayerInitializer().initializePlayer(
                          videoPlayerController: controller,
                          autoPlay: true,
                        ),
                        thumbnail: 'https://127.0.0.1',
                      ),
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
    });

    testWidgets(
        'renders an empty data widget if the body of a piece of content '
        'is empty', (WidgetTester tester) async {
      final Content contentWithoutBody = mockContent.copyWith.call(body: null);
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return ContentDetailWidget(
                    payload: ContentDetails(content: contentWithoutBody),
                  );
                },
              ),
            ),
          ),
        ),
      );

      expect(find.byType(GenericEmptyData), findsOneWidget);
    });

    testWidgets('should show gallery image if present',
        (WidgetTester tester) async {
      final Content content = Content(
        heroImage: HeroImage(url: 'url'),
        galleryImages: <GalleryImage>[
          GalleryImage.fromJson(mockGalleryImage),
        ],
      );
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return ContentDetailWidget(
                    payload: ContentDetails(content: content),
                  );
                },
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byType(GalleryImageWidget), findsOneWidget);
    });

    testWidgets('should show two gallery images if present',
        (WidgetTester tester) async {
      final Content content = Content(
        heroImage: HeroImage(url: 'url'),
        galleryImages: <GalleryImage>[
          GalleryImage.fromJson(mockGalleryImage),
          GalleryImage.fromJson(mockGalleryImage),
        ],
      );
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return ContentDetailWidget(
                    payload: ContentDetails(content: content),
                  );
                },
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byType(GalleryImageWidget), findsNWidgets(2));
    });

    testWidgets('should show three gallery images if present',
        (WidgetTester tester) async {
      final Content content = Content(
        heroImage: HeroImage(url: 'url'),
        galleryImages: <GalleryImage>[
          GalleryImage.fromJson(mockGalleryImage),
          GalleryImage.fromJson(mockGalleryImage),
          GalleryImage.fromJson(mockGalleryImage),
        ],
      );
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return ContentDetailWidget(
                    payload: ContentDetails(content: content),
                  );
                },
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(GalleryImageWidget), findsNWidgets(3));
    });

    testWidgets(
        'if gallery images are more than 3 should navigate to gallery '
        'images page', (WidgetTester tester) async {
      String testString = '';
      final Content content = Content(
        heroImage: HeroImage(url: 'url'),
        galleryImages: <GalleryImage>[
          GalleryImage.fromJson(mockGalleryImage),
          GalleryImage.fromJson(mockGalleryImage),
          GalleryImage.fromJson(mockGalleryImage),
          GalleryImage.fromJson(mockGalleryImage),
        ],
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return ContentDetailWidget(
                    payload: ContentDetails(content: content),
                    galleryImageCallback: () => testString = 'test',
                  );
                },
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byType(GalleryImageWidget), findsNWidgets(3));

      final Finder galleryImagesKey = find.byKey(galleryImagePageKey);
      expect(galleryImagesKey, findsOneWidget);

      await tester.tap(galleryImagesKey);
      await tester.pumpAndSettle();
      expect(testString, 'test');
    });
  });
}

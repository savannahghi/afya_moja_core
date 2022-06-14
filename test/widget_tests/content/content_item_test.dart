// Dart imports:
import 'dart:io';

// Package imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/presentation/audio_player/audio_content.dart';
import 'package:afya_moja_core/src/presentation/content/gallery_image_widget.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../mock_image_http_client.dart';
import '../../mocks/mocks.dart';

// Project imports:
void main() {
  group('ContentItem', () {
    setUpAll(() {
      HttpOverrides.global = TestHttpOverrides();
    });

    testWidgets('shows audio content', (WidgetTester tester) async {

      final Content mockContent = Content.fromJson(contentMock[1]);
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return ContentItem(
                    contentDetails: mockContent,
                    onTapCallback: () {},
                  );
                },
              ),
            ),
          ),
        ),
      );

      expect(find.byType(AudioContent), findsOneWidget);
    });

    testWidgets('shows pdf content', (WidgetTester tester) async {
      final Content mockContent = Content.fromJson(documentContentMock);

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return ContentItem(
                    contentDetails: mockContent,
                    onTapCallback: () {},
                  );
                },
              ),
            ),
          ),
        ),
      );

      expect(find.text(pdfText), findsOneWidget);
      await tester.tap(find.text(pdfText));
    });

    testWidgets('shows the play icon if a piece of content has a video',
        (WidgetTester tester) async {
      final Content contentWithVideo = mockVideoContent.copyWith(body: null);
    String testString = '';
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return ContentItem(
                    contentDetails: contentWithVideo,
                    onTapCallback: () => testString='test',
                  );
                },
              ),
            ),
          ),
        ),
      );

      expect(find.byKey(feedVideoPlayIconKey), findsOneWidget);
      await tester.tap(find.byKey(feedVideoPlayIconKey));
      expect(testString, 'test');
    });

    testWidgets('should show hero image if present',
        (WidgetTester tester) async {
      final Content content = Content(
        heroImage: HeroImage(url: 'url'),
        galleryImages: <GalleryImage>[GalleryImage.fromJson(mockGalleryImage)],
      );

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return ContentItem(
                    contentDetails: content,
                    onTapCallback: () {},
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
    testWidgets('should show placeholder if hero image is not present',
        (WidgetTester tester) async {
      final Content content = Content(
        heroImage: HeroImage(url: ''),
        galleryImages: <GalleryImage>[GalleryImage.fromJson(mockGalleryImage)],
      );
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return ContentItem(
                    contentDetails: content,
                    onTapCallback: () {},
                  );
                },
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byKey(contentHeroImagePlaceHolder), findsOneWidget);
    });

    testWidgets('should show AudioContent if present',
        (WidgetTester tester) async {
      final Content content = Content(
        heroImage: HeroImage(url: 'url'),
        contentType: ContentType.AUDIO_VIDEO,
        featuredMedia: <FeaturedMedia>[
          FeaturedMedia(
            featuredMediaType: FeaturedMediaType.audio,
            mediaUrl: '',
          )
        ],
      );
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return ContentItem(
                    contentDetails: content,
                    onTapCallback: () {},
                  );
                },
              ),
            ),
          ),
        ),
      );

      expect(find.byType(GalleryImageWidget), findsOneWidget);
      expect(find.byType(AudioContent), findsOneWidget);
    });

    testWidgets('should show true badge', (WidgetTester tester) async {
      final Content content = Content(heroImage: HeroImage(url: 'url'));

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return ContentItem(
                    contentDetails: content,
                    onTapCallback: () {},
                    isNew: true,
                  );
                },
              ),
            ),
          ),
        ),
      );

      expect(find.byType(GalleryImageWidget), findsOneWidget);
      expect(find.text(newText), findsOneWidget);
    });
  });
}

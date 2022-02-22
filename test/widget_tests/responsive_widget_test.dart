import 'package:afya_moja_core/src/presentation/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:misc_utilities/enums.dart';
import 'package:misc_utilities/misc.dart';
import 'package:misc_utilities/number_constants.dart';

import '../utils_test.dart';

void main() {
  group('ResponsiveWidget tests', () {
    const Text smallScreen = Text('small screen');
    const Text largeScreen = Text('large screen');

    testWidgets('draws smallScreen when screen is small',
        (WidgetTester tester) async {
      tester.binding.window.devicePixelRatioTestValue = 1.0;
      tester.binding.window.physicalSizeTestValue =
          typicalPhoneScreenSizePortrait;

      await _buildResponsiveWidget(
        tester,
        smallScreen: smallScreen,
        largeScreen: largeScreen,
      );
      await tester.pumpAndSettle();

      expect(find.byWidget(smallScreen), findsOneWidget);
      expect(find.byWidget(largeScreen), findsNothing);

      addTearDown(() {
        tester.binding.window.clearPhysicalSizeTestValue();
        tester.binding.window.clearDevicePixelRatioTestValue();
      });
    });

    testWidgets('draws largeScreen when screen is large',
        (WidgetTester tester) async {
      tester.binding.window.devicePixelRatioTestValue = 1.0;
      tester.binding.window.physicalSizeTestValue = tabletLandscape;

      await _buildResponsiveWidget(
        tester,
        smallScreen: smallScreen,
        largeScreen: largeScreen,
      );
      await tester.pumpAndSettle();

      expect(find.byWidget(smallScreen), findsNothing);
      expect(find.byWidget(largeScreen), findsOneWidget);

      addTearDown(() {
        tester.binding.window.clearPhysicalSizeTestValue();
        tester.binding.window.clearDevicePixelRatioTestValue();
      });
    });

    testWidgets('isLargeScreen returns true for large screen',
        (WidgetTester tester) async {
      tester.binding.window.devicePixelRatioTestValue = 1.0;
      tester.binding.window.physicalSizeTestValue = tabletLandscape;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              final bool isSmallScreen =
                  ResponsiveWidget.isSmallScreen(context);
              final bool isLargeScreen =
                  ResponsiveWidget.isLargeScreen(context);

              expect(isSmallScreen, isFalse);
              expect(isLargeScreen, isTrue);

              return const Placeholder();
            },
          ),
        ),
      );

      addTearDown(() {
        tester.binding.window.clearPhysicalSizeTestValue();
        tester.binding.window.clearDevicePixelRatioTestValue();
      });
    });

    testWidgets('isSmallScreen returns true for small screen',
        (WidgetTester tester) async {
      tester.binding.window.devicePixelRatioTestValue = 1.0;
      tester.binding.window.physicalSizeTestValue =
          typicalPhoneScreenSizePortrait;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              final bool isSmallScreen =
                  ResponsiveWidget.isSmallScreen(context);
              final bool isLargeScreen =
                  ResponsiveWidget.isLargeScreen(context);

              expect(isSmallScreen, isTrue);
              expect(isLargeScreen, isFalse);

              return const Placeholder();
            },
          ),
        ),
      );

      addTearDown(() {
        tester.binding.window.clearPhysicalSizeTestValue();
        tester.binding.window.clearDevicePixelRatioTestValue();
      });
    });

    testWidgets(
        'preferredPaddingOnStretchedScreens should return padding for small device',
        (WidgetTester tester) async {
      tester.binding.window.devicePixelRatioTestValue = 1.0;
      tester.binding.window.physicalSizeTestValue =
          typicalPhoneScreenSizePortrait;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              expect(
                ResponsiveWidget.preferredPaddingOnStretchedScreens(
                  context: context,
                ),
                number15,
              );

              return Container();
            },
          ),
        ),
      );

      addTearDown(() {
        tester.binding.window.clearPhysicalSizeTestValue();
        tester.binding.window.clearDevicePixelRatioTestValue();
      });
    });

    testWidgets(
        'preferredPaddingOnStretchedScreens should return padding for large device',
        (WidgetTester tester) async {
      tester.binding.window.devicePixelRatioTestValue = 1.0;
      tester.binding.window.physicalSizeTestValue = tabletLandscape;

      const double width = (number1280 - number420) / number2;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              expect(
                ResponsiveWidget.preferredPaddingOnStretchedScreens(
                  context: context,
                ),
                width,
              );

              return Container();
            },
          ),
        ),
      );

      addTearDown(() {
        tester.binding.window.clearPhysicalSizeTestValue();
        tester.binding.window.clearDevicePixelRatioTestValue();
      });
    });

    testWidgets('isSmallScreenAndOnLandscape should return true',
        (WidgetTester tester) async {
      tester.binding.window.devicePixelRatioTestValue = 1.0;
      tester.binding.window.physicalSizeTestValue =
          typicalPhoneScreenSizeLandscape;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              expect(
                ResponsiveWidget.isSmallScreenAndOnLandscape(context: context),
                true,
              );

              return Container();
            },
          ),
        ),
      );

      addTearDown(() {
        tester.binding.window.clearPhysicalSizeTestValue();
        tester.binding.window.clearDevicePixelRatioTestValue();
      });
    });

    testWidgets('isSmallScreenAndOnLandscape should return false',
        (WidgetTester tester) async {
      tester.binding.window.devicePixelRatioTestValue = 1.0;
      tester.binding.window.physicalSizeTestValue = tabletLandscape;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              expect(
                ResponsiveWidget.isSmallScreenAndOnLandscape(context: context),
                false,
              );

              return Container();
            },
          ),
        ),
      );

      addTearDown(() {
        tester.binding.window.clearPhysicalSizeTestValue();
        tester.binding.window.clearDevicePixelRatioTestValue();
      });
    });
    testWidgets('isLandscape returns true for large screen',
        (WidgetTester tester) async {
      tester.binding.window.devicePixelRatioTestValue = 1.0;
      tester.binding.window.physicalSizeTestValue = tabletLandscape;

      await tester.pumpWidget(
        MediaQuery(
          data: MediaQueryData.fromWindow(tester.binding.window)
              .copyWith(size: const Size(1280, 720)),
          child: MaterialApp(
            home: Builder(
              builder: (BuildContext context) {
                final bool isLandscape =
                    ResponsiveWidget.isLandscape(context: context);
                final bool isLargeScreen =
                    ResponsiveWidget.isLargeScreen(context);

                expect(isLandscape, isTrue);
                expect(isLargeScreen, isTrue);

                return const Placeholder();
              },
            ),
          ),
        ),
      );

      addTearDown(() {
        tester.binding.window.clearPhysicalSizeTestValue();
        tester.binding.window.clearDevicePixelRatioTestValue();
      });
    });

    testWidgets('returns device width for large screen landscape',
        (WidgetTester tester) async {
      tester.binding.window.devicePixelRatioTestValue = 1.0;
      tester.binding.window.physicalSizeTestValue = tabletLandscape;

      await tester.pumpWidget(
        MediaQuery(
          data: MediaQueryData.fromWindow(tester.binding.window)
              .copyWith(size: tabletLandscape),
          child: MaterialApp(
            home: Builder(
              builder: (BuildContext context) {
                final MediaQueryData mediaQuery = MediaQuery.of(context);
                final bool isLandscape =
                    ResponsiveWidget.isLandscape(context: context);
                final DeviceScreensType screenType = getDeviceType(context);

                expect(isLandscape, isTrue);
                expect(mediaQuery.size.width, 1280);
                expect(screenType, DeviceScreensType.Tablet);

                return const Placeholder();
              },
            ),
          ),
        ),
      );

      addTearDown(() {
        tester.binding.window.clearPhysicalSizeTestValue();
        tester.binding.window.clearDevicePixelRatioTestValue();
      });
    });

    testWidgets('returns device width for desktop',
        (WidgetTester tester) async {
      tester.binding.window.devicePixelRatioTestValue = 1.0;
      tester.binding.window.physicalSizeTestValue = desktop;

      await tester.pumpWidget(
        MediaQuery(
          data: MediaQueryData.fromWindow(tester.binding.window)
              .copyWith(size: const Size(1280, 720)),
          child: MaterialApp(
            home: Builder(
              builder: (BuildContext context) {
                final MediaQueryData mediaQuery = MediaQuery.of(context);
                final bool isLandscape =
                    ResponsiveWidget.isLandscape(context: context);
                final DeviceScreensType screenType =
                    ResponsiveWidget.deviceType(context);

                expect(isLandscape, isTrue);
                expect(mediaQuery.size.width, 1920);
                expect(screenType, DeviceScreensType.Desktop);

                return const Placeholder();
              },
            ),
          ),
        ),
      );

      addTearDown(() {
        tester.binding.window.clearPhysicalSizeTestValue();
        tester.binding.window.clearDevicePixelRatioTestValue();
      });
    });
  });
}

Future<void> _buildResponsiveWidget(
  WidgetTester tester, {
  Widget? smallScreen,
  Widget? mediumScreen,
  Widget? largeScreen,
}) async {
  return tester.pumpWidget(
    MaterialApp(
      home: ResponsiveWidget(
        smallScreen: smallScreen,
        mediumScreen: mediumScreen,
        largeScreen: largeScreen,
      ),
    ),
  );
}

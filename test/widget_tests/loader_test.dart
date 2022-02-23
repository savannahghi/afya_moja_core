import 'package:afya_moja_core/src/presentation/platform_loader.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  group('sil loader', () {
    testWidgets('should render correctly', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: SILPlatformLoader()));

      expect(find.byType(SILPlatformLoader), findsOneWidget);
    });

    testWidgets('should display cupertino indicator for IOS',
        (WidgetTester tester) async {
      debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
      await tester.pumpWidget(const MaterialApp(home: SILPlatformLoader()));

      expect(find.byType(SILPlatformLoader), findsOneWidget);
      expect(find.byKey(const Key('InboxCupertinoThemeKey')), findsOneWidget);
      debugDefaultTargetPlatformOverride = null;
    });

    testWidgets('should display circular indicator for android',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: SILPlatformLoader()));
      expect(find.byType(SILPlatformLoader), findsOneWidget);
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });
  });
}

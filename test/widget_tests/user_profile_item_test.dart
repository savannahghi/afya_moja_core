import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/app_asset_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserProfileItem', () {
    final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
      '/userProfile': (BuildContext context) => const Scaffold(),
      '/home': (BuildContext context) => const Scaffold(),
    };
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const Scaffold(
            body: UserProfileItem(
              iconPath: editProfileIconSvg,
              title: 'title',
              routeName: '/home',
            ),
          ),
          routes: routes,
        ),
      );
      await tester.pumpAndSettle();

      expect(find.text('title'), findsOneWidget);

      await tester.tap(find.text('title'));
      expect(find.byType(Scaffold), findsOneWidget);
    });
  });
}

// Flutter imports:

import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import 'package:afya_moja_core/src/app_strings.dart';

void main() {
  group('SearchWidget', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Center(
              child: Builder(
                builder: (BuildContext context) {
                  return SearchWidget(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Coming soon'),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ),
      );

      expect(find.text(searchUser), findsOneWidget);
      expect(find.byType(SvgPicture), findsOneWidget);
      await tester.tap(find.byType(SearchWidget));
    });
  });
}

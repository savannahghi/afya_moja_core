import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MemberListActionsDialog', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return MemberListActionsDialog(
                      memberID: '',
                      communityId: '',
                      memberName: '',
                      communityName: '',
                      onPromoteTapped: () {},
                    );
                  },
                ),
              );
            },
          ),
        ),
      );
      expect(find.byType(GestureDetector), findsOneWidget);
      await tester.tap(find.byType(GestureDetector));
      await tester.pumpAndSettle();

      expect(find.byType(Dialog), findsOneWidget);
      expect(find.byType(MyAfyaHubPrimaryButton), findsNWidgets(2));

      expect(find.byKey(promoteButtonKey), findsOneWidget);
      expect(find.byKey(banButtonKey), findsOneWidget);
      expect(find.byKey(removeButtonKey), findsOneWidget);
    });

    testWidgets('promote button works correctly', (WidgetTester tester) async {
      int tapped = 0;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return MemberListActionsDialog(
                      memberID: '',
                      communityId: '',
                      memberName: '',
                      communityName: '',
                      onPromoteTapped: () => tapped++,
                    );
                  },
                ),
              );
            },
          ),
        ),
      );

      expect(tapped, 0);

      expect(find.byType(GestureDetector), findsOneWidget);
      await tester.tap(find.byType(GestureDetector));
      await tester.pumpAndSettle();
      expect(find.byType(Dialog), findsOneWidget);

      final Finder promoteKeyFinder = find.byKey(promoteButtonKey);
      expect(promoteKeyFinder, findsOneWidget);

      await tester.tap(promoteKeyFinder);
      await tester.pumpAndSettle();
      expect(tapped, 1);

      await tester.tap(promoteKeyFinder);
      await tester.pumpAndSettle();
      expect(tapped, 2);
    });

    testWidgets('remove button works correctly', (WidgetTester tester) async {
      int tapped = 0;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return MemberListActionsDialog(
                      memberID: '',
                      communityId: '',
                      memberName: '',
                      communityName: '',
                      onRemoveTapped: () => tapped++,
                    );
                  },
                ),
              );
            },
          ),
        ),
      );

      expect(tapped, 0);
      expect(find.byType(GestureDetector), findsOneWidget);
      await tester.tap(find.byType(GestureDetector));
      await tester.pumpAndSettle();

      expect(find.byType(Dialog), findsOneWidget);

      final Finder removeButtonKeyFinder = find.byKey(removeButtonKey);
      expect(removeButtonKeyFinder, findsOneWidget);

      await tester.tap(removeButtonKeyFinder);
      await tester.pumpAndSettle();
      expect(tapped, 1);

      await tester.tap(removeButtonKeyFinder);
      await tester.pumpAndSettle();
      expect(tapped, 2);
    });

    testWidgets('works correctly banned user', (WidgetTester tester) async {
      int tapped = 0;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return MemberListActionsDialog(
                      memberID: 'test',
                      communityId: 'test',
                      communityName: 'test',
                      memberName: '',
                      isBanned: true,
                      onBanTapped: () => tapped++,
                    );
                  },
                ),
              );
            },
          ),
        ),
      );

      expect(tapped, 0);
      expect(find.byType(GestureDetector), findsOneWidget);
      await tester.tap(find.byType(GestureDetector));
      await tester.pumpAndSettle();

      expect(find.byType(Dialog), findsOneWidget);

      final Finder banButtonKeyFinder = find.byKey(banButtonKey);
      expect(banButtonKeyFinder, findsOneWidget);

      await tester.tap(banButtonKeyFinder);
      await tester.pumpAndSettle();
      expect(tapped, 1);

      await tester.tap(banButtonKeyFinder);
      await tester.pumpAndSettle();
      expect(tapped, 2);
    });

    testWidgets('works correctly for unbanned user',
        (WidgetTester tester) async {
      int tapped = 0;

      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return MemberListActionsDialog(
                      isBanned: true,
                      memberID: 'test',
                      communityId: 'test',
                      communityName: 'test',
                      memberName: '',
                      onBanTapped: () => tapped++,
                    );
                  },
                ),
              );
            },
          ),
        ),
      );

      expect(tapped, 0);
      expect(find.byType(GestureDetector), findsOneWidget);
      await tester.tap(find.byType(GestureDetector));
      await tester.pumpAndSettle();

      expect(find.byType(Dialog), findsOneWidget);

      final Finder banButtonKeyFinder = find.byKey(banButtonKey);
      expect(banButtonKeyFinder, findsOneWidget);

      await tester.tap(banButtonKeyFinder);
      await tester.pumpAndSettle();
      expect(tapped, 1);

      await tester.tap(banButtonKeyFinder);
      await tester.pumpAndSettle();
      expect(tapped, 2);
    });

    testWidgets('ban button should be replaced by a loading indicator',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              return GestureDetector(
                onTap: () => showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const MemberListActionsDialog(
                      memberID: 'test',
                      communityId: 'test',
                      communityName: 'test',
                      memberName: '',
                      isBanning: true,
                    );
                  },
                ),
              );
            },
          ),
        ),
      );
      expect(find.byType(GestureDetector), findsOneWidget);
      await tester.tap(find.byType(GestureDetector));
      await tester.pump();
      expect(find.byType(PlatformLoader), findsOneWidget);
    });
  });
}

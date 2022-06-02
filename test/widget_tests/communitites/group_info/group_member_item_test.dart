import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GroupMemberItem', () {
    testWidgets('on tapped works correctly', (WidgetTester tester) async {
      int tapped = 0;

      const Key itemKey = Key('itemKey');

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GroupMemberItem(
              userName: 'userName',
              memberID: 'memberID',
              communityId: 'communityId',
              communityName: 'communityName',
              userType: 'STAFF',
              onTap: () => tapped++,
              itemKey: itemKey,
            ),
          ),
        ),
      );

      expect(tapped, 0);

      await tester.tap(find.byKey(itemKey));
      expect(tapped, 1);

      await tester.tap(find.byKey(itemKey));
      expect(tapped, 2);
    });

    testWidgets('should show moderator badge', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GroupMemberItem(
              userName: 'userName',
              memberID: 'memberID',
              communityId: 'communityId',
              communityName: 'communityName',
              userType: 'STAFF',
              onTap: () {},
              isModerator: true,
            ),
          ),
        ),
      );

      expect(find.byType(GroupMemberBadge), findsOneWidget);
      expect(find.text(moderatorText), findsOneWidget);
    });

    testWidgets('should show banned badge', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: GroupMemberItem(
              userName: 'userName',
              memberID: 'memberID',
              communityId: 'communityId',
              communityName: 'communityName',
              userType: 'CLIENT',
              onTap: () {},
              isBanned: true,
            ),
          ),
        ),
      );

      expect(find.byType(GroupMemberBadge), findsOneWidget);
      expect(find.text(bannedString), findsOneWidget);
    });
  });
}

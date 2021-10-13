import 'package:afya_moja_core/src/community_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unicons/unicons.dart';

void main() {
  group('CommunityListItem', () {
    testWidgets('should render correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: CommunityListItem(
            title: 'Ruaka Questions Group',
            message: "Don't miss your appointment tomorrow",
            lastMessageDate: '12/03/2012',
            unreadNotificationCount: 5,
            isGroupMessage: true,
            onTap: (){},
          ),
        ),
      );
      expect(find.text('Ruaka Questions Group'), findsOneWidget);
      expect(
        find.text("Don't miss your appointment tomorrow"),
        findsOneWidget,
      );
      expect(find.text('12/03/2012'), findsOneWidget);
      expect(find.text('5'), findsOneWidget);
      expect(find.text('Group'), findsOneWidget);
      expect(find.byIcon(UniconsLine.user_square), findsOneWidget);
    });
    testWidgets('should show avatar image', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: CommunityListItem(
            title: 'Ruaka Questions Group',
            message: "Don't miss your appointment tomorrow",
            lastMessageDate: '12/03/2012',
            unreadNotificationCount: 5,
            isGroupMessage: true,
            avatarImage: const AssetImage('assets/images/feed_image_1.png'), onTap: (){},
          ),
        ),
      );
      expect(
        find.byWidgetPredicate(
          (Widget widget) =>
              widget is CircleAvatar &&
              widget.backgroundImage ==
                  const AssetImage('assets/images/feed_image_1.png'),
        ),
        findsOneWidget,
      );
    });
    testWidgets('should throw error if wrong params',
        (WidgetTester tester) async {
      expect(
        () async {
          await tester.pumpWidget(MaterialApp(
            home: CommunityListItem(
              title: 'Ruaka Questions Group',
              message: "Don't miss your appointment tomorrow",
              lastMessageDate: '12/03/2012',
              unreadNotificationCount: -1,
              onTap: (){},
            ),
          ),);
        },
        throwsAssertionError,
      );
    });
  });
}

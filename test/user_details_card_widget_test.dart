import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserDetailsCard', () {
    const String testString = 'testing';
    late String testString2 = '';
    testWidgets('should render correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: Builder(
              builder: (BuildContext context) {
                return UserDetailsCard(
                  age: testString,
                  home: testString,
                  name: testString,
                  cccNumber: testString,
                  phoneNumber: testString,
                  userInitials: testString,
                  onTapCorrectionRequest: () => testString2 = testString,
                );
              },
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text(testString), findsWidgets);

      final Finder correctionRequestButton =
          find.byKey(correctionRequestButtonKey);
      expect(correctionRequestButton, findsOneWidget);

      await tester.tap(correctionRequestButton);
      await tester.pumpAndSettle();
      expect(testString2, testString);
    });
    testWidgets('VoidCallBacks work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: UserDetailsCard(
            age: testString,
            home: testString,
            name: testString,
            cccNumber: testString,
            phoneNumber: testString,
            userInitials: testString,
            isAdmin: true,
            onTapInvite: () => testString2 = '1',
            onTapViewProfile: () => testString2 = '2',
            onTapEditUserProfile: () => testString2 = '3',
          ),
        ),
      );
      await tester.pumpAndSettle();
      expect(find.text(testString), findsWidgets);

      final Finder inviteButton = find.byKey(inviteButtonKey);
      final Finder viewProfileButton = find.byKey(viewProfileButtonKey);
      final Finder editUserProfileButton = find.byKey(editUserProfileButtonKey);
      expect(inviteButton, findsOneWidget);
      expect(viewProfileButton, findsOneWidget);
      expect(editUserProfileButton, findsOneWidget);

      await tester.tap(inviteButton);
      await tester.pumpAndSettle();
      expect(testString2, '1');

      await tester.tap(viewProfileButton);
      await tester.pumpAndSettle();
      expect(testString2, '2');

      await tester.tap(editUserProfileButton);
      await tester.pumpAndSettle();
      expect(testString2, '3');
    });
  });
}

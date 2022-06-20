import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('GroupMember', () {
    testWidgets('fromJson works correctly', (WidgetTester tester) async {
      final GroupMember memberFromJson = GroupMember.fromJson(
        <String, dynamic>{
          'user': <String, dynamic>{
            'id': 'bfddf863-f5ae-4087-8bb2-53e001f935c7',
            'username': 'kim',
            'role': 'user',
            'gender': 'male',
            'extraData': <String, dynamic>{
              'banned': false,
              'userType': 'CLIENT',
            }
          },
          'isModerator': true
        },
      );

      expect(
        memberFromJson.memberDetails?.id,
        'bfddf863-f5ae-4087-8bb2-53e001f935c7',
      );
      expect(memberFromJson.memberDetails?.username, 'kim');
      expect(memberFromJson.memberDetails?.role, 'user');
      expect(memberFromJson.memberDetails?.extraData?.isBanned, false);
      expect(
        memberFromJson.memberDetails?.extraData?.userType,
        UserType.CLIENT,
      );
      expect(memberFromJson.isModerator, true);
    });
  });
}

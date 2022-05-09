import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks/mocks.dart';

void main() {
  group('GroupMember', () {
    test('expects to convert GroupMember from json', () {
      expect(GroupMember.initial(), isA<GroupMember>());
      final GroupMember mockGroupMemberResponse =
          GroupMember.fromJson(mockGroupMember);
      expect(mockGroupMemberResponse, isA<GroupMember>());
    });
  });
}

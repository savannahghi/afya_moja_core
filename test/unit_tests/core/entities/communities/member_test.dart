import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks/mocks.dart';

void main() {
  group('Member', () {
    test('expects to convert Member from json', () {
      expect(Member.initial(), isA<Member>());
      final Member mockMemberResponse = Member.fromJson(mockMember);
      expect(mockMemberResponse, isA<Member>());
    });
  });
}

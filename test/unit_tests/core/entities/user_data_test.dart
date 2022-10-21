import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('UserData', () {
    testWidgets('fromJson works correctly', (WidgetTester tester) async {
      final UserData userDataFromJson = UserData.fromJson(<String, dynamic>{
        'ID': 'testID',
        'username': 'testUsername',
        'TermsAccepted': true,
        'Active': true,
        'Name': 'testName',
        'Contacts': <String, dynamic>{
          'id': 'testId',
          'contactType': 'PHONE',
          'contactValue': '0712345678',
          'optedIn': true,
          'active': true,
        },
      });

      expect(
        userDataFromJson.id,
        'testID',
      );
      expect(userDataFromJson.primaryContact?.contactType, ContactType.PHONE);

      final UserData userDataInitialData = UserData.initial();
      expect(
        userDataInitialData.id,
        UNKNOWN,
      );
      expect(
        userDataInitialData.primaryContact?.contactType,
        ContactType.UNKNOWN,
      );
    });
  });
}

import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ManagedClientsResponse', () {
    testWidgets('fromJson works correctly', (WidgetTester tester) async {
      final ManagedClientsResponse managedClientsResponseFromJson =
          ManagedClientsResponse.fromJson(
        <String, dynamic>{
          'getCaregiverManagedClients': <String, dynamic>{
            'ManagedClients': <dynamic>[
              <String, dynamic>{
                'caregiverConsent': true,
                'clientConsent': true,
                'workStationDetails': <String, dynamic>{
                  'Notifications': 1,
                  'Surveys': 1,
                  'Articles': 1,
                  'Messages': 1
                },
                'clientProfile': <String, dynamic>{
                  'ID': '0some-id',
                  'Username': 'testUserName',
                  'Active': true,
                  'TermsAccepted': true,
                }
              },
              <String, dynamic>{
                'caregiverConsent': true,
                'clientConsent': true,
                'workStationDetails': <String, dynamic>{
                  'Notifications': 0,
                  'Surveys': 0,
                  'Articles': 0,
                  'Messages': 0
                },
                'clientProfile': <String, dynamic>{
                  'ID': '0some-id',
                  'Username': 'testUserName',
                  'Active': true,
                  'TermsAccepted': true,
                }
              }
            ]
          }
        },
      );

      expect(
        managedClientsResponseFromJson
            .managedClients?.clients?.first.caregiverConsent,
        true,
      );
      expect(
        managedClientsResponseFromJson.managedClients?.clients?.first.user?.id,
        '0some-id',
      );
      expect(
        managedClientsResponseFromJson
            .managedClients?.clients?.first.workStationDetails?.notifications,
        1,
      );
    });
  });
}

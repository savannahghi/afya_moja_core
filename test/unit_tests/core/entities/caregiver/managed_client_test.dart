import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ManagedClient', () {
    test('initial works correctly', () {
      final ManagedClient managedClientInitial = ManagedClient.initial();

    
      expect(managedClientInitial.caregiverConsent, false);
      expect(managedClientInitial.user?.id, UNKNOWN);
      expect(managedClientInitial.clientConsent, false);
    });
  });
}

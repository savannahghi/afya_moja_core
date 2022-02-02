import 'package:afya_moja_core/helpers.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('helpers', () {
    final DateTime now = DateTime.now();
    test('formatPhoneNumber should return correct format', () {
      expect(
        formatPhoneNumber(
          countryCode: '+254',
          phoneNumber: '712345678',
        ),
        '+254712345678',
      );
      expect(
        formatPhoneNumber(
          countryCode: '+1',
          phoneNumber: '012345678',
        ),
        '+1012345678',
      );
    });

    test('getTokenExpiryTimestamp', () {
      expect(
        getTokenExpiryTimestamp('30').minute,
        now.add(const Duration(seconds: 30)).minute,
      );
    });
    test('hasTokenExpired should return and false accordingly', () {
    
      expect(
        hasTokenExpired(now.add(const Duration(minutes: 10)), now),
        false,
      );
      expect(
        hasTokenExpired(now.subtract(const Duration(minutes: 10)), now),
        true,
      );
    });
  });
}

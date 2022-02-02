import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('formatPhoneNumber', () {
    test('should format number correctly', () {
      String formatted =
          formatPhoneNumber(countryCode: '+254', phoneNumber: '798000000');
      expect(formatted, '+254798000000');

      formatted =
          formatPhoneNumber(countryCode: '254', phoneNumber: '798000000');
      expect(formatted, '+254798000000');

      formatted =
          formatPhoneNumber(countryCode: '+254', phoneNumber: '0798000000');
      expect(formatted, '+254798000000');
    });

    test('should handle +1 country code', () {
      final String formatted =
          formatPhoneNumber(countryCode: '+1', phoneNumber: '798000000');

      expect(formatted, '+1798000000');
    });
  });

  group('getTokenExpiryTimestamp', () {
    final DateTime now = DateTime.now();

    test('should return correct timestamp', () {
      expect(
        getTokenExpiryTimestamp('30').minute,
        now.add(const Duration(seconds: 30)).minute,
      );
    });
  });

  group('hasTokenExpired', () {
    final DateTime now = DateTime.now();
    test('should return true and false accordingly', () {
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

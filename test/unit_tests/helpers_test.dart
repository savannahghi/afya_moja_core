import 'dart:convert';

import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';

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

  group('processHttpResponse', () {
    test('returns true for succesful response', () {
      final Response httpResponse =
          Response(jsonEncode(<String, dynamic>{'data': 'data'}), 201);
      final ProcessedResponse processedRespnse =
          processHttpResponse(httpResponse);

      expect(processedRespnse.ok, true);
      expect(processedRespnse.response, httpResponse);
    });

    test('returns false for error response', () {
      final Response httpResponse = Response(
        jsonEncode(<String, dynamic>{'data': 'data', 'code': 9}),
        400,
      );

      final ProcessedResponse processedRespnse =
          processHttpResponse(httpResponse);

      expect(processedRespnse.ok, false);
      expect(processedRespnse.response, httpResponse);
      expect(processedRespnse.message, pinNotFound);
    });

    test('returns false for 500 response', () {
      final Response httpResponse =
          Response(jsonEncode(<String, dynamic>{'data': 'data'}), 500);
      final ProcessedResponse processedRespnse =
          processHttpResponse(httpResponse);

      expect(processedRespnse.ok, false);
      expect(processedRespnse.response, httpResponse);
    });

    test('returns false for 408 response', () {
      final Response httpResponse =
          Response(jsonEncode(<String, dynamic>{'data': 'data'}), 408);

      final ProcessedResponse processedRespnse =
          processHttpResponse(httpResponse);

      expect(processedRespnse.ok, false);
      expect(processedRespnse.response, httpResponse);
      expect(processedRespnse.message, slowInternet);
    });

    test('returns generic error for unhandled code', () {
      final Response httpResponse =
          Response(jsonEncode(<String, dynamic>{'data': 'data'}), 300);

      final ProcessedResponse processedRespnse =
          processHttpResponse(httpResponse);

      expect(processedRespnse.ok, false);
      expect(processedRespnse.response, httpResponse);
      expect(processedRespnse.message, defaultUserFriendlyMessage);
    });
  });

  group('getErrorMessage', () {
    test('returns error with specific message', () {
      final String error = getErrorMessage('sending request');
      expect(
        error,
        'Sorry, an error occurred while sending request. Please try again later, '
        'or contact support center',
      );
    });
  });
}

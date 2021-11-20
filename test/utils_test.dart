import 'package:afya_moja_core/src/enums.dart';
import 'package:afya_moja_core/src/utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Utils', () {
    test('should return correct country', () {
      expect(popValue('Uganda'), Country.uganda);
      expect(popValue('Tanzania'), Country.tanzania);
      expect(popValue('United Kingdom'), Country.uk);
      expect(popValue('Belgium'), Country.belgium);
      expect(popValue('Nigeria'), Country.nigeria);

      expect(getCountry(Country.uganda), supportedCountries['uganda']);
      expect(getCountry(Country.tanzania), supportedCountries['tanzania']);
      expect(getCountry(Country.uk), supportedCountries['uk']);
      expect(getCountry(Country.belgium), supportedCountries['belgium']);
      expect(getCountry(Country.us), supportedCountries['usa']);
      expect(getCountry(Country.nigeria), supportedCountries['nigeria']);
    });
  });
}

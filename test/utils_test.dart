import 'package:afya_moja_core/src/enums.dart';
import 'package:afya_moja_core/src/utils.dart';
import 'package:flutter/material.dart';
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


/// Please refer to:
///
///  https://developer.android.com/training/multiscreen/screendensities#dips-pels
const Size typicalPhoneScreenSizePortrait = Size(320, 480);
const Size typicalPhoneScreenSizeLandscape = Size(480, 320);

const Size mediumSizedTabletPortrait = Size(600, 1024);
const Size mediumSizedTabletLandscape = Size(1024, 600);

const Size tabletPortrait = Size(720, 1280);
const Size tabletLandscape = Size(1280, 720);

const Size desktop = Size(1920, 1280);

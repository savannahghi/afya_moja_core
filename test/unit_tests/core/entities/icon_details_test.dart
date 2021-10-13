import 'package:afya_moja_core/domain/core/entities/icon_details.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('IconDetails', () {
    test('expects to convert IconDetails from json', () {
      const String testAssetString = 'assets/icons/calendar_icon.svg';

      final Map<String, dynamic> mockIconDetails = <String, dynamic>{
        'url': testAssetString
      };

      final IconDetails iconDetails = IconDetails.fromJson(mockIconDetails);
      expect(iconDetails, isA<IconDetails>());
    });
  });
}

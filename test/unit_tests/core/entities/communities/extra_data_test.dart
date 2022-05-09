import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../mocks/mocks.dart';

void main() {
  group('ExtraData', () {
    test('expects to convert ExtraData from json', () {
      expect(ExtraData.initial(), isA<ExtraData>());
      final ExtraData mockExtraDataResponse = ExtraData.fromJson(mockExtraData);
      expect(mockExtraDataResponse, isA<ExtraData>());
    });
  });
}

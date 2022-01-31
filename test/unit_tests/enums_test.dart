import 'package:afya_moja_core/enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('enums', () {
    test('expects get enum names in uppercase', () {
      expect(Flavour.consumer.name, 'CONSUMER');
    });
  });
}

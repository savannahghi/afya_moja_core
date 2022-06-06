import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('spaces', () {
    testWidgets('are correct values', (WidgetTester tester) async {
      SizedBox box = size15VerticalSizedBox;
      expect(box.height, 15);
      expect(box.width, isNull);

      box = size40VerticalSizedBox;
      expect(box.height, 40);
      expect(box.width, isNull);

      box = mediumHorizontalSizedBox;
      expect(box.height, isNull);
      expect(box.width, 20);

      box = largeHorizontalSizedBox;
      expect(box.height, isNull);
      expect(box.width, 30);

      box = veryLargeHorizontalSizedBox;
      expect(box.height, isNull);
      expect(box.width, 50);
    });
  });
}

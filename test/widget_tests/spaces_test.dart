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

      box = extremelySmallVerticalSizedBox;
      expect(box.height, 2);
      expect(box.width, isNull);

      box = extremelyLargeVerticalSizedBox;
      expect(box.height, 60);
      expect(box.width, isNull);

      box = size100VerticalSizedBox;
      expect(box.height, 100);
      expect(box.width, isNull);

      box = size70VerticalSizedBox;
      expect(box.height, 70);
      expect(box.width, isNull);
      
      box = size120VerticalSizedBox;
      expect(box.height, 120);
      expect(box.width, isNull);
    });
  });
}

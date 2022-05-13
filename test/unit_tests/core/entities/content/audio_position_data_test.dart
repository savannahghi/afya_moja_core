// Package imports:
import 'package:afya_moja_core/src/domain/core/entities/content/audio_position_data.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('AudioPositionData', () {
    expect(
      AudioPositionData(const Duration(seconds: 1), const Duration(seconds: 1), const Duration(seconds: 1)),
      isA<AudioPositionData>(),
    );
  });
}

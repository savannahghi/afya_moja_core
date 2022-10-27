import 'package:afya_moja_core/src/domain/core/entities/workstation_details.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('initial workstation details', () {
    final WorkStationDetails workStationDetails = WorkStationDetails.initial();
    expect(workStationDetails.messages, 0);
    expect(workStationDetails.notifications, 0);
    expect(workStationDetails.surveys, 0);
  });
}

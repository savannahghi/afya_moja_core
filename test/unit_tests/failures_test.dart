import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/failures/value_object_failure.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MyAfyaException', () {
    test('should throw instance of MyAfyaException', () {
      expect(
        () => throw MyAfyaException(
          cause: 'no_user_account_found',
          message: 'No user',
        ),
        throwsException,
      );
    });

    test('expects UnExpectedValueObjectError.toString to return string', () {
      final UnExpectedValueObjectError<String> err =
          UnExpectedValueObjectError<String>(
        const ValueObjectFailure<String>.invalidEmailAddress(
          failedValue: 'UNKNOWN',
        ),
      );
      expect(
        err.toString(),
        equals(
          'Unrecoverable valueObjectFailure ValueObjectFailure<String>.invalidEmailAddress(failedValue: UNKNOWN)',
        ),
      );
    });
  });
}

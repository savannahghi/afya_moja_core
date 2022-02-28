import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/failures/value_object_failure.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Name', () {
    const String lowerCaseNameExample = 'brian';
    const String titleCaseNameExample = 'Brian';
    const String nameExample = 'brian';

    test('expects title cased name to be returned', () {
      final Name name = Name.titleCased(
        input: lowerCaseNameExample,
      );

      name.value.fold(
        (ValueObjectFailure<String> left) => expect(left, null),
        (String right) => expect(right, titleCaseNameExample),
      );
    });

    test('expects name be returned', () {
      final Name name = Name.maybe(input: nameExample);

      name.value.fold(
        (ValueObjectFailure<String> left) => expect(left, null),
        (String right) => expect(right, nameExample),
      );
    });
    test('expects Unknown name to  be returned', () {
      final Name name = Name.maybe();

      name.value.fold(
        (ValueObjectFailure<String> left) => expect(left, null),
        (String right) => expect(right, 'UNKNOWN'),
      );
    });

    test('expects valid name from json to be returned', () {
      final Name phoneNumber = Name.fromJson(nameExample);

      phoneNumber.value.fold(
        (ValueObjectFailure<String> left) => expect(left, ValueObjectFailure),
        (String right) => expect(right, nameExample),
      );
    });

    test('equality test', () {
      final Name name = Name.withValue(nameExample);

      expect(name, Name.withValue(nameExample));
    });

    test('toJson', () {
      final Name name = Name.withValue(nameExample);

      expect(name.toJson(), 'brian');
    });
  });
}

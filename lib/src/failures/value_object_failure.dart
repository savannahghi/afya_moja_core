import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_object_failure.freezed.dart';

/// [ValueObjectFailure] represents generic errors from our value objects.
/// In the event a value requires it's own specialized failures, we will create
/// a new Failure class specialized for that use case.
@freezed
class ValueObjectFailure<T> with _$ValueObjectFailure<T> {
  const factory ValueObjectFailure.invalidEmailAddress({
    required T failedValue,
  }) = InvalidEmailAddress<T>;

  const factory ValueObjectFailure.invalidPhoneNumber({
    required T failedValue,
  }) = InvalidPhoneNumber<T>;

  const factory ValueObjectFailure.emailAddressMustNotBeNull({
    required T failedValue,
  }) = EmailAddressMustNotBeNull<T>;
}

class UnExpectedValueObjectError<U> extends Error {
  UnExpectedValueObjectError(this.valueObjectFailure);

  final ValueObjectFailure<U> valueObjectFailure;

  @override
  String toString() {
    return 'Unrecoverable valueObjectFailure $valueObjectFailure';
  }
}

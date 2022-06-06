import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/domain/value_objects/value_object.dart';
import 'package:afya_moja_core/src/failures/value_object_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';

part 'phone_number.g.dart';

@JsonSerializable()
@_PhoneNumberConverter()
class PhoneNumber extends ValueObject<String> {
  /// [PhoneNumber] is the default constructor of this class. It should `NOT` be used to
  /// create a new instance of [PhoneNumber]. It's here solely for the purpose to satisfy the compiler
  /// since [JsonSerializable] demands for it. Always use [PhoneNumber.withValue(value)] constructor
  /// which will internally check for the validity of the provided input
  const PhoneNumber(this.value);

  const PhoneNumber._(this.value);

  /// [PhoneNumber.withValue] the constructor that should be used in all useCases.
  factory PhoneNumber.withValue(String value) {
    return PhoneNumber._(
      validatePhoneNumber(value),
    );
  }

  factory PhoneNumber.fromJson(String value) =>
      _$PhoneNumberFromJson(<String, dynamic>{'value': value});

  @override
  final Either<ValueObjectFailure<String>, String> value;

  String toJson() => const _PhoneNumberConverter().toJson(this.value);
}

Either<ValueObjectFailure<String>, String> validatePhoneNumber(String input) {
  if (kenyanPhoneRegExp.hasMatch(input) ||
      (americanPhoneRegExp.hasMatch(input)) ||
      (unitedKingdomRegExp.hasMatch(input)) ||
      (genericInternationalRegExp.hasMatch(input))) {
    return right(input);
  } else {
    return left(
      ValueObjectFailure<String>.invalidPhoneNumber(failedValue: input),
    );
  }
}

/// [_PhoneNumberConverter] is a custom serialization class for [PhoneNumber]
/// A custom converter is needed because [JsonSerializer] has no way of properly
/// serializing type [Either]
class _PhoneNumberConverter
    implements
        JsonConverter<Either<ValueObjectFailure<String>, String>, String> {
  const _PhoneNumberConverter();

  @override
  Either<ValueObjectFailure<String>, String> fromJson(String value) =>
      validatePhoneNumber(value);

  @override
  String toJson(Either<ValueObjectFailure<String>, String> object) =>
      object.fold(
        (ValueObjectFailure<String> left) => UNKNOWN,
        (String right) => right,
      );
}

import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/domain/value_objects/value_object.dart';
import 'package:afya_moja_core/src/failures/value_object_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

part 'name.g.dart';

/// [Name] value object is a generic object that should be used to hold instances of `names`
/// A use case would be `firstName`, or `lastName` or `userName`

@JsonSerializable()
@_NameConverter()
class Name extends ValueObject<String> {
  /// [Name] is the default constructor of this class. It should `NOT` be used to
  /// create a new instance of [Name]. It's here solely for the purpose to satisfy the compiler
  /// since [JsonSerializable] demands for it. Always use [Name.withValue(value)] constructor
  const Name(this.value);

  const Name._(this.value);

  /// [Name.maybe] is used when the name is optional. Example use case;
  /// middleName
  factory Name.maybe({String? input}) {
    if (input == null) {
      return Name._(right(UNKNOWN));
    }
    return Name._(right(input));
  }

  /// [Name.titleCased] is used when the name to returned has to be titleCased
  factory Name.titleCased({required String input}) {
    final String titleCased = input
        .toLowerCase()
        .split(' ')
        .map((String e) => e.trim())
        .map((String word) => toBeginningOfSentenceCase(word))
        .join(' ');
    return Name._(right(titleCased));
  }

  /// [Name] constructor is used in instance when the name must be provided. Example useCase;
  factory Name.withValue(String value) {
    return Name._(right(value));
  }

  factory Name.fromJson(String value) =>
      _$NameFromJson(<String, dynamic>{'value': value});

  @override
  final Either<ValueObjectFailure<String>, String> value;

  String toJson() => const _NameConverter().toJson(this.value);
}

/// [_NameConverter] is a custom serialization class for [NameConverter]
/// A custom converter is needed because [JsonSerializer] has no way of properly
/// serializing type [Either]
class _NameConverter
    implements
        JsonConverter<Either<ValueObjectFailure<String>, String>, String> {
  const _NameConverter();

  @override
  Either<ValueObjectFailure<String>, String> fromJson(String value) {
    return right(value);
  }

  @override
  String toJson(Either<ValueObjectFailure<String>, String> object) =>
      object.getOrElse(() => UNKNOWN);
}

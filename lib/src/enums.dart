import 'package:flutter/foundation.dart';

enum Country { kenya, uganda, tanzania, us, uk, belgium, nigeria }

/// [Flavour]
enum Flavour { consumer, pro, unknown }

/// [FlavourEx] extends [Flavour] enum to get the values as
/// strings
extension FlavourEx on Flavour {
  String get name {
    return describeEnum(this).toUpperCase();
  }
}

/// Security Questions response type
// ignore: constant_identifier_names
enum SecurityQuestionResponseType { NUMBER, TEXT, DATE, UNKNOWN }

/// [SecurityQuestionResponseTypeEx] extends [SecurityQuestionResponseType] enum to get the values as
/// strings
extension SecurityQuestionResponseTypeEx on SecurityQuestionResponseType {
  String get name {
    return describeEnum(this).toUpperCase();
  }
}

// ignore: constant_identifier_names
enum EditInformationInputType { Text, DropDown }
// ignore: constant_identifier_names
enum CaregiverType { Father, Mother, Sibling }

extension CaregiverTypeEx on CaregiverType {
  String get name {
    return describeEnum(this);
  }
}

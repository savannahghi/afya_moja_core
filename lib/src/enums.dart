// ignore_for_file: constant_identifier_names

import 'package:afya_moja_core/src/helpers.dart';
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
enum SecurityQuestionResponseType { NUMBER, TEXT, DATE, UNKNOWN }

/// [SecurityQuestionResponseTypeEx] extends [SecurityQuestionResponseType] enum to get the values as
/// strings
extension SecurityQuestionResponseTypeEx on SecurityQuestionResponseType {
  String get name {
    return describeEnum(this).toUpperCase();
  }
}

enum EditInformationInputType { Text, DropDown }
enum CaregiverType { FATHER, MOTHER, SIBLING, HEALTHCARE_PROFESSIONAL }

extension CaregiverTypeEx on CaregiverType {
  String get name {
    return titleCase(describeEnum(this)).replaceAll(RegExp('_'), ' ');
  }
}

enum DeviceScreensType { Mobile, Tablet, Desktop }

enum Gender { male, female, other, unknown }

extension GenderEx on Gender {
  String get name {
    return describeEnum(this);
  }
}

enum NotificationType { APPOINTMENT, SERVICE_REQUEST, COMMUNITIES, UNKNOWN }

extension RoleName on RoleValue {
  String get name {
    return describeEnum(this).split('_').join(' ');
  }
}

enum RoleValue {
  SYSTEM_ADMINISTRATOR,
  COMMUNITY_MANAGEMENT,
  CONTENT_MANAGEMENT,
  CLIENT_MANAGEMENT,
}

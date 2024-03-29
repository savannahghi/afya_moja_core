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

enum NotificationType {
  APPOINTMENT,
  SERVICE_REQUEST,
  COMMUNITIES,
  SURVEYS,
  ROLE_ASSIGNMENT,
  ROLE_REVOCATION,
  DEMOTE_MODERATOR,
  PROMOTE_TO_MODERATOR,
  UNKNOWN
}

extension NotificationTypeEx on NotificationType {
  String get name {
    return describeEnum(this);
  }
}

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

enum UserType { CLIENT, STAFF, UNKNOWN }

extension UserTypeEx on UserType {
  String get name {
    return describeEnum(this);
  }
}

/// The type of content being served to the user
enum ContentType { AUDIO_VIDEO, DOCUMENT, ARTICLE, PDF_DOCUMENT, UNKNOWN }

enum FeaturedMediaType { audio, video, UNKNOWN }

enum ContentDisplayedType { RECENT, FEED, BOOKMARK, UNKNOWN }

/// The type of contact being used
enum ContactType { PHONE, EMAIL, UNKNOWN }

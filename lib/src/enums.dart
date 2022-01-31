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

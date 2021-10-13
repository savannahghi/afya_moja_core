typedef OnChangedString = void Function(String);

typedef PhoneNumberFormatterFunc = String Function({
  required String countryCode,
  required String phoneNumber,
});

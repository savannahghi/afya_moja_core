import 'dart:async';
import 'dart:convert';

import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/constants.dart';
import 'package:app_wrapper/app_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_graphql_client/graph_client.dart';
import 'package:flutter_graphql_client/graph_constants.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:intl/intl.dart';

String formatPhoneNumber({
  required String countryCode,
  required String phoneNumber,
}) {
  final String _countryCode =
      !countryCode.startsWith('+') ? '+$countryCode' : countryCode;

  if (_countryCode == '+1') {
    return '$countryCode$phoneNumber';
  }

  final String _phoneNumber =
      phoneNumber.startsWith('0') ? phoneNumber.substring(1) : phoneNumber;

  return '$_countryCode$_phoneNumber';
}

/// expiresIn is in seconds
DateTime getTokenExpiryTimestamp(String? expiresIn) {
  final DateTime now = DateTime.now();
  if (expiresIn != null && expiresIn.isNotEmpty && isNumeric(expiresIn)) {
    return now.add(Duration(seconds: int.tryParse(expiresIn) ?? 0));
  }
  return now;
}

/// Checks if token has expired based on expiry datetime
/// returns true if token expires in 10 minutes or less
/// otherwise returns false
bool hasTokenExpired(DateTime expiresAt, DateTime now) {
  return expiresAt.difference(now).inMinutes < 10;
}

bool isNumeric(String? s) {
  if (s == null) {
    return false;
  }
  return int.tryParse(s) != null;
}

int unMarshallErrorResponse(Map<String, dynamic>? body) {
  if (body != null && body.containsKey('code')) {
    final String code = body['code']?.toString() ?? '';
    return int.tryParse(code) ?? 11;
  } else {
    return 11;
  }
}

ProcessedResponse processHttpResponse(Response response) {
  if (<int>[200, 201, 202].contains(response.statusCode)) {
    return ProcessedResponse(ok: true, response: response);
  }

  final Map<String, dynamic> body =
      json.decode(response.body) as Map<String, dynamic>;

  final int code = unMarshallErrorResponse(body);

  if (response.statusCode == 400 || response.statusCode == 500) {
    return ProcessedResponse(
      ok: false,
      response: response,
      message: getUserFriendlyMsg(code),
    );
  }

  if (response.statusCode == 408) {
    return ProcessedResponse(
      ok: false,
      response: response,
      message: getUserFriendlyMsg(0),
    );
  }

  return ProcessedResponse(
    ok: false,
    response: response,
    message: getErrorMessage(),
  );
}

String getUserFriendlyMsg(int code) {
  switch (code) {
    case 0:
      return slowInternet;
    case 4:
      return userWithThatPhoneExists;
    case 5:
      return userWithThatEmailExists;
    case 6:
      return usernameExists;
    case 7:
    case 10:
      return userNotFound;
    case 8:
      return wrongLoginCredentials;
    case 9:
      return pinNotFound;

    default:
      return defaultUserFriendlyMessage;
  }
}

String getErrorMessage([String message = '']) {
  if (message.isEmpty) {
    return defaultUserFriendlyMessage;
  } else {
    return 'Sorry, an error occurred while $message.'
        ' Please try again later, or contact support center';
  }
}

/// [isValidPhoneNumber] checks if a number is either a [Kenyan] , [American],  [UK] or [Belgium] phone number
bool isValidPhoneNumber(String phone) {
  if (kenyanPhoneRegExp.hasMatch(phone) ||
      (americanPhoneRegExp.hasMatch(phone)) ||
      (unitedKingdomRegExp.hasMatch(phone)) ||
      (genericInternationalRegExp.hasMatch(phone))) {
    return true;
  } else {
    return false;
  }
}

/// [validateKenyanNumber] checks if a number is either has either prefix of '+254111', '+254110', '+254100', '+2540101', '+254102' or '+2547xx'
bool validateKenyanNumber(String phone) {
  String prefix;
  final String fifthChar = phone.substring(4, 5);
  if (fifthChar == '7') {
    return true;
  } else if (fifthChar == '1') {
    prefix = phone.substring(0, 7);
    if (validPrefixes.contains(prefix)) {
      return true;
    }
    return false;
  } else {
    return false;
  }
}

String? parseError(Map<String, dynamic>? body) {
  if (body == null) return null;

  final Object? error =
      body.containsKey('errors') ? body['errors'] : body['error'];

  if (error == null) return null;

  if (error is List<dynamic>) {
    final Map<String, dynamic> firstEntry = error.first as Map<String, dynamic>;
    return firstEntry['message'] as String;
  }

  if (error is String) {
    return error.contains(RegExp('ID token', caseSensitive: false))
        ? kLoginLogoutPrompt
        : error;
  }

  return null;
}

/// [snackbar]
SnackBar snackbar({
  required dynamic
      content, // [content] must be either of type [Widget] or [String]
  int durationSeconds = 10,
  String? label,
  Function? callback,
}) {
  return SnackBar(
    content: content.runtimeType == String
        ? Text(content as String)
        : content as Widget,
    duration: Duration(seconds: durationSeconds),
    action: callback != null
        ? SnackBarAction(label: label!, onPressed: callback as void Function())
        : null,
  );
}

/// [Dismiss snackbar]
SnackBarAction dismissSnackBar(String text, Color color, BuildContext context) {
  return SnackBarAction(
    label: text,
    textColor: color,
    onPressed: () {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
    },
  );
}

/// [extractNamesInitials] => Extracts name initials from a name
///
/// Usage:
///
/// If you pass in a name like 'Abiud Orina', it returns 'AO'
String extractNamesInitials({required String name}) {
  final List<String> parts = name.split(' ');
  if (parts.length >= 2) {
    final StringBuffer initials = StringBuffer();
    for (int i = 0; i <= 1; i++) {
      final String part = parts[i];
      initials.write(part[0].toUpperCase());
    }
    return initials.toString().trim().substring(0, 2);
  }
  return parts.first.split('')[0].toUpperCase();
}

/// [titleCase] returns a title cased sentence
String titleCase(String sentence) {
  return sentence
      .toLowerCase()
      .split(' ')
      .map((String e) => e.trim())
      .map((String word) => toBeginningOfSentenceCase(word))
      .join(' ');
}

/// [removeUnderscores] removes underscores from a sentence
String removeUnderscores(String sentence) {
  return titleCase(sentence.replaceAll('_', ' ').toLowerCase());
}

/// [Generic Fetch Function]
/// a generic fetch function for fetching all the problems, allergies
/// medications, tests and diagnoses for the current patient
/// in an episode
///
/// it takes in a [String queryString], the Map of the query variables [variables],
/// the BuildContext [context], and a stream controller [streamController] in which the data is added to
///
/// it then updates the stream controller with the returned data (if any) or
/// an error if there was an error
Future<dynamic> genericFetchFunction({
  required StreamController<dynamic> streamController,
  required BuildContext context,
  required String queryString,
  required Map<String, dynamic> variables,
  required String logTitle,
  String? logDescription,
}) async {
  streamController.add(<String, dynamic>{'loading': true});

  final IGraphQlClient _client = AppWrapperBase.of(context)!.graphQLClient;

  /// fetch the data from the api
  final http.Response response = await _client.query(
    queryString,
    variables,
  );

  final Map<String, dynamic> payLoad = _client.toMap(response);
  final String? error = parseError(payLoad);

  if (error != null) {
    return streamController
        .addError(<String, dynamic>{'error': _client.parseError(payLoad)});
  }

  return (payLoad['data'] != null)
      ? streamController.add(payLoad['data'])
      : streamController.add(null);
}

/// [getDeviceType]
DeviceScreensType getDeviceType(BuildContext context) {
  final MediaQueryData mediaQuery = MediaQuery.of(context);
  final Orientation deviceOrientation = mediaQuery.orientation;
  double deviceWidth = 0;
  if (deviceOrientation == Orientation.landscape) {
    deviceWidth = mediaQuery.size.height;
  } else {
    deviceWidth = mediaQuery.size.width;
  }

  if (deviceWidth > 1200) {
    return DeviceScreensType.Desktop;
  }
  if (deviceWidth > 600) {
    return DeviceScreensType.Tablet;
  }
  return DeviceScreensType.Mobile;
}

/// [getGreetingMessage] gets the current time of day and determines which type of greetings to show
/// to the user
String getGreetingMessage(String? firstName, {int? currentHour}) {
  final int hour = currentHour ?? DateTime.now().hour;
  final String name = firstName == null ? '' : ', $firstName';
  if (hour < 12) {
    return 'Good Morning$name';
  }
  if (hour < 17) {
    return 'Good Afternoon$name';
  }
  return 'Good Evening$name';
}

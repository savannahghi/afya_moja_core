import 'dart:convert';

import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/app_asset_strings.dart';
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart';
import 'package:shared_themes/spaces.dart';

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

Future<dynamic> showFeedbackBottomSheet({
  required BuildContext context,
  required String modalContent,
  required String imageAssetPath,
}) async {
  return showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.transparent,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Container(
        key: feedbackBottomSheetKey,
        padding: MediaQuery.of(context).viewInsets,
        child: Container(
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          constraints: const BoxConstraints(
            maxWidth: 420,
          ),
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          margin: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Flexible(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SvgPicture.asset(
                        imageAssetPath,
                        height: 34.0,
                        width: 34.0,
                      ),
                      mediumHorizontalSizedBox,
                      Flexible(
                        child: Text(
                          modalContent,
                          style: normalSize14Text(),
                        ),
                      ),
                    ],
                  ),
                ),
                smallHorizontalSizedBox,
                Container(
                  margin: const EdgeInsets.only(top: 4),
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Image(
                      key: feedbackBottomSheetCloseIconKey,
                      image: AssetImage(closeIconUrl),
                      color: Colors.black54,
                      height: 16.0,
                      width: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}

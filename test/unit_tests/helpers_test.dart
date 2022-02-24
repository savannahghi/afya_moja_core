import 'dart:async';
import 'dart:convert';

import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:app_wrapper/app_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';

import '../mocks/mocks.dart';

void main() {
  group('formatPhoneNumber', () {
    test('should format number correctly', () {
      String formatted =
          formatPhoneNumber(countryCode: '+254', phoneNumber: '798000000');
      expect(formatted, '+254798000000');

      formatted =
          formatPhoneNumber(countryCode: '254', phoneNumber: '798000000');
      expect(formatted, '+254798000000');

      formatted =
          formatPhoneNumber(countryCode: '+254', phoneNumber: '0798000000');
      expect(formatted, '+254798000000');
    });

    test('should handle +1 country code', () {
      final String formatted =
          formatPhoneNumber(countryCode: '+1', phoneNumber: '798000000');

      expect(formatted, '+1798000000');
    });
  });

  group('getTokenExpiryTimestamp', () {
    final DateTime now = DateTime.now();

    test('should return correct timestamp', () {
      expect(
        getTokenExpiryTimestamp('30').minute,
        now.add(const Duration(seconds: 30)).minute,
      );
    });
  });

  group('hasTokenExpired', () {
    final DateTime now = DateTime.now();
    test('should return true and false accordingly', () {
      expect(
        hasTokenExpired(now.add(const Duration(minutes: 10)), now),
        false,
      );

      expect(
        hasTokenExpired(now.subtract(const Duration(minutes: 10)), now),
        true,
      );
    });
  });

  group('processHttpResponse', () {
    test('returns true for succesful response', () {
      final Response httpResponse =
          Response(jsonEncode(<String, dynamic>{'data': 'data'}), 201);
      final ProcessedResponse processedRespnse =
          processHttpResponse(httpResponse);

      expect(processedRespnse.ok, true);
      expect(processedRespnse.response, httpResponse);
    });

    test('returns false for error response', () {
      final Response httpResponse = Response(
        jsonEncode(<String, dynamic>{'data': 'data', 'code': 9}),
        400,
      );

      final ProcessedResponse processedRespnse =
          processHttpResponse(httpResponse);

      expect(processedRespnse.ok, false);
      expect(processedRespnse.response, httpResponse);
      expect(processedRespnse.message, pinNotFound);
    });

    test('returns false for 500 response', () {
      final Response httpResponse =
          Response(jsonEncode(<String, dynamic>{'data': 'data'}), 500);
      final ProcessedResponse processedRespnse =
          processHttpResponse(httpResponse);

      expect(processedRespnse.ok, false);
      expect(processedRespnse.response, httpResponse);
    });

    test('returns false for 408 response', () {
      final Response httpResponse =
          Response(jsonEncode(<String, dynamic>{'data': 'data'}), 408);

      final ProcessedResponse processedRespnse =
          processHttpResponse(httpResponse);

      expect(processedRespnse.ok, false);
      expect(processedRespnse.response, httpResponse);
      expect(processedRespnse.message, slowInternet);
    });

    test('returns generic error for unhandled code', () {
      final Response httpResponse =
          Response(jsonEncode(<String, dynamic>{'data': 'data'}), 300);

      final ProcessedResponse processedRespnse =
          processHttpResponse(httpResponse);

      expect(processedRespnse.ok, false);
      expect(processedRespnse.response, httpResponse);
      expect(processedRespnse.message, defaultUserFriendlyMessage);
    });
  });

  group('getErrorMessage', () {
    test('returns error with specific message', () {
      final String error = getErrorMessage('sending request');
      expect(
        error,
        'Sorry, an error occurred while sending request. Please try again later, '
        'or contact support center',
      );
    });
  });
  test('should test other phone number', () {
    expect(
      formatPhoneNumber(phoneNumber: '1234567', countryCode: '+255'),
      '+2551234567',
    );
    expect(validatePhoneNumber('+2551234567'), true);

    expect(
      formatPhoneNumber(countryCode: '254', phoneNumber: '790123456'),
      '+254790123456',
    );
    expect(validatePhoneNumber('+254790123456'), true);

    expect(
      formatPhoneNumber(countryCode: '254', phoneNumber: '0790123456'),
      '+254790123456',
    );

    expect(
      formatPhoneNumber(countryCode: '+1', phoneNumber: '100000'),
      '+1100000',
    );
    expect(validatePhoneNumber('+1100000'), true);

    expect(
      formatPhoneNumber(countryCode: '+254', phoneNumber: '07100000'),
      '+2547100000',
    );

    // Output should be +442087599036 (A UK phone number)
    final String formattedUKPhoneNumber =
        formatPhoneNumber(countryCode: '+44', phoneNumber: '2087599036');
    expect(formattedUKPhoneNumber, '+442087599036');

    // validate the phone number
    expect(validatePhoneNumber(formattedUKPhoneNumber), true);

    // Output should be +32460205037 (A Belgium phone number)
    final String formattedBelgiumPhoneNumber =
        formatPhoneNumber(countryCode: '+32', phoneNumber: '460205037');
    expect(formattedBelgiumPhoneNumber, '+32460205037');

    // validate the phone number
    expect(validatePhoneNumber(formattedBelgiumPhoneNumber), true);

    // Output should be +2547123456789 (A normal Kenyan phone number)
    final String formattedNormalKenyanPhoneNumber =
        formatPhoneNumber(countryCode: '+254', phoneNumber: '7123456789');
    expect(formattedNormalKenyanPhoneNumber, '+2547123456789');

    // validate the phone number
    expect(validatePhoneNumber(formattedNormalKenyanPhoneNumber), true);

    // Output should be +254110123456 (A new Safaricom phone number)
    final String formattedNewSafaricomKenyanPhoneNumber =
        formatPhoneNumber(countryCode: '+254', phoneNumber: '110123456');
    expect(formattedNewSafaricomKenyanPhoneNumber, '+254110123456');

    // validate the phone number
    expect(validatePhoneNumber(formattedNewSafaricomKenyanPhoneNumber), true);

    // Output should be +254110123456 (A new Safaricom phone number)
    final String formattedKenyanPhoneNumberWithSpaces =
        formatPhoneNumber(countryCode: '+254', phoneNumber: '110123456');
    expect(formattedKenyanPhoneNumberWithSpaces, '+254110123456');

    // validate the phone number
    expect(validatePhoneNumber(formattedKenyanPhoneNumberWithSpaces), true);
  });

  testWidgets('should show snackbar and dismiss it',
      (WidgetTester tester) async {
    bool isSnackBarActionTapped = false;
    final SnackBar snackBar = snackbar(
      content: 'Sample snackbar',
      durationSeconds: 1,
      label: 'Snackbar',
      callback: () {
        isSnackBarActionTapped = true;
      },
    );
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: Builder(
              builder: (BuildContext context) {
                return ElevatedButton(
                  key: const Key('show_snackbar_button'),
                  onPressed: () {
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(snackBar);
                  },
                  child: const Text('Show Snackbar'),
                );
              },
            ),
          ),
        ),
      ),
    );

    // check that the UI is loaded
    expect(find.byKey(const Key('show_snackbar_button')), findsOneWidget);
    expect(find.text('Show Snackbar'), findsOneWidget);

    // tap the button to show the snackbar
    await tester.tap(find.byKey(const Key('show_snackbar_button')));
    await tester.pumpAndSettle();

    // confirm the snackbar was loaded
    expect(find.byType(SnackBar), findsOneWidget);
    expect(find.byType(SnackBarAction), findsOneWidget);

    // check that the snackbar is still available
    expect(isSnackBarActionTapped, false);

    // tap the close action on the snackbar
    await tester.tap(find.byType(SnackBarAction));
    await tester.pumpAndSettle();

    expect(isSnackBarActionTapped, true);
  });
  testWidgets('should show dismiss snackbar', (WidgetTester tester) async {
    const Key snackbarKey = Key('show_dismiss_snackbar');
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: Builder(
              builder: (BuildContext context) {
                return ElevatedButton(
                  key: snackbarKey,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text('done'),
                        action: dismissSnackBar(
                          'An error occurred',
                          Colors.amber,
                          context,
                        ),
                      ),
                    );
                  },
                  child: const SizedBox(),
                );
              },
            ),
          ),
        ),
      ),
    );
    expect(find.byKey(snackbarKey), findsOneWidget);

    await tester.tap(find.byKey(snackbarKey));
    await tester.pumpAndSettle();
    expect(find.text('done'), findsOneWidget);
    expect(find.text('An error occurred'), findsOneWidget);
    expect(find.byType(SnackBarAction), findsOneWidget);

    await tester.tap(find.byType(SnackBarAction));
    await tester.pumpAndSettle();

    expect(find.byType(SnackBarAction), findsNothing);
  });
  test('test extract name initials', () {
    expect('DD', extractNamesInitials(name: 'david dexter'));
    expect('MV', extractNamesInitials(name: 'Michuki vincent'));
    expect('dd', isNot(extractNamesInitials(name: 'david dexter mwangi')));
    expect('D', extractNamesInitials(name: 'david'));
  });
  test('should return the titleCase of a sentence', () {
    String sentence = 'bewell is improving healthcare';
    String expectedFormattedSentence = 'Bewell Is Improving Healthcare';
    String actualTitleCasedString = titleCase(sentence);
    expect(actualTitleCasedString, expectedFormattedSentence);

    // check if it formats a spaced string
    sentence = 'kowalski    analysis';
    expectedFormattedSentence = 'Kowalski    Analysis';
    actualTitleCasedString = titleCase(sentence);
    expect(actualTitleCasedString, expectedFormattedSentence);

    // check if it returns an empty string if the sentence is empty
    sentence = '';
    expectedFormattedSentence = '';
    actualTitleCasedString = titleCase(sentence);
    expect(actualTitleCasedString, expectedFormattedSentence);
  });
  test('should return a string without underscore', () {
    const String name = 'be_well';
    const String expectedFormattedName = 'Be Well';
    final String actualRemovedUnderscoreString = removeUnderscores(name);

    expect(actualRemovedUnderscoreString, expectedFormattedName);
  });
  group('generic fetch function', () {
    testWidgets('should get data', (WidgetTester tester) async {
      final MockGraphQlClient mockGraphQlClient = MockGraphQlClient();
      final StreamController<dynamic> _streamController =
          StreamController<dynamic>.broadcast();
      final Map<String, bool> variables = <String, bool>{'participate': false};

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AppWrapperBase(
              deviceCapabilities: MockDeviceCapabilities(),
              appName: 'testAppName',
              appContexts: const <AppContext>[AppContext.BewellCONSUMER],
              graphQLClient: mockGraphQlClient,
              child: Center(
                child: Builder(
                  builder: (BuildContext context) {
                    return ElevatedButton(
                      key: const Key('fetch_data'),
                      onPressed: () async {
                        await genericFetchFunction(
                          streamController: _streamController,
                          context: context,
                          queryString: uploadMutationQuery,
                          variables: variables,
                          logTitle: 'logTitle',
                        );
                      },
                      child: const Text('press me'),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      );
      await tester.pump();

      await tester.pumpAndSettle();

      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      await _streamController.close();
    });

    testWidgets('should get data with error', (WidgetTester tester) async {
      final MockGraphQlClient mockGraphQlClient = MockGraphQlClient();
      final StreamController<dynamic> _streamController =
          StreamController<dynamic>.broadcast();
      final Map<String, bool> variables = <String, bool>{'fake': true};

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AppWrapperBase(
              deviceCapabilities: MockDeviceCapabilities(),
              appName: 'testAppName',
              appContexts: const <AppContext>[AppContext.BewellCONSUMER],
              graphQLClient: mockGraphQlClient,
              child: Center(
                child: Builder(
                  builder: (BuildContext context) {
                    return ElevatedButton(
                      key: const Key('fetch_data'),
                      onPressed: () async {
                        await genericFetchFunction(
                          streamController: _streamController,
                          context: context,
                          queryString: fakeQuery,
                          variables: variables,
                          logTitle: 'logTitle',
                        );
                      },
                      child: const Text('press me'),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      );
      await tester.pump();

      await tester.pumpAndSettle();

      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      await _streamController.close();
    });

    testWidgets('should get data with data as null',
        (WidgetTester tester) async {
      final MockGraphQlClient mockGraphQlClient = MockGraphQlClient();
      final StreamController<dynamic> _streamController =
          StreamController<dynamic>.broadcast();
      final Map<String, bool> variables = <String, bool>{'fake': true};

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AppWrapperBase(
              deviceCapabilities: MockDeviceCapabilities(),
              appName: 'testAppName',
              appContexts: const <AppContext>[AppContext.BewellCONSUMER],
              graphQLClient: mockGraphQlClient,
              child: Center(
                child: Builder(
                  builder: (BuildContext context) {
                    return ElevatedButton(
                      key: const Key('fetch_data'),
                      onPressed: () async {
                        await genericFetchFunction(
                          streamController: _streamController,
                          context: context,
                          queryString: fakeQueryTwo,
                          variables: variables,
                          logTitle: 'logTitle',
                        );
                      },
                      child: const Text('press me'),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      );
      await tester.pump();

      await tester.pumpAndSettle();

      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();
      await _streamController.close();
    });

    testWidgets('should add error to stream controller when there is an error',
        (WidgetTester tester) async {
      final MockGraphQlClient mockGraphQlClient = MockGraphQlClient();
      final StreamController<dynamic> _controller =
          StreamController<dynamic>.broadcast();
      final Map<String, bool> userProfile = <String, bool>{
        'allowWhatsApp': true,
        'allowPush': false,
        'allowEmail': true,
        'allowTextSMS': true
      };

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: AppWrapperBase(
              deviceCapabilities: MockDeviceCapabilities(),
              appName: 'testAppName',
              appContexts: const <AppContext>[AppContext.BewellCONSUMER],
              graphQLClient: mockGraphQlClient,
              child: Center(
                child: Builder(
                  builder: (BuildContext context) {
                    return ElevatedButton(
                      key: const Key('fetch_data'),
                      onPressed: () async {
                        await genericFetchFunction(
                          streamController: _controller,
                          context: context,
                          queryString: updateUserProfile,
                          variables: userProfile,
                          logTitle: 'logTitle',
                        );
                      },
                      child: const Text('press me'),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      );
      await tester.pump();

      await tester.pumpAndSettle();

      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      await _controller.close();
    });
    test('should return false when phone doest match prefix', () {
      const String phone = '+2541908765432';

      expect(validateKenyanNumber(phone), false);
    });
  });
}
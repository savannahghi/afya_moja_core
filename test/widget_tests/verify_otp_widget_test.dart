import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/presentation/inputs.dart';
import 'package:afya_moja_core/src/presentation/verify_otp_widget.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_ui_components/platform_loader.dart';
import 'package:shared_ui_components/src/animated_count.dart';

void main() {
  group('VerifyOtpWidget', () {
    String testString = 'test';
    testWidgets('should render correctly', (WidgetTester tester) async {
      final Widget testWidget = MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return Scaffold(
              body: VerifyOtpWidget(
                canResendOTP: true,
                failedToSendOTP: false,
                isResetPin: true,
                loader: const SizedBox(),
                nextPageRoute: () => testString = 'test2',
                onWrongCodeEntered: () {},
                onPrimaryButtonPressed: () => testString = 'test1',
                onRestartTimer: () {},
                onTimeOut: () {},
                otp: '123456',
                phoneNumber: '',
              ),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);
      final Finder resendOtpButton = find.byKey(resendOtpButtonKey);
      final Finder pinInputField = find.byType(PINInputField);
      expect(resendOtpButton, findsOneWidget);
      expect(pinInputField, findsOneWidget);
      await tester.tap(resendOtpButton);
      await tester.pumpAndSettle();
      expect(testString, 'test1');

      await tester.showKeyboard(pinInputField);
      await tester.enterText(pinInputField, '123456');
      await tester.pumpAndSettle();
      expect(testString, 'test2');

      // get the state
      final State<StatefulWidget> testState = tester.allStates.singleWhere(
        (State<StatefulWidget> element) => element.toString() == verifyOTPState,
      );

      // check if it is null
      expect(testState, isNotNull);

      // call the method
      final VerifyOtpWidgetState verifyPhoneOtpState =
          testState as VerifyOtpWidgetState;
      verifyPhoneOtpState.codeUpdated();

      // assert that is was called
      expect(() => verifyPhoneOtpState.codeUpdated(), returnsNormally);
    });
    testWidgets('should show a loading indicator when verifying an OTP',
        (WidgetTester tester) async {
      final Widget testWidget = MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return Scaffold(
              body: VerifyOtpWidget(
                canResendOTP: true,
                failedToSendOTP: false,
                isResetPin: true,
                loader: const SILPlatformLoader(),
                nextPageRoute: () {},
                onWrongCodeEntered: () {},
                onPrimaryButtonPressed: () {},
                onRestartTimer: () {},
                onTimeOut: () {},
                otp: '',
                phoneNumber: '',
                waitingForResendOTPFlag: true,
              ),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);

      expect(find.byType(SILPlatformLoader), findsOneWidget);
    });
    testWidgets('should show error when PIN is incorrect',
        (WidgetTester tester) async {
      final Widget testWidget = MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return Scaffold(
              body: VerifyOtpWidget(
                canResendOTP: true,
                failedToSendOTP: false,
                isResetPin: true,
                loader: const SizedBox(),
                nextPageRoute: () {},
                onWrongCodeEntered: () {},
                onPrimaryButtonPressed: () {},
                onRestartTimer: () {},
                onTimeOut: () {},
                otp: '123456',
                phoneNumber: '',
              ),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);
      final Finder pinInputField = find.byType(PINInputField);
      final Finder feedbackBottomSheet = find.byKey(feedbackBottomSheetKey);

      await tester.showKeyboard(pinInputField);
      await tester.enterText(pinInputField, '123455');
      await tester.pumpAndSettle();
      expect(feedbackBottomSheet, findsOneWidget);

      await tester.tap(find.byKey(feedbackBottomSheetCloseIconKey));
      await tester.pumpAndSettle();
      expect(feedbackBottomSheet, findsNothing);
    });
    testWidgets('should validate entered PIN', (WidgetTester tester) async {
      final Widget testWidget = MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return Scaffold(
              body: VerifyOtpWidget(
                canResendOTP: true,
                failedToSendOTP: false,
                isResetPin: false,
                loader: const SizedBox(),
                nextPageRoute: () {},
                onWrongCodeEntered: () => testString = 'test3',
                onPrimaryButtonPressed: () {},
                onRestartTimer: () {},
                onTimeOut: () {},
                otp: '123456',
                phoneNumber: '',
              ),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);
      final Finder pinInputField = find.byType(PINInputField);

      await tester.showKeyboard(pinInputField);
      await tester.enterText(pinInputField, '123456');
      await tester.pumpAndSettle();
      expect(testString, 'test3');
    });
    testWidgets('should start timer', (WidgetTester tester) async {
      final Widget testWidget = MaterialApp(
        home: Builder(
          builder: (BuildContext context) {
            return Scaffold(
              body: VerifyOtpWidget(
                canResendOTP: false,
                failedToSendOTP: false,
                isResetPin: false,
                loader: const SizedBox(),
                nextPageRoute: () {},
                onWrongCodeEntered: () {},
                onPrimaryButtonPressed: () {},
                onRestartTimer: () {},
                onTimeOut: () {},
                otp: '',
                phoneNumber: '',
              ),
            );
          },
        ),
      );
      await tester.pumpWidget(testWidget);
      final Finder counter = find.byType(AnimatedCount);
      expect(counter, findsOneWidget);
    });
  });
}

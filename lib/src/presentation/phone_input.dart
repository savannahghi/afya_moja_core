// Flutter imports:
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/behavior_subjects.dart';
import 'package:afya_moja_core/src/presentation/country_code_picker.dart';
import 'package:afya_moja_core/src/types.dart';
import 'package:afya_moja_core/src/widget_keys.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:misc_utilities/misc.dart';

import 'package:shared_themes/colors.dart';

/// [MyAfyaHubPhoneInput] is a shared widget to input user phone number and
/// country code
///
/// It takes in required [inputController], [onChanged] and
/// [phoneNumberFormatter] parameters
///
/// The [PhoneNumberFormatterFunc] function takes in countyCode and phoneNumber
///  to return a standard phoneNumber string
class MyAfyaHubPhoneInput extends FormField<String> {
  MyAfyaHubPhoneInput({
    required TextEditingController? inputController,
    required FormFieldSetter<String> onChanged,
    required String? labelText,
    TextStyle? labelStyle,
    required PhoneNumberFormatterFunc phoneNumberFormatter,
    Widget? suffixIcon,
    Color? backgroundColor,
    bool? enabled,
    bool? autoFocus,
    String? initialValue = '',
    bool autoValidate = false,
    bool isValidNumber = false,
    bool showAlertIcon = false,
  }) : super(
          enabled: enabled ?? true,
          autovalidateMode: autoValidate
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          validator: (String? value) {
            final PhoneInputBehaviorSubject phoneInputBehaviorSubject =
                PhoneInputBehaviorSubject();

            final String countryCode =
                phoneInputBehaviorSubject.countryCode.valueOrNull!;

            if (value != null) {
              if (value.isEmpty) {
                isValidNumber = showAlertIcon;
                return phoneNumberRequiredText;
              }

              String phone;

              if (value.startsWith('0')) {
                phone = value.substring(1);
              } else {
                phone = value;
              }

              if (!validatePhoneNumber('$countryCode$phone')) {
                isValidNumber = showAlertIcon;
                return validPhoneNumberText;
              }

              if (countryCode == '+254' &&
                  !validateKenyanNumber('$countryCode$phone')) {
                isValidNumber = showAlertIcon;
                return validPhoneNumberText;
              }

              isValidNumber = !showAlertIcon;
            }
          },
          initialValue: inputController != null
              ? inputController.text
              : (initialValue ?? ''),
          builder: (FormFieldState<String> state) {
            final PhoneInputBehaviorSubject phoneInputBehaviorSubject =
                PhoneInputBehaviorSubject();

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[200]!),
                    color: backgroundColor ?? white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        height: 54,
                        padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(color: Colors.grey[200]!),
                          ),
                        ),
                        child: MyAfyaHubCountryPicker(
                          onChanged: (String value) {
                            phoneInputBehaviorSubject.countryCode.add(value);
                            onChanged(
                              phoneNumberFormatter(
                                countryCode: phoneInputBehaviorSubject
                                        .countryCode.valueOrNull ??
                                    '',
                                phoneNumber: phoneInputBehaviorSubject
                                        .phoneNumber.valueOrNull ??
                                    '',
                              ),
                            );
                          },
                        ),
                      ),
                      Flexible(
                        child: SizedBox(
                          height: 54,
                          child: Center(
                            child: Stack(
                              alignment: Alignment.center,
                              children: <Widget>[
                                TextFormField(
                                  autofocus: autoFocus ?? false,
                                  key: textFormFieldKey,
                                  decoration: InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    labelText: labelText,
                                    labelStyle: labelStyle ??
                                        const TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: Colors.grey,
                                          fontSize: 15,
                                        ),
                                    border: InputBorder.none,
                                    fillColor: Colors.transparent,
                                    contentPadding: const EdgeInsets.fromLTRB(
                                      15,
                                      0,
                                      15,
                                      15,
                                    ),
                                  ),
                                  keyboardType: TextInputType.number,
                                  inputFormatters: <TextInputFormatter>[
                                    FilteringTextInputFormatter.digitsOnly
                                  ],
                                  onChanged: (String value) {
                                    state.didChange(value);
                                    inputController?.text = value;
                                    phoneInputBehaviorSubject.phoneNumber
                                        .add(value);
                                    onChanged(
                                      phoneNumberFormatter(
                                        countryCode: phoneInputBehaviorSubject
                                            .countryCode.valueOrNull!,
                                        phoneNumber: value,
                                      ),
                                    );
                                  },
                                ),
                                if (!isValidNumber)
                                  suffixIcon ?? const SizedBox()
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                if (state.hasError)
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 10),
                    child: Text(
                      state.errorText.toString(),
                      style: const TextStyle(color: Colors.red),
                    ),
                  )
                else
                  Container()
              ],
            );
          },
        );
}

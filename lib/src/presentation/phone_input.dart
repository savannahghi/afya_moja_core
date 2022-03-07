// Flutter imports:
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/behavior_subjects.dart';
import 'package:afya_moja_core/src/helpers.dart';
import 'package:afya_moja_core/src/presentation/country_code_picker.dart';
import 'package:afya_moja_core/src/types.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// [MyAfyaHubPhoneInput] is a shared widget to input user phone number and
/// country code
///
/// It takes in required [onChanged] and [phoneNumberFormatter] parameters
///
/// The [phoneNumberFormatter] function takes in countyCode and phoneNumber
///  to return a standard phoneNumber string
class MyAfyaHubPhoneInput extends FormField<String> {
  MyAfyaHubPhoneInput({
    Key? textFormFieldKey,
    TextEditingController? controller,
    required FormFieldSetter<String> onChanged,
    required PhoneNumberFormatterFunc phoneNumberFormatter,
    TextStyle? style,
    bool? enabled,
    bool? autoFocus,
    String? initialValue,
    InputDecoration? decoration,
    AutovalidateMode? autovalidateMode,
    bool isValidNumber = false,
    bool showAlertIcon = false,
    bool showBorder = false,
    Color? borderColor,
  })  : assert(
          initialValue == null || controller == null,
          'initialValue and controller should not be used together.',
        ),
        super(
          initialValue:
              controller != null ? controller.text : (initialValue ?? ''),
          enabled: enabled ?? true,
          autovalidateMode: autovalidateMode ?? AutovalidateMode.disabled,
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

              if (!isValidPhoneNumber('$countryCode$phone')) {
                isValidNumber = showAlertIcon;
                return validPhoneNumberText;
              }

              isValidNumber = !showAlertIcon;
            }
          },
          builder: (FormFieldState<String> state) {
            final PhoneInputBehaviorSubject phoneInputBehaviorSubject =
                PhoneInputBehaviorSubject();

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  decoration: showBorder
                      ? BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: borderColor ?? Colors.black,
                            width: 2,
                          ),
                        )
                      : null,
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 54,
                        decoration: showBorder
                            ? BoxDecoration(
                                border: Border(
                                  right: BorderSide(
                                    color: borderColor ?? Colors.black,
                                    width: 2,
                                  ),
                                ),
                              )
                            : null,
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
                        child: TextFormField(
                          autofocus: autoFocus ?? false,
                          key: textFormFieldKey,
                          decoration: decoration,
                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          style: style,
                          onChanged: (String value) {
                            state.didChange(value);
                            controller?.text = value;
                            phoneInputBehaviorSubject.phoneNumber.add(value);
                            onChanged(
                              phoneNumberFormatter(
                                countryCode: phoneInputBehaviorSubject
                                    .countryCode.valueOrNull!,
                                phoneNumber: value,
                              ),
                            );
                          },
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
              ],
            );
          },
        );
}

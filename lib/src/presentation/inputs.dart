// Flutter imports:
import 'package:afya_moja_core/src/app_strings.dart';
import 'package:afya_moja_core/src/presentation/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:misc_utilities/misc.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
// Package imports:
import 'package:shared_themes/colors.dart';
import 'package:shared_ui_components/inputs.dart';

bool alignLabelWithHint(int? maxLines) => maxLines != null && maxLines > 1;

/// ExpandableQuestion
///
/// [ExpandableQuestion] collects answers to secret questions.
///
class ExpandableQuestion extends StatelessWidget {
  ///
  /// [ExpandableQuestion] collects answers to secret questions.
  ///
  /// Every other property here is the normal one except the following:
  ///   1. [isSearchField] is used to make the input box expanded in height
  ///       to fit the needs of `patient identification search`
  ///   2. [isSearchFieldSmall] is used to make the input field smaller than normal
  ///       so it can look like a nice search box
  ///   3. [autoFocus] - if this value is set to true, the input is automatically
  ///       focused the moment the UI containing that widget is rendered
  ///   4. [context] is used when applying the active and focused colors depending
  ///       on the provided context. For example getting colors from [Theme.of(context)]
  const ExpandableQuestion({
    required this.question,
    this.isDateType = false,
    required this.dateController,
    this.color,
    Key? key,
    this.enabled,
    this.controller,
    this.onSaved,
    this.onTap,
    this.labelText,
    this.hintText,
    this.initialValue,
    required this.onChanged,
    this.onFieldSubmit,
    this.focusNode,
    this.keyboardType,
    this.formatters,
    this.maxLines,
    this.maxLength,
    this.questionTextStyle,
    this.responseTextStyle,
    this.suffixIcon,
    this.isSearchField = false,
    this.obscureText,
    this.validator,
    this.autoValidate = false,
    this.isSearchFieldSmall = false,
    this.autoFocus,
    this.inputFormatters,
    this.prefixIcon,
    this.textInputAction,
    this.customFillColor,
    this.hintColor,
    this.hintTextColor,
    this.borderColor,
    this.textFieldBackgroundColor,
    this.decoration,
    this.fieldKey,
  })  : assert(
          initialValue == null || controller == null,
          'When a controller is specified, initialValue must be null',
        ),
        super(key: key);

  final bool? autoFocus;
  final bool isDateType;
  final FormFieldValidator<String>? validator;
  final bool? autoValidate;
  final Color? borderColor;
  final Color? color;
  final TextEditingController dateController;
  final TextEditingController? controller;
  final Color? customFillColor;
  final InputDecoration? decoration;
  final bool? enabled;
  final Key? fieldKey;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? formatters;
  final Color? hintColor;
  final String? hintText;
  final Color? hintTextColor;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatters;
  final bool isSearchField;
  final bool isSearchFieldSmall;
  final TextInputType? keyboardType;
  final String? labelText;
  final int? maxLength;
  final int? maxLines;
  final bool? obscureText;
  final ValueChanged<String?> onChanged;
  final ValueChanged<String>? onFieldSubmit;
  final FormFieldSetter<String>? onSaved;
  final Function? onTap;
  final Widget? prefixIcon;
  final String question;
  final Widget? suffixIcon;
  final Color? textFieldBackgroundColor;
  final TextInputAction? textInputAction;
  final TextStyle? questionTextStyle;
  final TextStyle? responseTextStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(5.0), color: white),
      child: InputDecorator(
        decoration: InputDecoration(
          fillColor: white,
          focusColor: Colors.grey[200],
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: color ?? white),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]!),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
        ),
        child: Theme(
          data: ThemeData().copyWith(
            dividerColor: Colors.transparent,
            unselectedWidgetColor: black,
            colorScheme:
                Theme.of(context).colorScheme.copyWith(secondary: Colors.black),
          ),
          child: Column(
            children: <Widget>[
              ExpansionTile(
                iconColor: black,
                title: Text(
                  question,
                  style: questionTextStyle ??
                      const TextStyle(
                        color: black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                children: <Widget>[
                  if (isDateType)
                    SILDatePickerField(
                      // check documentation for this widget to understand how dates are constrained
                      allowCurrentYear: true,
                      allowFutureYears: true,
                      enabled: true,
                      controller: dateController,
                      hintText: dateController.text == '' ? dateLabelText : '',

                      suffixIcon: Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.grey[200],
                      ),
                      onChanged: onChanged,
                    )
                  else
                    TextFormField(
                      key: fieldKey,
                      enabled: enabled ?? true,
                      maxLines: maxLines,
                      maxLength: maxLength,
                      validator: validator,
                      autovalidateMode: autoValidate ?? false
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      initialValue: initialValue,
                      decoration: decoration ??
                          InputDecoration(
                            filled: true,
                            fillColor: (enabled != null && !enabled!)
                                ? Colors.grey[200]
                                : customFillColor ?? Colors.grey[200],
                            alignLabelWithHint: alignLabelWithHint(maxLines),
                            contentPadding: isSearchField
                                ? const EdgeInsets.all(20)
                                : EdgeInsets.symmetric(
                                    vertical: isSearchFieldSmall ? 10 : 15,
                                    horizontal: 15,
                                  ),
                            labelText: labelText,
                            hintText: hintText,
                            hintStyle:
                                Theme.of(context).textTheme.headline4!.copyWith(
                                      color: hintColor ?? grey,
                                      fontSize: 16,
                                    ),
                            suffix: suffixIcon,
                            prefixIcon: prefixIcon,
                            labelStyle: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(color: grey, fontSize: 16),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: customFillColor ??
                                    borderColor ??
                                    Colors.white24,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(isSearchField ? 1 : 5),
                              ),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[200]!),
                              borderRadius: BorderRadius.all(
                                Radius.circular(isSearchField ? 1 : 5),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey[200]!),
                              borderRadius: BorderRadius.all(
                                Radius.circular(isSearchField == true ? 1 : 5),
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: red),
                              borderRadius: BorderRadius.all(
                                Radius.circular(isSearchField == true ? 1 : 5),
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: red),
                              borderRadius: BorderRadius.all(
                                Radius.circular(isSearchField == true ? 1 : 5),
                              ),
                            ),
                            focusColor: black,
                          ),
                      cursorColor: black,
                      autofocus: autoFocus ?? false,
                      style: responseTextStyle ??
                          Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(color: black, fontSize: 14),
                      onFieldSubmitted: onFieldSubmit,
                      textInputAction: textInputAction ?? TextInputAction.done,
                      textAlignVertical: TextAlignVertical.center,
                      onChanged: onChanged,
                      onSaved: onSaved,
                      onTap: onTap != null ? () => onTap!() : null,
                      controller: controller,
                      focusNode: focusNode,
                      obscureText: obscureText ?? false,
                      keyboardType: keyboardType ?? TextInputType.text,
                      inputFormatters: inputFormatters,
                    )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// [VerifyOTPInput] is a shared widget to input authentication PIN
///
/// It takes in a required [maxLength] parameter to specify the number of PIN input fields

class VerifyOTPInput extends StatelessWidget {
  /// [VerifyOTPInput] is a shared widget to input authentication PIN
  ///
  /// It takes in a required [maxLength] parameter to specify the number of PIN input fields

  const VerifyOTPInput({
    Key? key,
    required this.maxLength,
    required this.onDone,
    this.borderColor,
    this.onTextChanged,
    this.autoFocus = false,
    this.wrapAlignment = WrapAlignment.spaceBetween,
    this.pinBoxHeight = 50.0,
    this.pinBoxWidth = 50.0,
    this.controller,
    this.keyboardType = TextInputType.number,
    this.focusNode,
  }) : super(key: key);
  final bool? autoFocus;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final int? maxLength;
  final Function onDone;
  final Function? onTextChanged;
  final double? pinBoxHeight;
  final double? pinBoxWidth;
  final WrapAlignment? wrapAlignment;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      controller: controller,
      autofocus: autoFocus!,
      hideCharacter: true,
      pinBoxBorderWidth: 1.5,
      highlight: true,
      focusNode: focusNode,
      highlightColor: Colors.blue,
      defaultBorderColor:
          borderColor ?? Theme.of(context).colorScheme.secondary,
      hasTextBorderColor: Theme.of(context).colorScheme.secondary,
      maxLength: maxLength ?? 4,
      maskCharacter: '⚫',
      pinBoxWidth: pinBoxWidth!,
      pinBoxHeight: pinBoxHeight!,
      wrapAlignment: wrapAlignment!,
      pinBoxDecoration: customRoundedPinBoxDecoration,
      pinTextStyle: const TextStyle(fontSize: 10.0),
      pinTextAnimatedSwitcherTransition:
          ProvidedPinBoxTextAnimation.scalingTransition,
      pinBoxColor: Theme.of(context).backgroundColor,
      pinTextAnimatedSwitcherDuration: const Duration(milliseconds: 300),
      highlightAnimationBeginColor: Colors.black,
      highlightAnimationEndColor: Colors.white12,
      keyboardType: keyboardType,
      onDone: (String val) {
        onDone(val);
      },
      onTextChanged: (String val) =>
          (onTextChanged == null) ? <dynamic>{} : onTextChanged!(val),
    );
  }
}

BoxDecoration customRoundedPinBoxDecoration(
  /// [BoxDecoration] box decoration for [PinCodeTextField] widget

  Color borderColor,
  Color pinBoxColor, {
  double borderWidth = 1.0,
  double? radius,
}) {
  return BoxDecoration(
    border: Border.all(
      color: borderColor,
      width: borderWidth,
    ),
    color: pinBoxColor,
    borderRadius: const BorderRadius.all(Radius.circular(4)),
  );
}

class EditInformationDropDown extends StatelessWidget {
  ///[EditInformationDropDown] dropdown widgets for Editing user profile
  const EditInformationDropDown({
    required this.value,
    required this.items,
    required this.onChange,
  });

  final String value;
  final List<String> items;
  final Function(String?) onChange;

  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        filled: true,
        fillColor: white,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
        labelStyle: const TextStyle(
          fontWeight: FontWeight.w300,
          color: Colors.grey,
          fontSize: 15,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white24,
          ),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: grey),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        focusColor: Theme.of(context).colorScheme.secondary,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: grey, fontSize: 16),
          dropdownColor: white,
          value: value,
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              key: ValueKey<String>(value),
              value: value,
              child: Text(
                titleCase(value),
              ),
            );
          }).toList(),
          onChanged: onChange,
          isDense: true,
        ),
      ),
    );
  }
}

/// [PINInputField] is a shared widget to input authentication PIN
///
/// It takes in a required [maxLength] parameter to specify the number of PIN input fields

class PINInputField extends StatelessWidget {
  const PINInputField({
    Key? key,
    required this.maxLength,
    required this.onDone,
    this.onTextChanged,
    this.autoFocus = false,
    this.wrapAlignment = WrapAlignment.spaceBetween,
    this.pinBoxHeight = 48.0,
    this.pinBoxWidth = 48.0,
    this.controller,
    this.keyboardType = TextInputType.number,
    this.focusNode,
    this.hasTextBorderColor = myAfyaHubSecondaryColor,
  }) : super(key: key);
  final bool? autoFocus;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final TextInputType keyboardType;
  final int? maxLength;
  final Function onDone;
  final Function? onTextChanged;
  final double? pinBoxHeight;
  final double? pinBoxWidth;
  final WrapAlignment? wrapAlignment;
  final Color hasTextBorderColor;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      controller: controller,
      autofocus: autoFocus!,
      hideCharacter: true,
      pinBoxBorderWidth: 1,
      highlight: true,
      focusNode: focusNode,
      highlightColor: malachiteColor,
      defaultBorderColor: greyTextColor.withOpacity(0.3),
      hasTextBorderColor: hasTextBorderColor,
      maxLength: maxLength ?? 6,
      maskCharacter: '⚫',
      pinBoxWidth: pinBoxWidth!,
      pinBoxHeight: pinBoxHeight!,
      wrapAlignment: wrapAlignment!,
      pinBoxDecoration: customRoundedPinBoxDecoration,
      pinTextStyle: const TextStyle(fontSize: 10.0),
      pinTextAnimatedSwitcherTransition:
          ProvidedPinBoxTextAnimation.scalingTransition,
      pinBoxColor: Theme.of(context).backgroundColor,
      pinTextAnimatedSwitcherDuration: const Duration(milliseconds: 300),
      highlightAnimationBeginColor: Colors.black,
      highlightAnimationEndColor: Colors.white12,
      keyboardType: keyboardType,
      onDone: (String val) {
        onDone(val);
      },
      onTextChanged: (String val) =>
          (onTextChanged == null) ? <dynamic>{} : onTextChanged!(val),
    );
  }
}

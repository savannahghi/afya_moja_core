import 'package:afya_moja_core/src/text_form_hint_text.dart';
import 'package:afya_moja_core/src/types.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_themes/colors.dart';
import 'package:shared_themes/spaces.dart';

/// A wrapper for [TextFormField] that contains options for a field label.
class CustomTextField extends StatelessWidget {
  /// A wrapper for [TextFormField] that contains options for a field label.
  ///
  /// For the label to appear the [fieldLabel] must be specified.
  /// If [fieldLabel] is specified and [isRequired] is true, then a red asterisk
  /// is added to the label.
  ///
  /// For a documentation about the various parameters, see [TextFormField].
  const CustomTextField({
    bool? enabled,
    final bool? obscureText,
    required this.formFieldKey,
    this.focusNode,
    this.fieldLabel,
    this.controller,
    this.onChanged,
    this.hintText,
    this.hintColor,
    this.onSubmitted,
    this.customFillColor,
    this.maxLines,
    this.labelText,
    this.suffixIcon,
    this.prefixIcon,
    this.borderColor,
    this.keyboardType,
    this.validator,
    this.inputFormatters,
    this.maxLength,
    this.isRequired,
    this.autovalidateMode,
  })  : enabled = enabled ?? true,
        obscureText = obscureText ?? false;

  final AutovalidateMode? autovalidateMode;
  final Color? borderColor;
  final TextEditingController? controller;
  final Color? customFillColor;
  final bool enabled;
  final String? fieldLabel;
  final FocusNode? focusNode;
  final Key formFieldKey;
  final Color? hintColor;
  final String? hintText;
  final List<TextInputFormatter>? inputFormatters;
  // An indicator in the label text to show if this input is required
  final bool? isRequired;

  final TextInputType? keyboardType;
  final String? labelText;
  final int? maxLength;
  final int? maxLines;
  // Whether to obscure text. Defaults to `false`
  final bool obscureText;

  final OnChangedString? onChanged;
  final OnChangedString? onSubmitted;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final FormFieldValidator<String>? validator;

  bool alignLabelWithHint(int? maxLines) => maxLines != null && maxLines > 1;

  @override
  Widget build(BuildContext context) {
    final List<Widget> labels = <Widget>[];
    if (fieldLabel != null) {
      labels.addAll(
        <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: TextFormHintText(
              hintText: fieldLabel!,
              isRequired: isRequired,
            ),
          ),
          smallVerticalSizedBox,
        ],
      );
    }

    return Column(
      children: <Widget>[
        ...labels,
        TextFormField(
          maxLength: maxLength,
          keyboardType: keyboardType,
          controller: controller,
          obscureText: obscureText,
          autovalidateMode: autovalidateMode ?? AutovalidateMode.always,
          enabled: enabled,
          key: formFieldKey,
          onFieldSubmitted: onSubmitted,
          onChanged: onChanged,
          focusNode: focusNode,
          decoration: InputDecoration(
            filled: true,
            fillColor: (!enabled) ? Colors.grey[200] : customFillColor ?? white,
            alignLabelWithHint: alignLabelWithHint(maxLines),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            labelText: labelText,
            hintText: hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: hintColor ?? grey, fontSize: 16),
            suffix: suffixIcon,
            prefixIcon: prefixIcon,
            labelStyle: const TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.grey,
              fontSize: 15,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: customFillColor ?? borderColor ?? Colors.white24,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            disabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: grey),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Theme.of(context).colorScheme.secondary),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: red),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: red),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            focusColor: Theme.of(context).colorScheme.secondary,
          ),
          validator: validator,
          inputFormatters: inputFormatters,
        ),
      ],
    );
  }
}

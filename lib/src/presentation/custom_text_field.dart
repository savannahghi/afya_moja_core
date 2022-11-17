import 'package:afya_moja_core/src/presentation/spaces.dart';
import 'package:afya_moja_core/src/presentation/text_form_hint_text.dart';
import 'package:afya_moja_core/src/types.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    bool? obscureText,
    this.formFieldKey,
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
    this.labelStyle,
    this.focusedBorderColor,
    this.initialValue,
  })  : enabled = enabled ?? true,
        obscureText = obscureText ?? false;

  final AutovalidateMode? autovalidateMode;
  final Color? borderColor;
  final TextEditingController? controller;
  final Color? customFillColor;
  final bool enabled;
  final String? fieldLabel;
  final FocusNode? focusNode;
  final Color? focusedBorderColor;
  final Key? formFieldKey;
  final Color? hintColor;
  final String? hintText;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatters;
  // An indicator in the label text to show if this input is required
  final bool? isRequired;
  final TextInputType? keyboardType;
  final TextStyle? labelStyle;
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
            fillColor:
                (!enabled) ? Colors.grey[200] : customFillColor ?? Colors.white,
            alignLabelWithHint: alignLabelWithHint(maxLines),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            labelText: labelText,
            hintText: hintText,
            hintStyle: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: hintColor ?? Colors.grey, fontSize: 16),
            suffixIcon: suffixIcon,
            suffixIconConstraints:
                const BoxConstraints(minHeight: 24, minWidth: 24),
            prefixIcon: prefixIcon,
            labelStyle: labelStyle ??
                const TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                  fontSize: 15,
                ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor ?? customFillColor ?? Colors.white24,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor ?? Colors.grey),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: focusedBorderColor ??
                    Theme.of(context).colorScheme.secondary,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            focusColor: Theme.of(context).colorScheme.secondary,
            errorMaxLines: 2,
          ),
          validator: validator,
          inputFormatters: inputFormatters,
          initialValue: initialValue,
        ),
      ],
    );
  }
}

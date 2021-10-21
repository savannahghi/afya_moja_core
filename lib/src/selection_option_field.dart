import 'package:flutter/material.dart';
import 'package:misc_utilities/misc.dart';

class SelectOptionField extends StatelessWidget {
  /// [SelectOptionField] customized for selection options.
  ///
  /// This widget can be used in dropdown buttons and select option fields
  ///
  /// EXAMPLE:
  /// ```dart
  ///  SelectOptionField(
  ///    hintText: 'Select gender',
  ///    context: context,
  ///    value: _selectedGender,
  ///    focusNode: _gender,
  ///    options: ['Male', 'Female', 'Unknown', 'Other'],
  ///    validator: (dynamic value) {
  ///       if (value.isEmpty || value == null) {
  ///       return 'Next of kin gender is required';
  ///       }
  ///      return null;
  ///     },
  ///    onChanged: (dynamic value) {},
  ///    onSaved: (dynamic value) {},
  ///  ),
  /// ```
  const SelectOptionField({
    this.onSaved,
    required this.options,
    this.value,
    required this.dropDownInputKey,
    this.hintText,
    this.onChanged,
    this.backgroundColor,
    this.focusedcolor,
    this.outlineInputBordercolor,
    this.retainOptionCase = true,
    bool? disabled,
  }) : this.disabled = disabled ?? false;

  final Color? backgroundColor;
  final Color? focusedcolor;
  final Color? outlineInputBordercolor;
  final bool disabled;
  final Key dropDownInputKey;
  final String? hintText;
  final FormFieldSetter<String>? onChanged;
  final FormFieldSetter<String>? onSaved;
  final List<String> options;

  /// whether to retain the format of the dropdown options. This will prevent
  /// options like `National ID` from being formatted to `National id`
  final bool retainOptionCase;

  final String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: disabled ? Colors.grey[200] : backgroundColor ?? Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: InputDecorator(
        decoration: InputDecoration(
          fillColor: Colors.white,
          focusColor: focusedcolor ?? Colors.grey,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          enabledBorder: disabled
              ? null
              : OutlineInputBorder(
                  borderSide:
                      BorderSide(color: outlineInputBordercolor ?? Colors.grey),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: focusedcolor ?? Colors.grey),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[200]!),
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            key: dropDownInputKey,
            dropdownColor: Colors.white,
            hint: hintText != null
                ? Text(
                    hintText!,
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.grey, fontSize: 16),
                  )
                : null,
            value: value,
            items: options.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                key: ValueKey<String>(value),
                value: value,
                child: Text(retainOptionCase ? value : titleCase(value)),
              );
            }).toList(),
            onChanged: disabled ? null : onChanged,
            isDense: true,
          ),
        ),
      ),
    );
  }
}

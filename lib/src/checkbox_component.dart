// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:shared_themes/text_themes.dart';

class CheckBoxComponent extends StatelessWidget {
  /// [CheckBoxComponent] used as a custom checkbox with text.
  const CheckBoxComponent({
    required this.value,
    required this.text,
    required this.onChanged,
    this.color,
    this.onTap,
    this.child,
    this.checkBoxKey,
  });

  final Key? checkBoxKey;
  final Widget? child;
  final ValueChanged<bool?> onChanged;
  final Function? onTap;
  final String? text;
  final bool value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Row(
        children: <Widget>[
          Checkbox(
            key: checkBoxKey,
            activeColor: color ?? Colors.black,
            materialTapTargetSize: MaterialTapTargetSize.padded,
            value: value,
            onChanged: (bool? value) {
              onChanged(value);
            },
          ),
          Expanded(
            child: child ??
                Text(
                  text ?? '',
                  style: TextThemes.normalSize14Text(color ?? Colors.black),
                ),
          )
        ],
      ),
    );
  }
}

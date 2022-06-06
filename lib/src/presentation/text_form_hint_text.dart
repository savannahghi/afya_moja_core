import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:flutter/material.dart';

class TextFormHintText extends StatelessWidget {
  const TextFormHintText({
    required this.hintText,
    bool? isRequired,
  }) : isRequired = isRequired ?? false;

  final String hintText;
  final bool isRequired;

  @override
  Widget build(BuildContext context) {
    if (isRequired) {
      return Row(
        children: <Widget>[
          HintText(hintText: hintText),
          Flexible(
            child: Text('*', style: heavySize20Text(Colors.redAccent)),
          )
        ],
      );
    }

    return HintText(hintText: hintText);
  }
}

class HintText extends StatelessWidget {
  const HintText({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Text(
      hintText,
      style: heavySize18Text(subtitleGrey),
    );
  }
}

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:shared_themes/spaces.dart';
import 'package:shared_themes/text_themes.dart';

///[OnboardingScaffoldHeader] header on the onboarding scaffold
class OnboardingScaffoldHeader extends StatelessWidget {
  const OnboardingScaffoldHeader({
    required this.title,
    required this.description,
  });

  final String description;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        mediumVerticalSizedBox,
        Text(
          title,
          style: TextThemes.normalSize32Text(Theme.of(context).primaryColor),
        ),
        smallVerticalSizedBox,
        Text(
          description,
          style: TextThemes.lightSize16Text(Colors.grey),
        ),
        smallVerticalSizedBox,
      ],
    );
  }
}

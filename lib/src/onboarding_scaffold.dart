// Project imports:
import 'package:afya_moja_core/src/onboarding_scaffold_header.dart';

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:shared_themes/spaces.dart';

/// [OnboardingScaffold] a scaffold used during the onboarding process
class OnboardingScaffold extends StatelessWidget {
  const OnboardingScaffold({
    required this.child,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final double sizedBoxHeight = MediaQuery.of(context).size.width / 4;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: sizedBoxHeight,
                  ),
                  OnboardingScaffoldHeader(
                    title: title,
                    description: description,
                  ),
                  smallVerticalSizedBox,
                  child,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

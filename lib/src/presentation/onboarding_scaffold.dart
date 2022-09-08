import 'package:afya_moja_core/src/presentation/onboarding_scaffold_header.dart';
import 'package:afya_moja_core/src/presentation/responsive_widget.dart';
import 'package:afya_moja_core/src/presentation/spaces.dart';
import 'package:flutter/material.dart';

/// [OnboardingScaffold] a scaffold used during the onboarding process
class OnboardingScaffold extends StatelessWidget {
  const OnboardingScaffold({
    required this.child,
    required this.title,
    required this.description,
    this.backgroundColor,
  });

  final Widget child;
  final String description;

  // The title of the scaffold
  final String title;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final double sizedBoxHeight = MediaQuery.of(context).size.width / 4;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox.expand(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ResponsiveWidget.preferredPaddingOnStretchedScreens(
                  context: context,
                ),
              ),
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

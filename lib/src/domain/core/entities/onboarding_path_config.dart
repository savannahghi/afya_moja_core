import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_path_config.freezed.dart';

@freezed
class OnboardingPathConfig with _$OnboardingPathConfig {
  factory OnboardingPathConfig({
    // The route to navigate to
    required String route,
    // Any route arguments that may need to be passed while navigating
    @Default(null) dynamic arguments,
  }) = _OnboardingPathConfig;
}

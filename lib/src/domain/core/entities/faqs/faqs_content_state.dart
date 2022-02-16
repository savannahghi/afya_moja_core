// Package imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'faqs_content_state.freezed.dart';
part 'faqs_content_state.g.dart';

@freezed
class FAQsContentState with _$FAQsContentState {
  factory FAQsContentState({
    List<FAQContent?>? profileFAQs,
    bool? errorFetchingFAQs,
    bool? timeoutFetchingFAQs,
  }) = _FAQsContentState;

  factory FAQsContentState.fromJson(Map<String, dynamic> json) =>
      _$FAQsContentStateFromJson(json);

  factory FAQsContentState.initial() => FAQsContentState(
        profileFAQs: <FAQContent>[],
        errorFetchingFAQs: false,
        timeoutFetchingFAQs: false,
      );
}

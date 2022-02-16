// Package imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'faq_content_response.freezed.dart';
part 'faq_content_response.g.dart';

@freezed
class FAQContentResponse with _$FAQContentResponse {
  factory FAQContentResponse({
    @JsonKey(name: 'getFAQContent') List<FAQContent>? profileFAQsContent,
  }) = _FAQContentResponse;

  factory FAQContentResponse.fromJson(Map<String, dynamic> json) =>
      _$FAQContentResponseFromJson(json);
}

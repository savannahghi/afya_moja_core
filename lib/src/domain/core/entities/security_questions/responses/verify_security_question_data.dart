// Package imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_security_question_data.freezed.dart';
part 'verify_security_question_data.g.dart';

@freezed
class VerifySecurityQuestionData with _$VerifySecurityQuestionData {
  factory VerifySecurityQuestionData({
    @JsonKey(name: 'questionID') String? questionID,
    @JsonKey(name: 'flavour') String? flavour,
    @JsonKey(name: 'response') String? response,
    @JsonKey(name: 'phoneNumber') String? phoneNumber,
  }) = _VerifySecurityQuestionData;

  factory VerifySecurityQuestionData.fromJson(Map<String, dynamic> json) =>
      _$VerifySecurityQuestionDataFromJson(json);

  factory VerifySecurityQuestionData.initial() => VerifySecurityQuestionData(
        questionID: UNKNOWN,
        flavour: UNKNOWN,
        response: UNKNOWN,
        phoneNumber: UNKNOWN,
      );
}

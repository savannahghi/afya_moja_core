// Package imports:

// Project imports:
import 'package:afya_moja_core/src/domain/core/entities/security_questions/questions/security_question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'responded_security_questions_data.freezed.dart';
part 'responded_security_questions_data.g.dart';

@freezed
class RespondedSecurityQuestionsData with _$RespondedSecurityQuestionsData {
  factory RespondedSecurityQuestionsData({
    @JsonKey(name: 'getUserRespondedSecurityQuestions')
        required List<SecurityQuestion> securityQuestions,
  }) = _RespondedSecurityQuestionsData;

  factory RespondedSecurityQuestionsData.fromJson(Map<String, dynamic> json) =>
      _$RespondedSecurityQuestionsDataFromJson(json);
}

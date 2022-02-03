// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responded_security_questions_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RespondedSecurityQuestionsData _$_$_RespondedSecurityQuestionsDataFromJson(
    Map<String, dynamic> json) {
  return _$_RespondedSecurityQuestionsData(
    securityQuestions:
        (json['getUserRespondedSecurityQuestions'] as List<dynamic>)
            .map((e) => SecurityQuestion.fromJson(e as Map<String, dynamic>))
            .toList(),
  );
}

Map<String, dynamic> _$_$_RespondedSecurityQuestionsDataToJson(
        _$_RespondedSecurityQuestionsData instance) =>
    <String, dynamic>{
      'getUserRespondedSecurityQuestions': instance.securityQuestions,
    };

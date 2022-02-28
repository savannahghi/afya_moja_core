// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_questions_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SecurityQuestionsData _$$_SecurityQuestionsDataFromJson(
        Map<String, dynamic> json) =>
    _$_SecurityQuestionsData(
      securityQuestions: (json['getSecurityQuestions'] as List<dynamic>)
          .map((e) => SecurityQuestion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SecurityQuestionsDataToJson(
        _$_SecurityQuestionsData instance) =>
    <String, dynamic>{
      'getSecurityQuestions': instance.securityQuestions,
    };

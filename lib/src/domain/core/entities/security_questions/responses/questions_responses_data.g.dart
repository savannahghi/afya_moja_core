// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questions_responses_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionsResponsesData _$$_QuestionsResponsesDataFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionsResponsesData(
      responses: (json['recordSecurityQuestionResponses'] as List<dynamic>)
          .map((e) => RecordSecurityQuestionResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_QuestionsResponsesDataToJson(
        _$_QuestionsResponsesData instance) =>
    <String, dynamic>{
      'recordSecurityQuestionResponses': instance.responses,
    };

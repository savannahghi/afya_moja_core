// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SecurityQuestion _$$_SecurityQuestionFromJson(Map<String, dynamic> json) =>
    _$_SecurityQuestion(
      securityQuestionID: json['SecurityQuestionID'] as String?,
      questionStem: json['QuestionStem'] as String?,
      description: json['Description'] as String?,
      responseType: $enumDecodeNullable(
              _$SecurityQuestionResponseTypeEnumMap, json['ResponseType']) ??
          SecurityQuestionResponseType.UNKNOWN,
      active: json['Active'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SecurityQuestionToJson(_$_SecurityQuestion instance) =>
    <String, dynamic>{
      'SecurityQuestionID': instance.securityQuestionID,
      'QuestionStem': instance.questionStem,
      'Description': instance.description,
      'ResponseType':
          _$SecurityQuestionResponseTypeEnumMap[instance.responseType],
      'Active': instance.active,
    };

const _$SecurityQuestionResponseTypeEnumMap = {
  SecurityQuestionResponseType.NUMBER: 'NUMBER',
  SecurityQuestionResponseType.TEXT: 'TEXT',
  SecurityQuestionResponseType.DATE: 'DATE',
  SecurityQuestionResponseType.UNKNOWN: 'UNKNOWN',
};

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'security_question_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SecurityQuestionResponse _$$_SecurityQuestionResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SecurityQuestionResponse(
      userID: json['userID'] as String?,
      securityQuestionID: json['securityQuestionID'] as String?,
      response: json['response'] as String?,
    );

Map<String, dynamic> _$$_SecurityQuestionResponseToJson(
        _$_SecurityQuestionResponse instance) =>
    <String, dynamic>{
      'userID': instance.userID,
      'securityQuestionID': instance.securityQuestionID,
      'response': instance.response,
    };

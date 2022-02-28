// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_security_question_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VerifySecurityQuestionData _$$_VerifySecurityQuestionDataFromJson(
        Map<String, dynamic> json) =>
    _$_VerifySecurityQuestionData(
      questionID: json['questionID'] as String?,
      flavour: json['flavour'] as String?,
      response: json['response'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$$_VerifySecurityQuestionDataToJson(
        _$_VerifySecurityQuestionData instance) =>
    <String, dynamic>{
      'questionID': instance.questionID,
      'flavour': instance.flavour,
      'response': instance.response,
      'phoneNumber': instance.phoneNumber,
    };

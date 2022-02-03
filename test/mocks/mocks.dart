import 'package:afya_moja_core/src/enums.dart';

Map<String, dynamic> mockSecurityQuestion = <String, dynamic>{
  'SecurityQuestionID': 'id',
  'QuestionStem': 'question_stem',
  'Description': 'description',
  'ResponseType': SecurityQuestionResponseType.UNKNOWN.name,
  'Active': true,
};

Map<String, dynamic> mockSecurityQuestionResponse = <String, dynamic>{
  'userID': 'user_id',
  'SecurityQuestionID': 'id',
  'response': 'response',
};

Map<String, dynamic> mockVerifySecurityQuestionData = <String, dynamic>{
  'questionID': 'id',
  'flavour': Flavour.consumer.name,
  'response': 'response',
  'phoneNumber': '+254700111222',
};

Map<String, dynamic> mockRecordSecurityQuestionResponse = <String, dynamic>{
  'SecurityQuestionID': 'id',
  'isCorrect': true,
};

Map<String, dynamic> mockRecordSecurityQuestionResponses = <String, dynamic>{
  'recordSecurityQuestionResponses': <dynamic>[
    mockRecordSecurityQuestionResponse
  ]
};

Map<String, dynamic> mockSecurityQuestionsData = <String, dynamic>{
  'getSecurityQuestions': securityQuestionsMock
};

Map<String, dynamic> mockRecordedSecurityQuestionsData = <String, dynamic>{
  'getUserRespondedSecurityQuestions': securityQuestionsMock
};

final List<dynamic> securityQuestionsMock = <dynamic>[mockSecurityQuestion];

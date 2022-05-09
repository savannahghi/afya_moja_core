import 'dart:convert';

import 'package:afya_moja_core/src/enums.dart';
import 'package:app_wrapper/app_wrapper.dart';
import 'package:flutter_graphql_client/graph_client.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:mockito/mockito.dart';

class MockDeviceCapabilities extends IDeviceCapabilities {}

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

Map<String, dynamic> mockFAQContent = <String, dynamic>{
  'ID': 'id',
  'Active': true,
  'Title': 'title',
  'Body': 'body',
  'Description': 'description',
  'Flavour': Flavour.consumer.name,
};

Map<String, dynamic> mockFAQContentResponse = <String, dynamic>{
  'getFAQContent': <dynamic>[mockFAQContent]
};

Map<String, dynamic> mockFAQContentState = <String, dynamic>{
  'profileFAQs': <dynamic>[],
  'errorFetchingFAQs': false,
  'timeoutFetchingFAQs': false
};

Map<String, dynamic> mockExtraData = <String, dynamic>{
  'bannedInCommunity': false,
};

Map<String, dynamic> mockMember = <String, dynamic>{
  'id': 'some-id',
  'userID': 'some-user-id',
  'role': 'some-role',
  'username': 'username',
  'userType': 'STAFF',
  'gender': 'MALE',
  'extraData': <String, dynamic>{
    'bannedInCommunity': false,
  }
};

Map<String, dynamic> mockGroupMember = <String, dynamic>{
  'user': mockMember,
  'isModerator': false,
  'userType': 'STAFF'
};

// ignore: subtype_of_sealed_class
class MockGraphQlClient extends Mock implements GraphQlClient {
  String setupUserAsExperimenterVariables =
      json.encode(<String, bool>{'participate': true});
  String removeUserAsExperimenterVariables =
      json.encode(<String, bool>{'participate': false});

  @override
  Future<http.Response> query(
    String queryString,
    Map<String, dynamic> variables, [
    ContentType contentType = ContentType.json,
  ]) {
    if (json.encode(variables) == setupUserAsExperimenterVariables) {
      return Future<http.Response>.value(
        http.Response(
          json.encode(<String, dynamic>{
            'data': <String, dynamic>{'setupAsExperimentParticipant': true}
          }),
          200,
        ),
      );
    }

    if (json.encode(variables) == removeUserAsExperimenterVariables) {
      return Future<http.Response>.value(
        http.Response(
          json.encode(<String, dynamic>{
            'data': <String, dynamic>{'setupAsExperimentParticipant': true}
          }),
          200,
        ),
      );
    }
    if (queryString.contains('setUserCommunicationsSettings')) {
      return Future<http.Response>.value(
        http.Response(
          json.encode(<String, dynamic>{
            'data': <String, dynamic>{
              'setUserCommunicationsSettings': <String, dynamic>{
                'allowWhatsApp': true,
                'allowPush': false,
                'allowEmail': true,
                'allowTextSMS': true
              }
            }
          }),
          201,
        ),
      );
    }

    if (queryString.contains('Trace')) {
      /// return fake data here
      return Future<http.Response>.value(
        http.Response(
          json.encode(
            <String, dynamic>{
              'data': <String, dynamic>{'logDebugInfo': true}
            },
          ),
          201,
        ),
      );
    }

    if (queryString.contains('upload')) {
      return Future<http.Response>.value(
        http.Response(
          json.encode(<String, dynamic>{
            'data': <String, dynamic>{
              'upload': <String, dynamic>{
                'id': 'uploadID',
              },
            }
          }),
          201,
        ),
      );
    }

    if (queryString.contains('UpdateUserProfile')) {
      return Future<http.Response>.value(
        http.Response(json.encode(<String, dynamic>{'error': 'error'}), 201),
      );
    }

    if (queryString.contains('FakeQuery')) {
      /// return fake data here
      return Future<http.Response>.value(
        http.Response(
          json.encode(
            <String, dynamic>{
              'errors': <Map<String, dynamic>>[
                <String, String>{'message': 'generic list error occurred'}
              ]
            },
          ),
          200,
        ),
      );
    }

    if (queryString.contains('TooQueryFake')) {
      /// return fake data here
      return Future<http.Response>.value(
        http.Response(
          json.encode(
            <String, dynamic>{'data': null},
          ),
          200,
        ),
      );
    }

    // ignore: null_argument_to_non_null_type
    return Future<http.Response>.value();
  }

  @override
  Map<String, dynamic> toMap(Response? response) {
    if (response == null) return <String, dynamic>{};
    final dynamic _res = json.decode(response.body);
    if (_res is List<dynamic>) return _res[0] as Map<String, dynamic>;
    return _res as Map<String, dynamic>;
  }
}

String fakeQuery = '''
  query FakeQuery() {
  fake() {
    id    
  }
}
''';

String fakeQueryTwo = '''
  query TooQueryFake() {
  fake() {
    id    
  }
}
''';

String updateUserProfile = r'''
mutation UpdateUserProfile($allowWhatsApp: Boolean, $allowTextSMS: Boolean, $allowPush: Boolean, $allowEmail: Boolean) {
  UpdateUserProfile(allowWhatsApp: $allowWhatsApp, allowTextSMS: $allowTextSMS, allowPush: $allowPush, allowEmail: $allowEmail){
    allowWhatsApp
    allowPush
    allowEmail
    allowTextSMS
  }
}
 ''';

String uploadMutationQuery = r'''
  mutation Upload($input: UploadInput!) {
  upload(input: $input) {
    id
    url
    size
    hash
    creation
    title
    contentType
    language
    base64data
  }
}
''';

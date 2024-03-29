import 'dart:convert';

import 'package:afya_moja_core/src/domain/core/entities/content/content.dart';
import 'package:afya_moja_core/src/enums.dart';
import 'package:app_wrapper/app_wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_graphql_client/graph_client.dart' as graph;
import 'package:flutter_local_notifications_platform_interface/flutter_local_notifications_platform_interface.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:mockito/mockito.dart';
import 'package:video_player/video_player.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

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

Map<String, dynamic> mockContentDetails = <String, dynamic>{
  'content': <String, dynamic>{
    'ID': 1,
    'title': 'Tips on how to keep yourself healthy',
    'date': '2021-08-23T06:42:05.085216Z',
    'intro': 'Keep yourself healthy',
    'authorName': 'Abiud Orina',
    'authorAvatar': 'https://i.postimg.cc/9XpbrC25/profile-image.png',
    'author': <String, dynamic>{'ID': 'some-id'},
    'itemType': 'ARTICLE',
    'timeEstimateSeconds': 180,
    'body':
        'The coronavirus pandemic has affected our lives, our economy, and nearly every corner of the globe. Almost 4 billion vaccine doses have been administered worldwide; 53 for every 100 people. But the worldwide numbers of infections continue to rise, driven by the Delta variant with highly vaccinated regions like Western Europe and the United States, where cases are relatively low but climbing fast. As cases continue to surge, you can take some steps to keep yourself and your family safe. Here are some tips from our trusted science team.',
    'heroImageRendition': <String, dynamic>{
      'url': 'https://i.postimg.cc/zvW46yxk/wellness.jpg',
    },
    'likeCount': 180,
    'bookmarkCount': 180,
    'viewCount': 180,
    'shareCount': 180,
    'hasSaved': false,
    'hasLiked': false,
    'documents': <dynamic>[],
    'isNew': true,
    'firstPublishedAt': '2021-08-23T06:42:05.085216Z',
    'meta': <String, dynamic>{
      'contentHTMLURL': 'https://mycarehub.co.ke/',
      'firstPublishedAt': '2021-08-23T06:42:05.085216Z',
    },
    'tagNames': <String>['Recommended', 'Health', 'Fitness'],
    'featuredMedia': <Map<String, dynamic>>[
      <String, dynamic>{
        'ID': 7,
        'url':
            'https://storage.googleapis.com/mycarehub-test/media/media/Background_Music_Soft_Piano_Music.aac',
        'title': 'Background',
        'type': 'audio',
        'width': 0,
        'duration': 6,
        'height': 0,
        'thumbnail': ''
      }
    ]
  },
  'showReactions': true,
  'contentDisplayedType': 'FEED'
};

final Map<String, dynamic> mockFeedContent = <String, dynamic>{
  'getContent': <String, dynamic>{
    'items': <dynamic>[mockContentDetails]
  },
};

final Map<String, dynamic> mockGalleryImage = <String, dynamic>{
  'id': 2,
  'image': <String, dynamic>{
    'title': 'mockImage',
    'meta': <String, String>{'imageDownloadUrl': 'testImage'}
  }
};

final List<Map<String, dynamic>> contentMock = <Map<String, dynamic>>[
  <String, dynamic>{
    'ID': 1,
    'title': 'Tips on how to keep yourself healthy',
    'date': '2021-08-23T06:42:05.085216Z',
    'intro': 'Keep yourself healthy',
    'authorName': 'Abiud Orina',
    'authorAvatar': 'https://i.postimg.cc/9XpbrC25/profile-image.png',
    'author': <String, dynamic>{'ID': 'some-id'},
    'itemType': 'ARTICLE',
    'timeEstimateSeconds': 180,
    'body':
        'The coronavirus pandemic has affected our lives, our economy, and nearly every corner of the globe. Almost 4 billion vaccine doses have been administered worldwide; 53 for every 100 people. But the worldwide numbers of infections continue to rise, driven by the Delta variant with highly vaccinated regions like Western Europe and the United States, where cases are relatively low but climbing fast. As cases continue to surge, you can take some steps to keep yourself and your family safe. Here are some tips from our trusted science team.',
    'heroImageRendition': <String, dynamic>{
      'url': 'https://i.postimg.cc/zvW46yxk/wellness.jpg',
    },
    'likeCount': 180,
    'bookmarkCount': 180,
    'viewCount': 180,
    'shareCount': 180,
    'hasSaved': false,
    'hasLiked': false,
    'documents': <dynamic>[],
    'isNew': true,
    'firstPublishedAt': '2021-08-23T06:42:05.085216Z',
    'meta': <String, dynamic>{
      'contentHTMLURL': 'https://mycarehub.co.ke/',
      'firstPublishedAt': '2021-08-23T06:42:05.085216Z',
    },
    'tagNames': <String>['Recommended', 'Health', 'Fitness'],
    'featuredMedia': <Map<String, dynamic>>[
      <String, dynamic>{
        'ID': 7,
        'url':
            'https://storage.googleapis.com/mycarehub-test/media/media/Background_Music_Soft_Piano_Music.aac',
        'title': 'Background',
        'type': 'audio',
        'width': 0,
        'duration': 6,
        'height': 0,
        'thumbnail': ''
      }
    ]
  },
  <String, dynamic>{
    'ID': 12,
    'title': 'Test article',
    'date': '2022-01-06',
    'intro': 'This is a test article',
    'authorName': 'John Ngugi',
    'tagNames': <String>['test'],
    'meta': <String, dynamic>{
      'contentType': 'content.ContentItem',
      'contentHTMLURL':
          'http://mycarehub-stage.savannahghi.org/health-education/test-article/',
      'slug': 'test-article',
      'showInMenus': false,
      'seoTitle': '',
      'searchDescription': '',
      'firstPublishedAt': '2022-01-06T09:18:42.024393+03:00',
      'locale': 'en'
    },
    'itemType': 'AUDIO_VIDEO',
    'timeEstimateSeconds': 6,
    'body': '<p data-block-key="9gd2w">Test article</p>',
    'heroImage': <String, dynamic>{'ID': 10, 'title': 'sunbeds3'},
    'heroImageRendition': <String, dynamic>{
      'url':
          'https://storage.googleapis.com/mycarehub-test/media/images/sunbeds3_VNXQPgI.2e16d0ba.fill-800x1200.jpegquality-60.jpg',
      'width': 800,
      'height': 1200,
      'alt': 'sunbeds3'
    },
    'likeCount': 6,
    'bookmarkCount': 2,
    'viewCount': 0,
    'shareCount': 1,
    'author': <String, dynamic>{'ID': 'cd92a709-c397-4b04-a963-709eb7e08486'},
    'categoryDetails': <Map<String, dynamic>>[
      <String, dynamic>{
        'ID': 6,
        'categoryName': 'recommended',
        'categoryIcon': ''
      }
    ],
    'featuredMedia': <Map<String, dynamic>>[
      <String, dynamic>{
        'ID': 2,
        'url':
            'https://storage.googleapis.com/mycarehub-test/media/media/Background_Music_Soft_Piano_Music_ppKS2s4.aac',
        'title': 'soft_piano_music',
        'type': 'audio',
        'duration': 141,
        'width': 0,
        'height': 0,
        'thumbnail': ''
      }
    ],
    'galleryImages': <Map<String, dynamic>>[
      <String, dynamic>{
        'ID': 1,
        'image': <String, dynamic>{
          'ID': 8,
          'title': 'Contrail',
          'meta': <String, dynamic>{
            'imageDownloadUrl':
                'https://storage.googleapis.com/mycarehub-test/media/original_images/jake-nackos-zAeD6Gug2PY-unsplash_IXYJr4K.jpg'
          }
        }
      },
      <String, dynamic>{
        'ID': 2,
        'image': <String, dynamic>{
          'ID': 7,
          'title': 'Plane_with_background',
          'meta': <String, dynamic>{
            'imageDownloadUrl':
                'https://storage.googleapis.com/mycarehub-test/media/original_images/vino-li-kpcJgsvpY3Q-unsplash_9w4CILs.jpg'
          }
        }
      },
      <String, dynamic>{
        'ID': 3,
        'image': <String, dynamic>{
          'ID': 9,
          'title': 'sunbeds3',
          'meta': <String, dynamic>{
            'imageDownloadUrl':
                'https://storage.googleapis.com/mycarehub-test/media/original_images/valentin-b-kremer-icXbm3QDw2w-unsplash_YNcTzbk.jpg'
          }
        }
      },
      <String, dynamic>{
        'ID': 4,
        'image': <String, dynamic>{
          'ID': 11,
          'title': 'syringe',
          'meta': <String, dynamic>{
            'imageDownloadUrl':
                'https://storage.googleapis.com/mycarehub-test/media/original_images/mika-baumeister-fPE_qTJu3Ws-unsplash_4NqBMVN.jpg'
          }
        }
      }
    ],
  },
];

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
class MockGraphQlClient extends Mock implements graph.GraphQlClient {
  String setupUserAsExperimenterVariables =
      json.encode(<String, bool>{'participate': true});
  String removeUserAsExperimenterVariables =
      json.encode(<String, bool>{'participate': false});

  @override
  Future<http.Response> query(
    String queryString,
    Map<String, dynamic> variables, [
    graph.ContentType contentType = graph.ContentType.json,
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
    final dynamic res = json.decode(response.body);
    if (res is List<dynamic>) return res[0] as Map<String, dynamic>;
    return res as Map<String, dynamic>;
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

// chewi mocks
class MockVideoPlayerController extends ValueNotifier<VideoPlayerValue>
    implements VideoPlayerController {
  MockVideoPlayerController()
      : super(VideoPlayerValue(duration: Duration.zero));

  @override
  Future<void> dispose() async {
    super.dispose();
  }

  @override
  int textureId = VideoPlayerController.kUninitializedTextureId;

  @override
  String get dataSource => '';

  @override
  Map<String, String> get httpHeaders => <String, String>{};

  @override
  DataSourceType get dataSourceType => DataSourceType.file;

  @override
  String get package => '';

  @override
  Future<Duration> get position async => value.position;

  @override
  Future<void> seekTo(Duration moment) async {}

  @override
  Future<void> setVolume(double volume) async {}

  @override
  Future<void> setPlaybackSpeed(double speed) async {}

  @override
  Future<void> initialize() async {}

  @override
  Future<void> pause() async {}

  @override
  Future<void> play() async {}

  @override
  Future<void> setLooping(bool looping) async {}

  @override
  VideoFormat? get formatHint => null;

  @override
  Future<ClosedCaptionFile> get closedCaptionFile => _loadClosedCaption();

  @override
  VideoPlayerOptions? get videoPlayerOptions => null;

  @override
  void setCaptionOffset(Duration offset) {}

  @override
  Future<void> setClosedCaptionFile(
    Future<ClosedCaptionFile>? closedCaptionFile,
  ) async {}
}

Future<ClosedCaptionFile> _loadClosedCaption() async =>
    _FakeClosedCaptionFile();

class _FakeClosedCaptionFile extends ClosedCaptionFile {
  @override
  List<Caption> get captions {
    return <Caption>[
      const Caption(
        text: 'one',
        number: 0,
        start: Duration(milliseconds: 100),
        end: Duration(milliseconds: 200),
      ),
      const Caption(
        text: 'two',
        number: 1,
        start: Duration(milliseconds: 300),
        end: Duration(milliseconds: 400),
      ),
    ];
  }
}

final Content mockContent = Content.fromJson(contentMock.first);
final Content mockVideoContent = Content.fromJson(videoContentMock.first);

final Map<String, dynamic> documentContentMock = <String, dynamic>{
  'ID': 16,
  'title': 'Test Document',
  'date': '2022-01-13',
  'intro': 'This is a test document',
  'authorName': 'Test',
  'tagNames': <String>['test'],
  'meta': <String, dynamic>{
    'contentType': 'content.ContentItem',
    'contentHTMLURL': 'http://test-document/',
    'slug': 'test-document',
    'showInMenus': false,
    'seoTitle': '',
    'searchDescription': '',
    'firstPublishedAt': '2022-01-13T11:36:56.749531+03:00',
    'locale': 'en'
  },
  'itemType': 'PDF_DOCUMENT',
  'timeEstimateSeconds': 10,
  'body': '''
<p data-block-key="sg8u8">Test document</p>''',
  'heroImage': <String, dynamic>{'ID': 14, 'title': 'document'},
  'heroImageRendition': <String, dynamic>{
    'url': 'https://test.jpg',
    'width': 720,
    'height': 1080,
    'alt': 'document'
  },
  'likeCount': 0,
  'bookmarkCount': 0,
  'viewCount': 0,
  'shareCount': 0,
  'author': <String, dynamic>{'ID': 'test-id-001'},
  'documents': <Map<String, dynamic>>[
    <String, dynamic>{
      'ID': 10001,
      'Document': <String, dynamic>{
        'ID': 10001,
        'title': 'myCareHub Requirements',
        'meta': <String, dynamic>{
          'documentDetailUrl':
              'http://www.africau.edu/images/default/sample.pdf',
          'documentDownloadUrl':
              'http://www.africau.edu/images/default/sample.pdf'
        }
      }
    }
  ],
  'categoryDetails': <Map<String, dynamic>>[
    <String, dynamic>{
      'ID': 6,
      'categoryName': 'recommended',
      'categoryIcon': 'https://test.png'
    }
  ],
};

final List<Map<String, dynamic>> videoContentMock = <Map<String, dynamic>>[
  <String, dynamic>{
    'ID': 1,
    'title': 'Tips on how to keep yourself healthy',
    'date': '2021-08-23T06:42:05.085216Z',
    'intro': 'Keep yourself healthy',
    'authorName': 'Abiud Orina',
    'authorAvatar': 'https://i.postimg.cc/9XpbrC25/profile-image.png',
    'author': <String, dynamic>{'ID': 'some-id'},
    'itemType': 'AUDIO_VIDEO',
    'timeEstimateSeconds': 180,
    'body':
        'The coronavirus pandemic has affected our lives, our economy, and nearly every corner of the globe. Almost 4 billion vaccine doses have been administered worldwide; 53 for every 100 people. But the worldwide numbers of infections continue to rise, driven by the Delta variant with highly vaccinated regions like Western Europe and the United States, where cases are relatively low but climbing fast. As cases continue to surge, you can take some steps to keep yourself and your family safe. Here are some tips from our trusted science team.',
    'heroImageRendition': <String, dynamic>{
      'url': 'https://i.postimg.cc/zvW46yxk/wellness.jpg',
    },
    'likeCount': 180,
    'bookmarkCount': 180,
    'viewCount': 180,
    'shareCount': 180,
    'hasSaved': false,
    'hasLiked': false,
    'documents': <dynamic>[],
    'isNew': true,
    'featuredMedia': <dynamic>[
      <String, dynamic>{
        'ID': 1,
        'url':
            'https://storage.googleapis.com/mycarehub-test/media/media/production_ID_4473012.mp4',
        'title': 'Awesome diet video',
        'type': 'video',
        'duration': 165,
        'width': 100,
        'height': 0,
        'thumbnail':
            'https://storage.googleapis.com/mycarehub-test/media/media_thumbnails/vitalii-pavlyshynets-kcRFW-Hje8Y-unsplash_1.jpg',
      }
    ],
    'firstPublishedAt': '2021-08-23T06:42:05.085216Z',
    'meta': <String, dynamic>{
      'contentHTMLURL': 'https://mycarehub.co.ke/',
      'firstPublishedAt': '2021-08-23T06:42:05.085216Z',
    },
    'tagNames': <String>['Recommended', 'Health', 'Fitness'],
  },
];

class MockFlutterLocalNotificationsPlugin extends Mock
    with MockPlatformInterfaceMixin
    implements FlutterLocalNotificationsPlatform {
  @override
  Future<void> show(
    int id,
    String? title,
    String? body, {
    String? payload,
  }) async {}
}

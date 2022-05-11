// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faqs_content_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FAQsContentState _$$_FAQsContentStateFromJson(Map<String, dynamic> json) =>
    _$_FAQsContentState(
      profileFAQs: (json['profileFAQs'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Content.fromJson(e as Map<String, dynamic>))
          .toList(),
      errorFetchingFAQs: json['errorFetchingFAQs'] as bool?,
      timeoutFetchingFAQs: json['timeoutFetchingFAQs'] as bool?,
    );

Map<String, dynamic> _$$_FAQsContentStateToJson(_$_FAQsContentState instance) =>
    <String, dynamic>{
      'profileFAQs': instance.profileFAQs,
      'errorFetchingFAQs': instance.errorFetchingFAQs,
      'timeoutFetchingFAQs': instance.timeoutFetchingFAQs,
    };

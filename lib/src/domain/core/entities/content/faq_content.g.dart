// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FAQContent _$$_FAQContentFromJson(Map<String, dynamic> json) =>
    _$_FAQContent(
      feedContent: json['getFAQs'] == null
          ? null
          : FeedItems.fromJson(json['getFAQs'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FAQContentToJson(_$_FAQContent instance) =>
    <String, dynamic>{
      'getFAQs': instance.feedContent,
    };

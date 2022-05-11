// Package imports:
import 'package:afya_moja_core/src/domain/core/entities/content/feed_items.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'feed_content.freezed.dart';
part 'feed_content.g.dart';

@freezed
class FeedContent with _$FeedContent {
  factory FeedContent({
    @JsonKey(name: 'getContent') FeedItems? feedContent,
  }) = _FeedContent;

  factory FeedContent.fromJson(Map<String, dynamic> json) =>
      _$FeedContentFromJson(json);
}

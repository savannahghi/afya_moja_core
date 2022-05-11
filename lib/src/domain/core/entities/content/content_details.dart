// Package imports:
import 'package:afya_moja_core/src/domain/core/entities/content/content.dart';
import 'package:afya_moja_core/src/enums.dart';
import 'package:json_annotation/json_annotation.dart';


part 'content_details.g.dart';

@JsonSerializable()
class ContentDetails {
  final Content content;
  final bool showReactions;
  final ContentDisplayedType contentDisplayedType;

  ContentDetails({
    required this.content,
    this.showReactions = true,
    this.contentDisplayedType = ContentDisplayedType.UNKNOWN,
  });

  factory ContentDetails.fromJson(Map<String, dynamic> json) =>
      _$ContentDetailsFromJson(json);
}

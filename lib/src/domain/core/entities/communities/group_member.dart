import 'package:afya_moja_core/src/domain/core/entities/communities/member.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_member.freezed.dart';
part 'group_member.g.dart';

@freezed
class GroupMember with _$GroupMember {
  factory GroupMember({
    @JsonKey(name: 'user') Member? memberDetails,
    @JsonKey(name: 'isModerator') @Default(false) bool isModerator,
  }) = _GroupMember;

  factory GroupMember.fromJson(Map<String, dynamic> json) =>
      _$GroupMemberFromJson(json);
}

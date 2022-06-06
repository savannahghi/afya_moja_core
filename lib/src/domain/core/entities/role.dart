import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'role.freezed.dart';
part 'role.g.dart';

@freezed
class Role with _$Role {
  factory Role({
    @JsonKey(name: 'authorityRoleID') String? roleID,
    @JsonKey(name: 'name', fromJson: roleValueFromJson) RoleValue? name,
    @JsonKey(name: 'active') bool? active,
  }) = _Role;

  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}

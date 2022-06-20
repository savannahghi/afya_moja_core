// Package imports:
import 'package:afya_moja_core/afya_moja_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'extra_data.freezed.dart';
part 'extra_data.g.dart';

@freezed
class ExtraData with _$ExtraData {
  factory ExtraData({
    @JsonKey(name: 'banned') bool? isBanned,
    @JsonKey(name: 'userType') @Default(UserType.UNKNOWN) UserType? userType,
  }) = _ExtraData;

  factory ExtraData.fromJson(Map<String, dynamic> json) =>
      _$ExtraDataFromJson(json);

  factory ExtraData.initial() => ExtraData(
        isBanned: false,
        userType: UserType.UNKNOWN,
      );
}
